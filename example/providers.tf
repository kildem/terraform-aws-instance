terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

variable "region" {
  type = string
  description = "The AWS region to connect and run the tests in."
  default = "eu-west-1"
}

provider "aws" {
  region = var.region
}