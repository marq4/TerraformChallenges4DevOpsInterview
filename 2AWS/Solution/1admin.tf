
resource "aws_iam_user" "marq0" {
  name = "marq0"
  tags = {
    Description = "Technical User for Terraform-AWS 4 DevOps interview. "
  }
}

resource "aws_iam_policy" "admin" {
  name   = "Admin"
  policy = file("admin.json")
}

resource "aws_iam_user_policy_attachment" "marq0-admin-access" {
  user       = aws_iam_user.marq0.name
  policy_arn = aws_iam_policy.admin.arn
}

