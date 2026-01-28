variable "cluster_name" {
  type        = string
  description = "Cluster name for managed node group"
}

variable "project_name" {
  type        = string
  description = "Project name for managed node group"
}

variable "subnet_priv_1a" {
  type        = string
  description = "Private subnet for node group az1"
}
variable "subnet_priv_1b" {
  type        = string
  description = "Private subnet for node group az2"
}

variable "tags" {
  type        = map(any)
  description = "Tags for AWS resources"
}

variable "ec2_type" {
  type        = string
  description = "EC2 instance for node group"
}