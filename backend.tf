terraform {
  backend "s3" {
    bucket         = "pell-terraform-remote-state"
    key            = "pell-app/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "pell-terraform-state-lock"
  }
}