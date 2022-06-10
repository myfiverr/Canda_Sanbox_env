

variable "function_name" {
  default = "p4-lambda-poc-latest-test"
}
variable "lambda_execution_role_name" {
  default = "p4-lambda-poc-test"
}
variable "glue_role_name" {
  default = "p4-glue-poc-test"
}
variable "glue_s3_role_name" {
  default = "p4-glue-s3-poc-test"
}

variable "glue_job1_name" {
  default = "_job1"
}

variable "glue_job2_name" {
  default = "_job2"
}

variable "glue_job3_name" {
  default = "_job3"
}

variable "lambda_managed_policies" {
  default = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/CloudWatchFullAccess",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess",
    "arn:aws:iam::aws:policy/AWSLambda_FullAccess",
    "arn:aws:iam::aws:policy/service-role/AmazonS3ObjectLambdaExecutionRolePolicy",
    "arn:aws:iam::aws:policy/AmazonS3OutpostsReadOnlyAccess",
  ]
}

variable "glue_managed_policies" {
  default = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/CloudWatchFullAccess",
    "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
    "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
    "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
  ]
}

variable "glue_s3_managed_policies" {
  default = ["arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
    "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
    "arn:aws:iam::aws:policy/CloudWatchEventsFullAccess",
    "arn:aws:iam::aws:policy/AWSLambda_FullAccess",
  ]
}


    
    