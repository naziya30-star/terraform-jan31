resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.availability_zone_1
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.availability_zone_2
}

resource "aws_db_subnet_group" "this" {
  name       = var.db_subnet_group_name
  subnet_ids = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "this" {
  allocated_storage             = var.allocated_storage
  identifier                    = var.db_identifier
  db_name                       = var.db_name
  engine                        = var.db_engine
  engine_version                = var.db_engine_version
  instance_class                = var.db_instance_class
  username                      = var.db_username
  manage_master_user_password   = true

  db_subnet_group_name           = aws_db_subnet_group.this.name
  parameter_group_name           = var.db_parameter_group
  backup_retention_period        = var.backup_retention_period
  backup_window                  = var.backup_window
  maintenance_window             = var.maintenance_window

  deletion_protection = true
  skip_final_snapshot = true
}
