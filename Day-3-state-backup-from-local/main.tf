resource "aws_instance" "name" {
    ami = "ami-0532be01f26a3de55"
    instance_type = "t3.small"
    tags = {
        Name = "Nishu"
    }

  }
  resource "aws_s3_bucket" "Naaz" {
    bucket = "dfgbnyhtgfvbghy"
    
  }
  resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.Naaz.id
  versioning_configuration {
    status = "Enabled"
  }
}