output "cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "service_name" {
  value = aws_ecs_service.django.name
}

output "target_group_arn" {
  value = aws_lb_target_group.ecs_tg.arn
}
