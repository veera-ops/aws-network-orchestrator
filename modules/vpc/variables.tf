variable "account_id" {}
variable "account_name" {}
variable "region" {}
variable "vpc_cidr" {}
variable "vpc_required" {}
variable "environment" {}
variable "request_id" {}

variable "tags" {
  type = map(string)
}
