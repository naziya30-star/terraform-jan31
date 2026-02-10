resource "aws_instance" "app" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
    count = var.create_ec2 ? 1 : 0
    }


variable "create_ec2" {
    type = bool
    default = true
}
