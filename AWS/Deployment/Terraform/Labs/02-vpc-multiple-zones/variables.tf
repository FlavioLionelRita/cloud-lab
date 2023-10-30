variable "region" {
  type = string
}
variable "vpc_cidr_block" {
  type = string
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