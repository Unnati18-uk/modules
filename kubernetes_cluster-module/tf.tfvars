region = "ap-southeast-2"
cluster_name = "project-cluster"
eks_cluster_sub_ids =  [
      "subnet-061b558677661a2d7",
      "subnet-06a137d41ef3d8d80",
      "subnet-049b1bc8f480cf9b7"
    ]
cluster_role_name = "eks-cluster-role"
node_role_name = "eks-node-role"
node_group_subnet_ids =  [
      "subnet-061b558677661a2d7",
      "subnet-06a137d41ef3d8d80",
      "subnet-049b1bc8f480cf9b7"
    ]
desired_size = 2
max_size = 3
min_size = 2
instance_types = ["t2.medium"]