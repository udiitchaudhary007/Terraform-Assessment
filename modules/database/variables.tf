variable "name" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {
  sensitive = true
}
variable "database_subnet_ids" {
  type = list(string)
}
variable "db_sg_id" {}

