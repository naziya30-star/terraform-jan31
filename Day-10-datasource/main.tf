data "aws_subnet" "name" {
filter {
  name = "tag:Name"
  values = ["test"]
}
}
resource "aws_instance" "name" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
   subnet_id = data.aws_subnet.name.id
}

