region          = "us-east-1"
cluster_name    = "my-eks-cluster"
cluster_version = "1.28"

vpc_id          = "vpc-0914e55baf194ca51"
private_subnets = ["subnet-025768a663f41b860", "subnet-099e6e8dfa0000354"]
public_subnets  = ["subnet-067e5cb951e5cb429", "subnet-009a817f736551030"]

eks_managed_node_groups = {
  default = {
    min_size     = 1
    max_size     = 3
    desired_size = 2
    instance_types = ["t3.medium"]
  }
}