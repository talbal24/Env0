# This Terraform plan does not create any resources in AWS

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

# Define an empty provider block to satisfy Terraform syntax requirements
provider "aws" {
  region = "us-east-1"
}

# Define an empty module block to satisfy Terraform syntax requirements
module "empty_module" {
  source = "./empty-module"
}
