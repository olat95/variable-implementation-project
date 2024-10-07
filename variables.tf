# environment variable

variable "region" {
  description = "The region in which the resources are located"
  type        = string
}


variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

# VPC variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

# public subnet variables
variable "public_subnet_az1_cidr" {
  description = "The CIDR blocks for the public subnets"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "The CIDR blocks for the public subnets"
  type        = string
}

# private subnet variables
# APP
variable "private_app_subnet_az1_cidr" {
  description = "The CIDR blocks for the private subnets"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "The CIDR blocks for the private subnets"
  type        = string
}

# DATA
variable "private_data_subnet_az1_cidr" {
  description = "The CIDR blocks for the private subnets"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "The CIDR blocks for the private subnets"
  type        = string
}

# security group variables
variable "ssh_location" {
  description = "IP address to allow ssh access"
  type        = string
}

# RDS variables
variable "database_snapshot_identifier" {
  description = "database snapshot name"
  type        = string
}

variable "database_instance_class" {
  description = "database instance type"
  type        = string
}

variable "database_instance_identifier" {
  description = "database instance identifier"
  type        = string
}

variable "multi_az" {
  description = "multi availability zone"
  type        = bool
}

# ALB variables
variable "ssl_certificate_arn" {
  description = "SSL certificate ARN"
  type        = string
}

# ASG variables
variable "launch_template_name" {
  description = "launch template name"
  type        = string
  default     = "webserver-launch-template"
}

variable "ec2_image_id" {
  description = "AMI ID"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ec2_key_name" {
  description = "EC2 key pair name"
  type        = string
}

# SNS variables
variable "email_address_for_sns" {
  description = "email address for SNS"
  type        = string
}

# Route53 variables
variable "domain_name" {
  description = "domain name"
  type        = string
}

variable "record_name" {
  description = "subdomain name"
  type        = string
  default     = "www"
}