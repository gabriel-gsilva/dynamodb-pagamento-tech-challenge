resource "aws_dynamodb_table" "preferencias" {
  name           = var.dynamodb_table_name
  billing_mode   = var.dynamodb_billing_mode
  hash_key       = "id_preferencia"
  range_key      = "produto"

  attribute {
    name = "id_preferencia"
    type = "S"
  }

  attribute {
    name = "produto"
    type = "S"
  }

  tags = var.tags
}