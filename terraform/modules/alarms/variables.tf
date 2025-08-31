variable "name_prefix" {
    description = "The Project Name to be used for the application."
    type        = string
}

variable "alert_email" {
    description = "Email to Send Alerts"
    type = string
}

variable "desired_count" {
    description = "How many instances of the ECS Service."
    type = string
}

variable "cluster_name" {
  description = "Name of the ECS Cluster."
    type = string
}

variable "cluster_service_name" {
  description = "Name of the ECS Cluster service."
type = string
}

variable "alb_arn" {
    description = "ALB Arn."
    type = string
}