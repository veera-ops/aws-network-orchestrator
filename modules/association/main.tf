resource "aws_dx_gateway_association" "score_assoc" {
  dx_gateway_id         = var.dxgw_id
  associated_gateway_id = var.tgw_id

  allowed_prefixes = [var.vpc_cidr]

  tags = {
    Name        = "score-dxgw-tgw-${var.account_name}"
    Project     = "aws-network-orchestrator"
    Environment = var.environment
    Account     = var.account_id
    CostCenter  = "score-dev"
    Service     = "dxgw-association"
    RequestId   = var.request_id
  }
}
