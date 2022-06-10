
/* Role Creation */
resource "aws_iam_role" "Role" {
  name = var.role_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })
}

/* Policy Attachment to Lambda Role*/
resource "aws_iam_role_policy_attachment" "lambda-role-policy-attach" {
  count      = length(var.managed_policies)
  policy_arn = element(var.managed_policies, count.index)
  role       = aws_iam_role.Role.name
}


/* Restrict Region */
resource "aws_iam_policy" "custom_policy" {
  name        = "custom_policy"
  path        = "/"
  description = "My custom policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "ec2:*",
            "Effect": "Allow",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "${var.allowed_region}"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "${var.allowed_region}"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "${var.allowed_region}"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "${var.allowed_region}"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "ap-south-1"
                }
            }
        }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "Custom_Policy" {
  depends_on = [aws_iam_policy.custom_policy]
  policy_arn = aws_iam_policy.custom_policy.arn
  role       = aws_iam_role.Role.name
}