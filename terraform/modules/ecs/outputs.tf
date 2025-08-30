output "cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "cluster_service_name" {
  value = aws_ecs_service.web_service.name
}

output "alb_arn" {
    value = aws_lb.web_alb.arn
}