module "networking" {
  source = "./modules/networking"
  vpc_cidr = var.vpc_cidr
  name_prefix = var.name_prefix
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones = var.availability_zones
}

module "ecs" {
    source = "./modules/ecs"
    name_prefix = var.name_prefix
    task_cpu = var.task_cpu
    task_memory = var.task_memory
    container_image = var.container_image
    desired_count = var.desired_count
    vpc_id = module.networking.vpc_id
    public_subnets = module.networking.public_subnet_ids
    private_subnets = module.networking.private_subnet_ids
    aws_region = var.aws_region
    private_route_table = module.networking.private_route_table
    autoscaling_min_capacity = var.autoscaling_min_capacity
    autoscaling_max_capacity = var.autoscaling_max_capacity
}