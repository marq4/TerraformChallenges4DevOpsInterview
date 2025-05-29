
resource "aws_s3_bucket" "remote-state" {
  bucket = var.bucket-name
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

