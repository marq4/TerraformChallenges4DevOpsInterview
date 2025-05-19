
resource "aws_s3_bucket" "important-static-content" {
  bucket = "marq---------important-static-content-13861889004"
  tags = {
    Description = "Image for the landing page. "
  }

  # 7:
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_object" "important-image" {
  content = "important-image.jpg"
  key     = "important-image.jpg"
  bucket  = aws_s3_bucket.important-static-content.id

  # 7:
  lifecycle {
    prevent_destroy = true
  }
}

