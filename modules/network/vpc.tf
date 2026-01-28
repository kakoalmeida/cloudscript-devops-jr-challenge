resource "aws_vpc" "cluster_eks_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      Name = "${var.project_name}-vpc"
    },
    var.tags
  )
}