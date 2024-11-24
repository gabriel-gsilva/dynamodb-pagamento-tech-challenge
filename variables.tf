variable "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB para armazenar as preferências do Mercado Pago"
  type        = string
  default     = "MercadoPagoPreferencias"
}

variable "dynamodb_billing_mode" {
  description = "Modo de cobrança para a tabela DynamoDB"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "tags" {
  description = "Tags a serem aplicadas a todos os recursos"
  type        = map(string)
}