
resource "aws_s3_bucket" "static-content" {
  bucket = "${var.app_region}-${var.bucket-name}"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_object" "critical-image" {
  bucket = aws_s3_bucket.static-content.id
  key    = "landing-page.jpg"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.static-content.id
  versioning_configuration {
    status = "Enabled"
  }
}

