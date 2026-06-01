resource "aws_dx_gateway" "score_dxgw" {
  name            = "score-dxgw-${var.environment}"
  amazon_side_asn = 64512

  tags = merge(var.tags, {
    Service = "dxgw"
  })
}
