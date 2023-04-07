terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}"
}
