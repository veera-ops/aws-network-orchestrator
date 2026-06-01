variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "region" {}
variable "account_id" {}
variable "account_name" {}

variable "vpc_cidr" {}
variable "vpc_required" {}

variable "environment" {}
variable "request_id" {}

variable "dxgw_id" {
  default = ""
}
