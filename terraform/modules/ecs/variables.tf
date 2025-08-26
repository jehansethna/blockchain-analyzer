variable "name_prefix" {
    description = "Project Name"
    type        = string
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

variable "vpc_id" {
    description = "VPC Id"
    type = string
}

variable "public_subnets" {
    description = "List of public subnet CIDRs"
    type        = list(string)
}

variable "private_subnets" {
    description = "List of private subnet CIDRs"
    type        = list(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "private_route_table" {
  description = "Private Route Table"
  type        = string
}

