variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
    description = "CIDR Range"
    type        = string
}

variable "name_prefix" {
    description = "Project Name"
    type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "task_cpu" {
    description = "CPU for the task"
    type = string 
}

variable "task_memory" {
    description = "Memory for the task"
    type = string 
}

variable "container_image" {
    description = "Image URL"
    type = string
}

variable "desired_count" {
    description = "How many instances of the service"
    type = string
}

variable "autoscaling_min_capacity" {
    description = "Minimum number of tasks required"
    type = number
}

variable "autoscaling_max_capacity" {
    description = "Maximum number of tasks required"
    type = number
}

variable "alert_email" {
    description = "Email to Send Alerts"
    type = string
}