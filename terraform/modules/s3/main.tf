resource "aws_s3_bucket" "static" {
  bucket = "${var.project_name}-static-assets"
  force_destroy = true
}

output "bucket_name" {
  value = aws_s3_bucket.static.bucket
}
