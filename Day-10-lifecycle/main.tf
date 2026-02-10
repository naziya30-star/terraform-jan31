resource "aws_instance" "name" {
    ami = "ami-0c1fe732b5494dc14mkdi"
    instance_type = "t3.micro"
  tags = {
    Name = "dev"
  }
  #lifecycle 
   # prevent_destroy = true
#}
  lifecycle {
    create_before_destroy = true
  }
}