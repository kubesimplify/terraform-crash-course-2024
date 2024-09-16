terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1" 
  shared_credentials_files = ["~/.aws/credentials"] # path to AWS credentials file
  profile                  = "vscode" # profile name in credentials file

}
