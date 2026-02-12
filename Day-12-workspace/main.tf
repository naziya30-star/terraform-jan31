provider "aws" {
  
}
resource "aws_instance" "name" { 
    instance_type = "t3.small"
     ami = "ami-0c1fe732b5494dc14"

     tags = {
       Name = "dev"
     }  
}