output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.My-EC2.public_ip
}
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.pb-subnet.id
}

output "my_security_group_id" {
  description = "ID of the public subnet"
  value = aws_security_group.aws-sg.id
}

output "my_route_table_id" {
  description = "ID of the public subnet"
  value = aws_route_table.pb-route-table.id
}
