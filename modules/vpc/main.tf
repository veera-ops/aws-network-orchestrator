resource "aws_vpc" "score_vpc" {
  count = var.vpc_required ? 1 : 0

  cidr_block = var.vpc_cidr

  tags = {
    Name        = "score-vpc-${var.account_name}-${var.region}"
    Account     = var.account_id
    Region      = var.region
    Environment = var.environment
    RequestId   = var.request_id
    CostCenter  = "score-dev"
    Service     = "vpc"
  }
}
