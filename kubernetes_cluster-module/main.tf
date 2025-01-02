provider "aws" {
  region = var.region
}
 
module "eks" {
  
  source = "./modules/eks"

  region = var.region
  cluster_name = var.cluster_name
  eks_cluster_sub_ids = var.eks_cluster_sub_ids
  cluster_role_name = var.cluster_role_name
  node_role_name = var.node_role_name
  node_group_subnet_ids = var.node_group_subnet_ids
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  instance_types = var.instance_types
}