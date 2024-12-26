provider "aws" {
  region = var.region
}

module "auto_scaling" {

    source = "./modules/auto_scaling"

    region = var.region
    vpc_cidr = var.vpc_cidr
    name = var.name
    az1 = var.az1
    az2 = var.az2
    private_sub_a_cidr = var.private_sub_a_cidr
    private_sub_b_cidr = var.private_sub_b_cidr
    public_sub_a_cidr = var.public_sub_a_cidr
    public_sub_b_cidr = var.public_sub_b_cidr
    image_id = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
} 