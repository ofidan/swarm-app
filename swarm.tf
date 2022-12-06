terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  profile = "cw-training"
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {
  name = "us-east-1"
}

locals {
  github-repo = "https://github.com/ofidan/swarm-app.git"
  github-file-url = ""
}