
glue_bucket_name            = "p4-dev-drive"
function_name               = "p4-dev-trigger"
lambda_execution_role_name  = "p4-dev-trigger"
glue_role_name              = "p4-dev-glue"
glue_s3_role_name           = "p4-dev-glue-s3"
glue_job1_name              = "p4_dev_control_job"
glue_job2_name              = "p4_dev_transform_job"
glue_job3_name              = "p4_dev_load_job"
lambda_managed_policies     = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
                                "arn:aws:iam::aws:policy/CloudWatchFullAccess",
                                "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
                                "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess",
                                "arn:aws:iam::aws:policy/AWSLambda_FullAccess",
                                "arn:aws:iam::aws:policy/service-role/AmazonS3ObjectLambdaExecutionRolePolicy",
                                "arn:aws:iam::aws:policy/AmazonS3OutpostsReadOnlyAccess",]

glue_managed_policies       = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
                                "arn:aws:iam::aws:policy/CloudWatchFullAccess",
                                "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
                                "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
                                "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",]
glue_s3_managed_policies    = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
                                "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
                                "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
                                "arn:aws:iam::aws:policy/CloudWatchEventsFullAccess",
                                "arn:aws:iam::aws:policy/AWSLambda_FullAccess",]