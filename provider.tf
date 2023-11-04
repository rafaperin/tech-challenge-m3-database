provider "aws" {
  region     = "us-east-1"
  access_key = var.tf_var_aws_access_key_id
  secret_key = var.tf_var_aws_secret_acess_key
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "m3-db-security-group" {
  vpc_id      = "${data.aws_vpc.default.id}"
  name        = "m3-db-security-group"
  description = "Allow all inbound for Postgres"
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_db_instance" "m3-db" {
  identifier             = "m3-db"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "12"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.m3-db-security-group.id]
  username               = var.tf_var_db_username
  password               = var.tf_var_db_password
}