variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr_block" {
  type = string
  default = "10.0.2.0/24"
}
variable "public_subnet_zone" {
  type = string
  default = "eu-west-1a"
}
variable "ec2_instance_type" {
  type = string
  default = "t2.micro"  
}
variable "ec2_ami" {
  type = string
  default = "ami-047bb4163c506cd98"  
}