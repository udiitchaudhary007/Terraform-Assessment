provider "aws" {
  region = var.aws_region
}
module "compute" {
  source             = "../../modules/compute"
  name               = "dev"
  ami_id             = "ami-0c94855ba95c71c99" # Example Ubuntu AMI
  instance_type      = "t3.micro"
  frontend_subnet_id = module.vpc.frontend_subnet_id
  backend_subnet_id  = module.vpc.backend_subnet_id
  frontend_sg_id     = module.security_groups.frontend_sg_id
  backend_sg_id      = module.security_groups.backend_sg_id
}

module "database" {
  source             = "../../modules/database"
  name               = "dev"
  db_name            = "appdb"
  db_username        = "admin"
  db_password        = "Password123!"  # Ideally use secrets or SSM Parameter Store
  database_subnet_ids = [module.vpc.database_subnet_id]
  db_sg_id           = module.security_groups.database_sg_id
}

