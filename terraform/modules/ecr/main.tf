resource "aws_ecr_repository" "this" {
  name                 = "${var.project_name}"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  lifecycle {
    prevent_destroy = false
  }
}
