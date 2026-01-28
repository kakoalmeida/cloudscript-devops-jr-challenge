resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.project_name}-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [
      var.subnet_public_1a,
      var.subnet_public_1b
    ]

    endpoint_private_access = true
    endpoint_public_access  = true
  }

  depends_on = [aws_iam_role_policy_attachment.eks_cluster_role_attachment]

  tags = merge(
    {
      Name = "${var.project_name}-eks-cluster"
    },
    var.tags
  )
}

resource "aws_security_group_rule" "eks_cluster_sg_role" {
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}