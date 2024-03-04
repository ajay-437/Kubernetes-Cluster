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

variable "cidr" {
  description = "(Optional) The IPv4 CIDR block for the VPC."
  type        = string
}

variable "cidr_block" {
  type        = string
  description = "IPv4 CIDR block for public subnet"
}

variable "avl_zone" {
  type        = string
  description = "Zone"
}
variable "cidr_block2" {
    default = "10.10.2.0/24"
  
}
variable "key_name" {
   type        = string
   description = "ssh key"
  
}
variable "avl_zone2" {
  default = "ca-central-1b"
  description = "Zone"
}
