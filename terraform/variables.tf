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

variable "task_cpu" {
    description = "The CPU required for the ECS task."
    type = string 
}

variable "task_memory" {
    description = "The Memory required for the ECS task."
    type = string 
}

variable "container_image" {
    description = "The Image URL required for the ECS task."
    type = string
}

variable "desired_count" {
    description = "How many instances of the ECS Service."
    type = string
}

variable "autoscaling_min_capacity" {
    description = "Minimum number of tasks required for the ECS Service."
    type = number
}

variable "autoscaling_max_capacity" {
    description = "Maximum number of tasks required for the ECS Service."
    type = number
}

variable "alert_email" {
    description = "Email to Send Alerts."
    type = string
}