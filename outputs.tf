output "subnet_public_1a" {
  value       = module.eks_network.subnet_public_1a
  description = "Public subnet for cluster EKS - az1"
}

output "subnet_public_1b" {
  value       = module.eks_network.subnet_public_1b
  description = "Public subnet for cluster EKS - az2"
}

output "subnet_priv_1a" {
  value       = module.eks_network.subnet_priv_1a
  description = "Private subnet for EKS node group - az1"
}

output "subnet_priv_1b" {
  value       = module.eks_network.subnet_priv_1b
  description = "Private subnet for EKS node group - az2"
}
