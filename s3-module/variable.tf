variable "region" {
    default = "ap-southeast-2"
  
}

variable "bucket_name" {

    default = "backend-module-bucket001"
  
}

variable "env" {

    default = "test"
  
}

variable "file_path" {
  default = "./modules/s3_bucket/file.txt"
}

variable "key" {
  default = "data.txt"
}