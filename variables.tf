# variable "AWS_ACCESS_KEY" {}    #To manually enter aws credentials 

# variable "AWS_SECRET_KEY" {}

variable "shared_credentials_file" {
  default     = "~/.aws/credentials "
}

variable "profile" {
  description = "Enter the Name for the eks-cluster"
  type        = string
  default     = "rajat"
}

variable "cluster_name" {
  description = "Enter the Name for the eks-cluster"
  type        = string
}

variable "region" {
  description = "Enter the aws region"
  default     = "ap-south-1"
}

variable "cidr_block" {
  description = "define the cidr block to be used for vpc"
  default     = "10.1.0.0/16"
}

variable "key_name_public_ec2" {
  description = "pem file name for ec2-public-instances"
  type = string
  default = "yogesh"
}