terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    # tls = {
    #   source = "hashicorp/tls"
    #   version = "~> 3.0.0"

    # }
    helm       = ">= 1.0"
    kubernetes = ">= 1.10.0"
  }
    backend "s3" {
    bucket = "tfstatebuckets2" #Enter the S3 bucket name
    key    = "terraform.tfstate" 
    region = "ap-south-1"
  }
}