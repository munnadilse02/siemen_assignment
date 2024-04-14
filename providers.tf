terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

provider "aws" {
  region     = "provide_region"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

