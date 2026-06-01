resource "aws_ec2_transit_gateway" "score_tgw" {
  description = "TGW-${var.account_name}-${var.region}"

  tags = {
    Name        = "score-tgw-${var.account_name}-${var.region}"
    Project     = "aws-network-orchestrator"
    Environment = var.environment
    Account     = var.account_id
    Region      = var.region
    CostCenter  = "score-dev"
    Service     = "tgw"
    RequestId   = var.request_id
  }
}
