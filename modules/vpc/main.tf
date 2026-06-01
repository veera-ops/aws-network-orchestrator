resource "aws_vpc" "score_vpc" {
  count = var.vpc_required ? 1 : 0

  cidr_block = var.vpc_cidr

  tags = merge(var.tags, {
    Service = "vpc"
  })
}
