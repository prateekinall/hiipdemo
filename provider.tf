terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "aws-cicd-tfstate"
    key            = "terraform_devops/terraform.tfstate"
    region         = "us-east-1"
  }
}



# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}