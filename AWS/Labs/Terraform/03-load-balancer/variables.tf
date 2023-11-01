variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}
variable "public_subnet_1_cidr_block" {
  type = string
  default = "10.0.2.0/24"
}
variable "public_subnet_2_cidr_block" {
  type = string
  default = "10.0.4.0/24"
}
variable "public_subnet_zone_1" {
  type = string
  default = "eu-west-1a"
}
variable "public_subnet_zone_2" {
  type = string
  default = "eu-west-1b"
}
variable "ec2_instance_type" {
  type = string
  default = "t2.micro"  
}
variable "ec2_ami" {
  type = string
  default = "ami-047bb4163c506cd98"  
}