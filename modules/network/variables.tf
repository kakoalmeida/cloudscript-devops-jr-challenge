variable "cidr_block" {
  type        = string
  description = "CIDR IPv4 block for VPC"
}

variable "project_name" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "Tags for AWS resources"
}