provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}

module "rds" {
  source             = "./modules/rds"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnets
}

module "iam" {
  source = "./modules/iam"
}

module "ecr" {
  source       = "./modules/ecr"
  project_name = var.project_name
}

module "ecs" {
  source               = "./modules/ecs"
  vpc_id               = module.vpc.vpc_id
  private_subnet_ids   = module.vpc.private_subnets
  ecs_exec_role_arn    = module.iam.ecs_exec_role_arn
  ecr_repo_url         = module.ecr.repo_url
  rds_endpoint         = module.rds.endpoint
  rds_password         = module.rds.password
  s3_bucket_name       = module.s3.bucket_name
  region               = var.aws_region
  project_name         = var.project_name
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnets
  ecs_target_group  = module.ecs.target_group_arn
  project_name      = var.project_name
}

output "alb_dns_name" {
  value = module.alb.dns_name
}
