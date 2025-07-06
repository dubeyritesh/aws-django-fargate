output "endpoint" {
  value = aws_db_instance.default.endpoint
}

output "username" {
  value = aws_db_instance.default.username
}

output "password" {
  value = aws_db_instance.default.password
}

output "db_name" {
  value = aws_db_instance.default.db_name
}
