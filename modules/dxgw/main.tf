resource "aws_dx_gateway" "score_dxgw" {
  name            = "score-dxgw-${var.environment}"
  amazon_side_asn = 64512

  tags = {
    Name        = "score-dxgw-${var.environment}"
    Environment = var.environment
    RequestId   = var.request_id
    Project     = "aws-network-orchestrator"
    CostCenter  = "score-dev"
    Service     = "dxgw"
  }
}
