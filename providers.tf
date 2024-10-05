terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}

# configure aws provider
provider "aws" {
    region = var.region

    default_tags {
        tags = {
            Project = var.project_name
            Environment = var.environment
            Automation = "Terraform" 
        }
    } 
}