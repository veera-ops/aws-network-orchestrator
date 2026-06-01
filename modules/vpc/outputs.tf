output "vpc_id" {
  value = try(aws_vpc.score_vpc[0].id, "")
}
