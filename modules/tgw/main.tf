resource "aws_ec2_transit_gateway" "score_tgw" {
  description = "TGW-${var.account_name}-${var.region}"

  tags = {
    Name        = "score-tgw-${var.account_name}-${var.region}"
    Account     = var.account_id
    Region      = var.region
    Environment = var.environment
    RequestId   = var.request_id
    CostCenter  = "score-dev"
    Service     = "tgw"
  }
}
