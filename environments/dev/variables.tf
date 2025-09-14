variable "aws_region" {
  default = "us-east-1"
}

variable "aws_az" {
  default = "us-east-1a"
}

variable "allowed_ip" {
  description = "Allowed IP to access frontend"
  type        = string
}

