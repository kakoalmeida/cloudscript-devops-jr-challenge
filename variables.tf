variable "aws_region" {
  type = string
}

variable "project_name" {
  type        = string
  description = "Project name to identify VPC"
}

variable "cidr_block" {
  type        = string
  description = "IPv4 CIDR block for VPC"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all resources."
}