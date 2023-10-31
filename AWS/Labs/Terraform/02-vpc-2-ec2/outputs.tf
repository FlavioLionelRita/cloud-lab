output "instance1-ip" {
  value = aws_instance.instance1.public_ip
}
output "instance2-ip" {
  value = aws_instance.instance2.public_ip
}