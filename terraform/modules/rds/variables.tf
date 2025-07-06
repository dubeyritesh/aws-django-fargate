variable "vpc_id" {
  description = "VPC to launch RDS in"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnets for RDS DB subnet group"
  type        = list(string)
}
