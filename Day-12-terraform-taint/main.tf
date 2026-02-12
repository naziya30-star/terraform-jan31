provider "aws" {
  
}
resource "aws_instance" "server" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.small"
  tags = {
    Name = "Naaz"
}
}