resource "aws_eks_node_group" "eks_managed_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-managed-node-group"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  subnet_ids = [
    var.subnet_priv_1a,
    var.subnet_priv_1b
  ]

  instance_types = [var.ec2_type]

  launch_template {
    name    = aws_launch_template.eks_node_launch_template.name
    version = aws_launch_template.eks_node_launch_template.latest_version
  }

  scaling_config {
    desired_size = 2
    max_size     = 5
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_managed_role_attachment_cni,
    aws_iam_role_policy_attachment.eks_managed_role_attachment_registry,
    aws_iam_role_policy_attachment.eks_managed_role_attachment_worker
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-managed-node-group"
    }
  )
}
