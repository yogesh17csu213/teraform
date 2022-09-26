variable "vpc_id" {
  description = "ID of the VPC"
  type = string
}

variable "gateway_id" {
  description = "ID of the igw"
  type = string
}

variable "nat_gateway_id" {
  description = "ID of the nat"
  type = string
}

variable "subnet_id_private_1a" {
  description = "Subnet-ID of the public-1a"
  type = string
}

variable "subnet_id_private_1b" {
  description = "Subnet-ID of the  public-1b"
  type = string
}
variable "subnet_id_private_1c" {
  description = "Subnet-ID of the public-1c"
  type = string
}

variable "subnet_id_public_1a" {
  description = "Subnet-ID of the private-1a"
  type = string
}

variable "subnet_id_public_1b" {
  description = "Subnet-ID of the private-1b"
  type = string
}

variable "subnet_id_public_1c" {
  description = "Subnet-ID of the private-1c"
  type = string
}

variable "cluster_name" {
  description = "Name of the cluster"
  type = string
}
