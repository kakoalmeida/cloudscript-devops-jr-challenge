module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster-eks"
  project_name     = var.project_name
  tags             = var.tags
  subnet_public_1a = module.eks_network.subnet_public_1a
  subnet_public_1b = module.eks_network.subnet_public_1b
}

module "managed_node_group" {
  source         = "./modules/managed-node-group"
  project_name   = var.project_name
  cluster_name   = module.eks_cluster.cluster_name
  ec2_type       = var.ec2_type
  subnet_priv_1a = module.eks_network.subnet_priv_1a
  subnet_priv_1b = module.eks_network.subnet_priv_1b
  tags           = var.tags
}
