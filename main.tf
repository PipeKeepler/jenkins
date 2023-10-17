terraform {
  backend "s3" {
  bucket  = "demo-jenkins-eval"
  key     = "state/terraform.tfstate"
  region  = "eu-west-1"
  encrypt = true
  }
}

provider "aws" {
  alias = "feature"
  region = "eu-west-1"
  assume_role {
      role_arn = "arn:aws:iam::090939210393:role/deploy-iac-role"
  }  
}
