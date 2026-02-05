terraform {
  backend "s3" {
    bucket = "dfgbnyhtgfvbghy"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # use_lockfile = true  # Enables S3 native locking
     dynamodb_table = "my-terraform-locks"  # This line is no longer needed/deprecated 
     
  }
} 
  