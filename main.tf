provider "aws" {
  region = var.aws_region
}

resource "aws_dynamodb_table" "preferencias" {
  name           = var.dynamodb_table_name
  billing_mode   = var.dynamodb_billing_mode
  hash_key       = "external_reference"
  range_key      = "produto"
  attribute {
    name = "external_reference"
    type = "S"
  }
  attribute {
    name = "produto"
    type = "S"
  }

  tags = var.tags
}