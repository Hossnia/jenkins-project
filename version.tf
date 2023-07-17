terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }

  backend "s3" {
    bucket         = "hossnia-bucket"
    key            = "jenkins/jenkins.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }

}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

