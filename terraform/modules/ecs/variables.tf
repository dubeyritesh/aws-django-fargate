variable "project_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "ecs_exec_role_arn" {
  type = string
}

variable "ecr_repo_url" {
  type = string
}

variable "rds_endpoint" {
  type = string
}

variable "rds_password" {
  type = string
}

variable "s3_bucket_name" {
  type = string
}

variable "region" {
  type = string
}
