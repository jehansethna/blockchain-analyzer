# AWS Envrionment
aws_region           = "us-east-1"
name_prefix          = "blockchain-analyzer"
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]

# ECS Requirements
task_cpu = "1024"
task_memory = "2048"
container_image = "671415945235.dkr.ecr.us-east-1.amazonaws.com/blockchain-analyzer:v0.20.0"
desired_count = "1"
autoscaling_min_capacity = 1
autoscaling_max_capacity = 5

# Notification Requirements
alert_email = "jehans7@gmail.com"