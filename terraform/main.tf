module "eks" {
 source  = "terraform-aws-modules/eks/aws"
 version = "~> 20.31"

 cluster_name    = "example"
 cluster_version = "1.31"

 # Optional
 cluster_endpoint_public_access = true

 # Optional: Adds the current caller identity as an administrator via cluster access entry
 enable_cluster_creator_admin_permissions = true

 eks_managed_node_groups = {
   example = {
     instance_types = ["t3.medium"]
     min_size       = 1
     max_size       = 3
     desired_size   = 2
   }
 }

 vpc_id     = "vpc-0914e55baf194ca51"
 subnet_ids = ["subnet-025768a663f41b860","subnet-099e6e8dfa0000354"]

 tags = {
   Environment = "dev"
   Terraform   = "true"
 }
}