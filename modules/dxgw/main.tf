resource "aws_dx_gateway" "score_dxgw" {
  name            = "score-dxgw-${var.environment}"
  amazon_side_asn = 64512

  tags = {
    Name        = "score-dxgw-${var.environment}"
    Project     = "aws-network-orchestrator"
    Environment = var.environment
    Account     = "570864946772"
    CostCenter  = "score-dev"
    Service     = "dxgw"
    RequestId   = var.request_id
  }
}
