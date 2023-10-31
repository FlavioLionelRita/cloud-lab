module "vpc" {
  source                = "terraform-aws-modules/vpc/aws"
  name                  = "terraform-vpc"
  cidr                  = var.vpc_cidr_block
  azs                   = var.azs
  public_subnets        = var.public_subnet_cidrs
  private_subnets       = var.private_subnet_cidrs
  enable_vpn_gateway    = true
  enable_dns_hostnames  = true
  enable_dns_support    = true
  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}