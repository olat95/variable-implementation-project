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