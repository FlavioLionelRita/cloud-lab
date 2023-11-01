resource "aws_security_group" "ec2-sg" {
  name        = "ec2-sg"
  description = "Allow SSH and HTTP inbound traffic"
  vpc_id      = aws_vpc.vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "instance1" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type 
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  key_name               = "Terraform"
  user_data = <<-EOF
	      #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "Hello world from EC2 Instance 1 $(hostname -f)" > /var/www/html/index.html
		    EOF

  tags = {
    Name = "EC2 instance using Terraform" 
  }
}
resource "aws_instance" "instance2" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type 
  subnet_id              = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  key_name               = "Terraform"
  user_data = <<-EOF
	      #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "Hello world from EC2 Instance 2 $(hostname -f)" > /var/www/html/index.html
		    EOF

  tags = {
    Name = "EC2 instance using Terraform" 
  }
}

