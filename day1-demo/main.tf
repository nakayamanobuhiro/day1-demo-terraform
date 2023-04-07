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
  type    = string
  default = "day1-demo-521539043457"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

variable "bucket_name_2" {
  type    = string
  default = "day1-demo2-521539043457"
}

resource "aws_s3_bucket" "example2" {
  bucket = var.bucket_name_2
}
