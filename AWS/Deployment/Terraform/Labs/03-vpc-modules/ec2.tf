module "instance-sg" {
  source              = "terraform-aws-modules/security-group/aws"
  name                = "https rule"
  description         = "Security group for http and ssh"
  vpc_id              = module.vpc.vpc_id
  ingress_with_cidr_blocks = [
    {
      rule        = "http-80-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      rule        = "ssh-tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}

resource "aws_instance" "example" {
  for_each = var.service_names
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.instance-sg.security_group_id]
  key_name               = var.key_name
  associate_public_ip_address = true
  user_data = <<-EOF
	      #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "Hello world from EC2 $(hostname -f)" > /var/www/html/index.html
		    EOF
  tags = {
    Name     = "EC2-${each.key}"
    Environment = var.environment
  }
}
resource "aws_cloudwatch_log_group" "ec2_log_group" {
  for_each = var.service_names
  tags = {
    Environment = var.environment
    Service     = each.key
  }
  lifecycle {
    create_before_destroy = true
  }
}