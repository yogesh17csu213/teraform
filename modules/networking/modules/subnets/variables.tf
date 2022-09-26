variable "vpc_id" {
  description = "ID of the VPC in which security resources are deployed"
  type = string
}

variable "cluster_name" {
  description = "Name of the cluster for eks subnets tags, name should be same as cluster name"
  type = string

}

variable "region" {
  description = "AWS region name"
  type = string

}

