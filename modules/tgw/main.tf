resource "aws_ec2_transit_gateway" "score_tgw" {
  description = "TGW-${var.account_name}-${var.region}"

  tags = merge(var.tags, {
    Service = "tgw"
  })
}
