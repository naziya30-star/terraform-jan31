resource "aws_instance" "name" { 
    instance_type = "t3.small"
     ami = "ami-0c1fe732b5494dc14"
     user_data = file("test.sh")  # calling test.sh from current directory by using file fucntion 
     tags = {
       Name = "dev"
     }  
}