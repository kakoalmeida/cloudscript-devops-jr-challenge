variable "project_name" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "Tags for AWS resources"
}

variable "subnet_public_1a" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1a"
}

variable "subnet_public_1b" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1b"
}