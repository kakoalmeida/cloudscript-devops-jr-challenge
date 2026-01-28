resource "aws_subnet" "eks_private_1a" {
  vpc_id            = aws_vpc.cluster_eks_vpc.id
  cidr_block        = cidrsubnet(aws_vpc.cluster_eks_vpc.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    {
      Name                              = "${var.project_name}-private-subnet-1a"
      "kubernetes.io/role/internal-elb" = 1
    },
    var.tags
  )
}

resource "aws_subnet" "eks_private_1b" {
  vpc_id            = aws_vpc.cluster_eks_vpc.id
  cidr_block        = cidrsubnet(aws_vpc.cluster_eks_vpc.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    {
      Name                              = "${var.project_name}-private-subnet-1b"
      "kubernetes.io/role/internal-elb" = 1
    },
    var.tags
  )
}
