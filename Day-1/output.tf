output "public_ip" {
    value = aws_instance.name.public_ip
  
}
output "privateIP" {
  value = aws_instance.name.private_ip
}