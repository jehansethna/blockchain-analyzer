variable "name_prefix" {
    description = "Project Name"
    type        = string
}

variable "alert_email" {
    description = "Email to Send Alerts"
    type = string
}

variable "desired_count" {
    description = "How many instances of the service"
    type = string
}

variable "cluster_name" {
  description = "Name of the ECS Cluster"
    type = string
}

variable "cluster_service_name" {
  description = "Name of the ECS Cluster service"
type = string
}

variable "alb_arn" {
    description = "ALB Arn"
    type = string
}