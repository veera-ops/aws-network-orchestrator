data "aws_vpcs" "existing" {}

resource "aws_vpc" "score_vpc" {
  count = var.vpc_required ? 1 : 0

  cidr_block = var.vpc_cidr

  tags = {
    Name        = "score-vpc-${var.account_name}-${var.region}"
    Project     = "aws-network-orchestrator"
    Environment = var.environment
    Account     = var.account_id
    Region      = var.region
    CostCenter  = "score-dev"
    Service     = "vpc"
    RequestId   = var.request_id
  }
}
