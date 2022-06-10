
region                      = "us-east-1"
allowed_region              = "us-east-1"
role_name                   = "p4-dev-trigger"
managed_policies            = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
                                "arn:aws:iam::aws:policy/CloudWatchFullAccess",
                                "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
                                "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess",
                                "arn:aws:iam::aws:policy/AWSLambda_FullAccess",
                                "arn:aws:iam::aws:policy/service-role/AmazonS3ObjectLambdaExecutionRolePolicy",
                                "arn:aws:iam::aws:policy/AmazonS3OutpostsReadOnlyAccess",]
