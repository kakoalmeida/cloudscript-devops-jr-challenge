resource "aws_launch_template" "eks_node_launch_template" {
  name_prefix = "${var.project_name}-eks-node-lt"


  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
  }

  tag_specifications {
    resource_type = "instance"
    tags = merge(
      var.tags,
      {
        Name = "${var.project_name}-managed-node"
      }
    )
  }
}
