module "RDS" {
    source = "../Day-9-cust-RDS-module"
    allocated_storage          = 10
db_identifier              = "book-rds"
db_name                    = "mydb"
db_engine                  = "mysql"
db_engine_version          = "8.0"
db_instance_class          = "db.t4g.micro"
db_username                = "admin"
db_parameter_group         = "default.mysql8.0"
backup_retention_period    = 7
backup_window              = "02:00-03:00"
maintenance_window         = "sun:04:00-sun:05:00"

vpc_cidr                   = "10.0.0.0/16"
subnet_1_cidr              = "10.0.0.0/24"
subnet_2_cidr              = "10.0.1.0/24"
availability_zone_1        = "us-east-1a"
availability_zone_2        = "us-east-1b"
db_subnet_group_name       = "mycutsubnett"

  
}