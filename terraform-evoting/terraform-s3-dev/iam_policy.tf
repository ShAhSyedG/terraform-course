data "aws_iam_policy_document" "s3_bucket_policy_dev" {
  statement {
    actions   = ["s3:PutBucketPolicy"]
    resources = ["arn:aws:s3:::dev-elections-frontend"]  
  }
}

resource "aws_iam_policy" "s3_bucket_policy_dev" {
  name        = "s3-bucket-policy-dev"
  description = "Allows putting bucket policies on dev-elections-frontend"
  policy      = data.aws_iam_policy_document.s3_bucket_policy_dev.json
}

resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment_dev" {
  name       = "s3-bucket-policy-attachment-dev"
  users      = ["Terraform_Elections_User"]  
  policy_arn = aws_iam_policy.s3_bucket_policy_dev.arn
}

data "aws_iam_policy_document" "s3_bucket_policy_dev1" {
  statement {
    actions   = ["s3:PutBucketPolicy"]
    resources = ["arn:aws:s3:::dev-elections-frontend-1"] 
  }
}

resource "aws_iam_policy" "s3_bucket_policy_dev1" {
  name        = "s3-bucket-policy-dev1"
  description = "Allows putting bucket policies on dev-elections-frontend-1"
  policy      = data.aws_iam_policy_document.s3_bucket_policy_dev1.json
}

resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment_dev1" {
  name       = "s3-bucket-policy-attachment-dev1"
  users      = ["Terraform_Elections_User"] 
  policy_arn = aws_iam_policy.s3_bucket_policy_dev1.arn
}

data "aws_iam_policy_document" "s3_bucket_policy_dev2" {
  statement {
    actions   = ["s3:PutBucketPolicy"]
    resources = ["arn:aws:s3:::dev-elections-frontend-2"]  
  }
}

resource "aws_iam_policy" "s3_bucket_policy_dev2" {
  name        = "s3-bucket-policy-dev2"
  description = "Allows putting bucket policies on dev-elections-frontend-2"
  policy      = data.aws_iam_policy_document.s3_bucket_policy_dev2.json
}

resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment_dev2" {
  name       = "s3-bucket-policy-attachment-dev2"
  users      = ["Terraform_Elections_User"]  
  policy_arn = aws_iam_policy.s3_bucket_policy_dev2.arn
}

data "aws_iam_policy_document" "s3_bucket_policy_dev3" {
  statement {
    actions   = ["s3:PutBucketPolicy"]
    resources = ["arn:aws:s3:::dev-elections-frontend-3"]
  }
}

resource "aws_iam_policy" "s3_bucket_policy_dev3" {
  name        = "s3-bucket-policy-dev3"
  description = "Allows putting bucket policies on dev-elections-frontend-3"
  policy      = data.aws_iam_policy_document.s3_bucket_policy_dev3.json
}

resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment_dev3" {
  name       = "s3-bucket-policy-attachment-dev3"
  users      = ["Terraform_Elections_User"] 
  policy_arn = aws_iam_policy.s3_bucket_policy_dev3.arn
}