resource "aws_lb" "example" {
  name               = "example-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-sg.id]
  subnets            = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
}
resource "aws_security_group" "lb-sg" {
  name      = "example-lb"
  vpc_id    = aws_vpc.vpc.id  
  ingress {
    from_port	  = 80
	  to_port		  = 80
	  protocol	  = "tcp"
	  cidr_blocks	= ["0.0.0.0/0"]
  }
  egress {
    from_port	  = 0
	  to_port		  = 0
	  protocol	  = "-1"
	  cidr_blocks	= ["0.0.0.0/0"]
  }
}
resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.example.arn
  port              = 80
  protocol          = "HTTP"
    default_action {
        target_group_arn = aws_lb_target_group.example.arn
        type             = "forward"
    }
}
resource "aws_lb_target_group" "example" {
  name     = "example-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
}
resource "aws_lb_target_group_attachment" "instance1" {
  target_group_arn = aws_lb_target_group.example.arn
  target_id        = aws_instance.instance1.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "instance2" {
  target_group_arn = aws_lb_target_group.example.arn
  target_id        = aws_instance.instance2.id
  port             = 80
}