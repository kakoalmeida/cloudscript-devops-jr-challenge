variable "aws_region" {
  type        = string
  description = "AWS Region for resources deployment"
}

variable "project_name" {
  type        = string
  description = "Project name to identify VPC"
}

variable "cidr_block" {
  type        = string
  description = "IPv4 CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all resources."
}

variable "ec2_type" {
  type        = string
  description = "EC2 instance for managed node groups"
  default     = "t3.small"
}