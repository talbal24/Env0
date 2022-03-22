terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.41.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

variable "bucketname" {
  type    = string
  default = "env0-acme-bucket"
}

resource "random_string" "random" {
  length  = 5
  special = false
  lower   = true
  upper   = false
  number  = true
}

module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.2.0"

  bucket        = "${var.bucketname}-${random_string.random.id}"
}
  
output "s3_bucket_arn" {
  value = module.s3.s3_bucket_arn
}
