terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east"
}

resource "aws_s3_bucket" "sa-east-1" {
  bucket = "some-random-bucket-name-xd"

}

resource "aws_s3_bucket" "us-east-1" {
  bucket   = "some-random-bucket-name-xd-us-east"
  provider = aws.us-east

}
