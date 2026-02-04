terraform {
  backend "s3" {
    bucket = "dfgbnyhtgfvbghy"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
