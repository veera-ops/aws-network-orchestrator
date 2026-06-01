resource "aws_dx_gateway_association" "score_assoc" {
  dx_gateway_id         = var.dxgw_id
  associated_gateway_id = var.tgw_id

  allowed_prefixes = [var.vpc_cidr]
}
