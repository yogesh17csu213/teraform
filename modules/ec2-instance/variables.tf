variable "subnet_id_public_1a" {
  description = "Subnet-ID of the private-1a"
  type = string
}

variable "subnet_id_public_1b" {
  description = "Subnet-ID of the private-1b"
  type = string
}

variable "subnet_id_public_1c" {
  description = "Subnet-ID of the private-1b"
  type = string
}

# variable "ec2_instance_t2micro" {
#   description = "ID of the VPC in which security resources are deployed"
#   type = string
# }

variable "ec2_instance_xlarge_sg" {
  description = "ID of the VPC in which security resources are deployed"
  type = string
}

variable "vpc_id" {
  description = "ID of the VPC in which security resources are deployed"
  type = string
}

variable "key_name_public_ec2" {
  description = "pem file name for worker-nodes"
  type = string
}

