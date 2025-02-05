terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.84.0"
        }
    }

    backend "s3" {
        bucket = "tf-remote-state-dev1"
        key = "expense-infra-dev"
        region = "us-east-1"
        dynamodb_table = "tf-remote-state-dev1"
    }
}

provider "aws" {
    region = "us-east-1"
}