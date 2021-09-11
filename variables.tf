variable "eckmstr_uri" {
  type = string
  description = "AWS Elastic master ip and port"
  default = "af99ef20df50c47dc810d53b702f703c-588151517.us-east-1.elb.amazonaws.com:9200"
}

variable "bucket_name" {
  type = string
  description = "s3 bucket name in AWS"
  default = "eck-bucket"
}

variable "base_path" {
  type = string
  description = "ECK snapshot Name"
  default = "eck-ss"
}
