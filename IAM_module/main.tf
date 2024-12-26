provider "aws" {
    region = var.region
  
}

module "iam_user" {

    source = "./modules/iam_user"

    region = var.region
    name = var.name
    force_destroy = var.force_destroy
    env = var.env
    passward = var.passward
    
  
}