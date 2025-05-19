
resource "aws_iam_policy" "s3-all-access-policy-marq_15546807" {
  name   = "s3-all-access-policy-marq_15546807"
  policy = file("s3AllAccess.json")
}

resource "aws_iam_group_policy_attachment" "s3-admins-access" {
  group      = aws_iam_group.s3-admins.name
  policy_arn = aws_iam_policy.s3-all-access-policy-marq_15546807.arn
}

