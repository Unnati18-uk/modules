provider "aws" {
  region = var.region
}

module "s3_bucket" {

  source     = "./modules/s3_bucket"
  region = var.region
  bucket_name = var.bucket_name
  env        = var.env
  file_path  = var.file_path
  key = var.key
}
