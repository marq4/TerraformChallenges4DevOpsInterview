
resource "aws_iam_group_membership" "s3-admins-team" {
  name  = "s3-admins-team"
  group = aws_iam_group.s3-admins.name
  users = [aws_iam_user.s3-admin.name]
}

