terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.56.0"
    }
  }
}

provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform"
}