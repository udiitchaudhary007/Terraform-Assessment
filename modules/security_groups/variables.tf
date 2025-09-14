variable "name" {
  description = "Name of the environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "allowed_ip" {
  description = "Allowed IP for frontend"
  type        = string
}

