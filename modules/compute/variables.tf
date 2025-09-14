variable "name" {}
variable "ami_id" {}
variable "instance_type" {
  default = "t3.micro"
}
variable "frontend_subnet_id" {}
variable "backend_subnet_id" {}
variable "frontend_sg_id" {}
variable "backend_sg_id" {}

