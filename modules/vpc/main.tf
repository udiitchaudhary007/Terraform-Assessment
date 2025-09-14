resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "frontend" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.frontend_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.name}-frontend"
  }
}

resource "aws_subnet" "backend" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.backend_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.name}-backend"
  }
}

resource "aws_subnet" "database" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.database_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.name}-database"
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "${var.name}-igw"
  }
}

resource "aws_route_table" "frontend" {
  vpc_id = aws_vpc.this.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
  tags = {
    Name = "${var.name}-frontend-rt"
  }
}

resource "aws_route_table_association" "frontend_assoc" {
  subnet_id      = aws_subnet.frontend.id
  route_table_id = aws_route_table.frontend.id
}

