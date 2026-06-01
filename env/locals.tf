locals {
  tags = {
    Project     = "aws-network-orchestrator"
    Environment = var.environment
    Account     = var.account_id
    AccountName = var.account_name
    Region      = var.region
    CostCenter  = "score-dev"
    ManagedBy   = "terraform"
    RequestId   = var.request_id
  }
}
