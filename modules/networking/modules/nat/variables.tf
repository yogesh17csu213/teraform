variable "subnet_id" {
  description = "ID of the VPC in which security resources are deployed"
  type = string
}

variable "igw_id" {
  description = "ID of the igw in which security resources are deployed"
  type = string
}

variable "cluster_name" {
  description = "Name of the cluster"
  type = string
}