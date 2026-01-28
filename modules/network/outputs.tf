output "subnet_priv_1a" {
  value       = aws_subnet.eks_private_1a.id
  description = "Private subnet for EKS node group - az1"
}

output "subnet_priv_1b" {
  value       = aws_subnet.eks_private_1b.id
  description = "Private subnet for EKS node group - az2"
}

output "vpc_id" {
  value = aws_vpc.cluster_eks_vpc.id
}

output "subnet_public_1a" {
  value       = aws_subnet.eks_subnet_public_1a.id
  description = "Public subnet for cluster EKS - az1"
}

output "subnet_public_1b" {
  value       = aws_subnet.eks_subnet_public_1b.id
  description = "Public subnet for cluster EKS - az2"
}
