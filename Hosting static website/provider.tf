terraform {
  required_providers {
    aws ={
        source  = "hashicorp/aws"
        version = "5.80.0"
    }
  } 
  backend "s3" {

    bucket = "demo-tier-archi-backend-unnati"
    region = "ap-southeast-2"
    key = "backup.file"
  }
}
provider "aws"{
    region = "ap-southeast-2"
}