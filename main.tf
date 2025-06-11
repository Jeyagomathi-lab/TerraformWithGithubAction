terraform {
  backend "s3" {
    bucket       = "terraform-state-jeyagomathi-dev"
    key          = "dev/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
    region       = "ap-south-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "github_bucket" {
  bucket = "github-demo-cicd"
}