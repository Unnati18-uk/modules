provider "aws" {
    region = var.region
  
}

module "EC2" {
    source = "./modules/EC2"

    region = var.region
    image_id =   var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_groups
    name = var.name
    env = var.env

    
    

    }