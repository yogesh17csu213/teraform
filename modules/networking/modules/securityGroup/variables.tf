variable "vpc_id" {
  description = "ID of the VPC in which security resources are deployed"
  type = string
}

variable "cluster_name" {
  description = "name of the cluster"
  type = string
}

variable "cidr_block" {
    description = "define the cidr block to be used"
    type = string
}
