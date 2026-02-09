variable "allocated_storage" {
  type    = number
  default = 10
}

variable "db_identifier" {
  type    = string
  default = "book-rds"
}

variable "db_name" {
  type    = string
  default = "mydb"
}

variable "db_engine" {
  type    = string
  default = "mysql"
}

variable "db_engine_version" {
  type    = string
  default = "8.0"
}

variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_parameter_group" {
  type    = string
  default = "default.mysql8.0"
}

variable "backup_retention_period" {
  type    = number
  default = 7
}

variable "backup_window" {
  type    = string
  default = "02:00-03:00"
}

variable "maintenance_window" {
  type    = string
  default = "sun:04:00-sun:05:00"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "subnet_2_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "availability_zone_1" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zone_2" {
  type    = string
  default = "us-east-1b"
}

variable "db_subnet_group_name" {
  type    = string
  default = "mycutsubnett"
}
