terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.54.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


# Create a VPCresource "aws_vpc" "main" {
resource "aws_vpc" "projectA-vpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "main"
  }
}