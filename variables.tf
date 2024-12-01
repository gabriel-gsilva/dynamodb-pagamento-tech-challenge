variable "aws_region" {
  description = "A região da AWS onde os recursos serão criados"
  type        = string
  default     = "sa-east-1"
}

variable "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB"
  type        = string
  default = "MercadoPagoPreferencias"
}

variable "dynamodb_billing_mode" {
  description = "Modo de cobrança do DynamoDB (PROVISIONED ou PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "tags" {
  description = "Tags para a tabela DynamoDB"
  type        = map(string)
  default     = {}
}