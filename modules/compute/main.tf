resource "aws_instance" "frontend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.frontend_subnet_id
  security_groups = [var.frontend_sg_id]

  tags = {
    Name = "${var.name}-frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.backend_subnet_id
  security_groups = [var.backend_sg_id]

  tags = {
    Name = "${var.name}-backend"
  }
}

