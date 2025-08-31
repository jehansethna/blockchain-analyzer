variable "aws_region" {
  description = "The AWS region for the Application Deployment."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
    description = "The CIDR Range for the VPC."
    type        = string
}

variable "name_prefix" {
    description = "The Project Name to be used for the application."
    type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs."
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones."
  type        = list(string)
}