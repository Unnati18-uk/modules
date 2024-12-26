
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "object_url" {
  value = "https://${aws_s3_bucket.my_bucket.bucket}.s3.${var.region}.amazonaws.com/${aws_s3_object.data.key}"
}