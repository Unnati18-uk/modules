# Create S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Env = var.env

  }
}

# Upload Object to S3
resource "aws_s3_object" "data" {
  bucket = aws_s3_bucket.my_bucket.bucket
  source = var.file_path
  key    = var.key
  
  content_type = "text/plain"
  content_disposition = "inline"
}

# Public Access Block
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.my_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Enable Versioning
resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Bucket Policy for Public Read Access
resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.my_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicReadGetObject",
        Effect    = "Allow",
        Principal = "*",
        Action    = [
          "s3:GetObject"
        ],
        Resource  = [
          "${aws_s3_bucket.my_bucket.arn}/*"
        ]
      }
    ]
  })
}


