output "frontend_instance_id" {
  value = aws_instance.frontend.id
}

output "backend_instance_id" {
  value = aws_instance.backend.id
}

