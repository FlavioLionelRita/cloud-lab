output "instance_private_ip" {
  value = { for service, i in aws_instance.example : service => i.private_ip }
}
output "instance_public_ip" {
  value = { for service, i in aws_instance.example : service => i.public_ip }
}