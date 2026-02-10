resource "aws_instance" "name" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
    tags = {
      name = "dev"
    }
  
}
resource "aws_s3_bucket" "name" {
  bucket = "naaz-s3-buckett"
}
resource "aws_s3_bucket_versioning" "versioning_exapmle" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status = "Enabled"
  }
}