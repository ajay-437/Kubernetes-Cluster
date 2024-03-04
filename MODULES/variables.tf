variable "aws_region" {
  description = "AWS region where the EC2 instance will be launched"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
}
variable "name_tag" {
   type        = string
   description = "Name of EC2 instance"
  
}
variable "avl_zone" {
   type        = string
   description = "zone"
  
}
variable "key_name" {
   type        = string
   description = "ssh key"
  
}
variable "cidr" {
  description = "(Optional) The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length` & `ipv4_ipam_pool_id`"
  type        = string
 
}

variable "cidr_block" {
   type        = string
   description = "IPv4 CIDR block for public subnet"
  
}
