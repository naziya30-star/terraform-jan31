resource "aws_instance" "name" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
    for_each = toset(var.env) # toset not follows any order like list(index)
    tags = {
      Name = each.value
    }
}

variable "env" {
    type = list(string)
    default = [ "dev","test","prod" ]
}
