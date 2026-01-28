output "subnet_priv_1a" {
  value = aws_subnet.eks_private_1a.id
}

output "subnet_priv_1b" {
  value = aws_subnet.eks_private_1b.id
}

output "vpc_id" {
  value = aws_vpc.cluster_eks_vpc.id
}

output "subnet_public_1a" {
  value = aws_subnet.eks_subnet_public_1a.id
}

output "subnet_public_1b" {
  value = aws_subnet.eks_subnet_public_1b.id
}
