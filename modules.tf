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