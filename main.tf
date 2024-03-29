
terraform {
  required_providers {
    restapi = {
      source = "KirillMeleshko/restapi"
      version = "1.15.0"
    }
  }
}


provider "restapi" {
  uri                  = "http://${var.eckmstr_uri}/_snapshot"
  debug                = true
  headers              = {"Content-Type" = "application/json"}
  write_returns_object = true
  insecure             = true
  id_attribute         = "/"
  create_method        = "PUT"
  update_method        = "PUT"
  destroy_method       = "PUT"
}

resource "restapi_object" "create_repository" {
  object_id = "s3repo"
  path = "/${var.base_path}"
  data = "{\"type\": \"s3\", \"settings\": {\"client\": \"default\", \"bucket\": \"${var.bucket_name}\", \"base_path\": \"${var.base_path}/\"}}"
}

#provider "restapi" {
  #alias                = "post-method"
  #uri                  = "http://a60156a13057d41a4b0454e5d4a7e0f6-1247086191.us-east-1.elb.amazonaws.com:9200/_snapshot"
  #debug                = true
  #headers              = {"Content-Type" = "application/json"}
  #write_returns_object = true
  #insecure             = true
  #id_attribute         = "/"
  #create_method        = "POST"
  #update_method        = "POST"
  #destroy_method       = "POST"
#}

#resource "restapi_object" "restore_repository" {
  #provider = restapi.post-method
  #object_id = "s3restore"
  #path = "/eck-ss/index-8/_restore"
  #data = ""
#}
