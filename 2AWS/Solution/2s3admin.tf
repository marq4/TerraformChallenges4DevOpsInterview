
resource "aws_iam_user" "s3-admin" {
  name = "s3-admin"
  tags = {
    Description = "Administrator over S3. "
  }
}


