output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "lb_dns_name" {
  value = aws_lb.my_alb.dns_name
}
