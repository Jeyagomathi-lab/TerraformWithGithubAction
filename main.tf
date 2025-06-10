terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~5.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "github_bucket" {
    bucket = "github_bucktet"
}