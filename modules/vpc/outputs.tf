output "vpc_id" {
  value = aws_vpc.this.id
}

output "frontend_subnet_id" {
  value = aws_subnet.frontend.id
}

output "backend_subnet_id" {
  value = aws_subnet.backend.id
}

output "database_subnet_id" {
  value = aws_subnet.database.id
}

