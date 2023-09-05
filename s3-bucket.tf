resource "aws_s3_bucket" "example" {
  bucket = "guardduty-findings-bucket"
  acl    = "private"
}

resource "aws_kms_key" "example" {
  description             = "GuardDuty Findings KMS Key"
  deletion_window_in_days = 10
  is_enabled              = true
  policy = <<-POLICY
{
  "Version": "2012-10-17",
  "Id": "key-policy-1",
  "Statement": [
    {
      "Sid": "Enable IAM User Permissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::ACCOUNT_ID:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    },
    {
      "Sid": "Allow GuardDuty to use the key",
      "Effect": "Allow",
      "Principal": {
        "Service": "guardduty.amazonaws.com"
      },
      "Action": [
        "kms:Encrypt",
        "kms:GenerateDataKey*"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}
