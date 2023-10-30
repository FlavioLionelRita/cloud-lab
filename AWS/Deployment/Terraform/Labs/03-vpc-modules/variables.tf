variable "environment" {
  type = string
}
variable "region" {
  type = string
  default = "eu-west-1"
}
variable "vpc_cidr_block" {
  type = string
  description = "value of the VPC CIDR block"
  default = "10.0.0.0/16"
}
variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
}
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
}
variable "azs" {
 type        = list(string)
 description = "Availability Zones"
}
# EC2
variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro" 
}
variable "ami" {
  description = "AMI for EC2 instances"
  type        = string
  default     = "ami-047bb4163c506cd98" 
}
variable "service_names" {
  description = "Name of the ECR repositories"
  type        = set(string)
}
variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default     = "Terraform"  
}