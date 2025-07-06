variable "vpc_id" {
  type = string
}
variable "public_subnet_ids" {
  type = list(string)
}
variable "ecs_target_group" {
  type = string
}
variable "project_name" {
  type = string
}
