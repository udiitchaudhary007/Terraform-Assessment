resource "aws_db_instance" "app_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  subnet_group_name    = aws_db_subnet_group.db_subnet.name
  vpc_security_group_ids = [var.db_sg_id]
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "${var.name}-db-subnet-group"
  subnet_ids = var.database_subnet_ids
  tags = {
    Name = "${var.name}-db-subnet-group"
  }
}

