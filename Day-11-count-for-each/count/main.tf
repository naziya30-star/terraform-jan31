resource "aws_instance" "name" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
    count = length(var.env)
    tags = {
      Name = var.env[count.index]
    }
}

variable "env" {
    type = list(string)
    default = [ "dev","test","prod" ]
}
