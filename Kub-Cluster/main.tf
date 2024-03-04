module "KUB-EC2" {
  source = "../MODULES/"

  aws_region        = var.aws_region
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  name_tag          = var.name_tag
  cidr              = var.cidr
  cidr_block        = var.cidr_block
  avl_zone          = var.avl_zone
  key_name          = var.key_name
}

output "my_KUB_ec2_public_ip" {
  value = module.KUB-EC2.public_ip
}

output "my_KUB_vpc_id" {
  value = module.KUB-EC2.vpc_id
}

output "my_KUB_public_subnet_id" {
  value = module.KUB-EC2.public_subnet_id
}
output "my_KUB_security_group_id" {
  value = module.KUB-EC2.my_security_group_id
}
resource "aws_subnet" "sg_subnet-2" {
  vpc_id     = module.KUB-EC2.vpc_id 
  cidr_block = var.cidr_block2
  availability_zone = var.avl_zone2
  map_public_ip_on_launch = "true"

  tags = {
    Name = "sg_subnet-2"
  }
}
resource "aws_route_table_association" "pb-subnet-route-table-association-2" {
    subnet_id = aws_subnet.sg_subnet-2.id
    route_table_id = module.KUB-EC2.my_route_table_id
  
}
module "sgs" {
  source = "../K8S/sg_eks"
  vpc_id = module.KUB-EC2.vpc_id 
  
}
module "eks"{
source = "../K8S"
sg_ids = module.sgs.my_security_group_id
vpc_id = module.KUB-EC2.vpc_id
#subnet_id = module.KUB-EC2.public_subnet_id
subnet_ids = [module.KUB-EC2.public_subnet_id,aws_subnet.sg_subnet-2.id]
}
