output "alb_dns_name" {
  value = module.alb.dns_name
}
output "s3_bucket" {
  value = module.s3.bucket_name
}
output "rds_endpoint" {
  value = module.rds.endpoint
}
output "ecr_repo_url" {
  value = module.ecr.repo_url
}
