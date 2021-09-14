variable "eckmstr_uri" {
  type = string
  description = "AWS Elastic master ip and port"
  }

variable "bucket_name" {
  type = string
  description = "s3 bucket name in AWS"
  }

variable "base_path" {
  type = string
  description = "ECK snapshot Name"
  }
