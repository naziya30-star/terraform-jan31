# -------------------------
# VPC
# -------------------------
resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev-vpc"
  }
}

# -------------------------
# Subnets
# -------------------------
resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "subnet-2"
  }
}

# -------------------------
# DB Subnet Group
# -------------------------
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]

  tags = {
    Name = "db-subnet-group"
  }
}

# -------------------------
# RDS Instance (Free Tier)
# -------------------------
resource "aws_db_instance" "mysql_rds" {
  identifier                  = "book-rds"
  allocated_storage           = 20
  db_name                     = "mydb"
  engine                      = "mysql"
  engine_version              = "8.0"
  instance_class              = "db.t3.micro"
  username                    = "admin"
  manage_master_user_password = true

  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  parameter_group_name = "default.mysql8.0"

  # Free Tier limitations
  backup_retention_period = 0
  skip_final_snapshot     = true
  deletion_protection     = false

  tags = {
    Name = "book-rds"
  }
}
