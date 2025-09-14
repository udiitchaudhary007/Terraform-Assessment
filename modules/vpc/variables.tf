variable "name" {
  description = "Name of the environment"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "frontend_cidr" {
  description = "Frontend subnet CIDR"
  type        = string
}

variable "backend_cidr" {
  description = "Backend subnet CIDR"
  type        = string
}

variable "database_cidr" {
  description = "Database subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
}

