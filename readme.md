# DynamoDB para Armazenamento de Informações de Pagamento do Mercado Pago 

#### 🚧 Projeto em construção... 🚧

## 📋 Índice

- [DynamoDB para Armazenamento de Informações de Pagamento do Mercado Pago](#dynamodb-para-armazenamento-de-informações-de-pagamento-do-mercado-pago)
      - [🚧 Projeto em construção... 🚧](#-projeto-em-construção-)
  - [📋 Índice](#-índice)
  - [💻 Sobre o Projeto](#-sobre-o-projeto)
  - [🗂 Estrutura do Projeto](#-estrutura-do-projeto)
  - [⚙️ Configuração da Tabela DynamoDB](#️-configuração-da-tabela-dynamodb)
  - [🔧 Variáveis](#-variáveis)
  - [📤 Saídas](#-saídas)
  - [🚀 Como Usar](#-como-usar)
  - [📝 Notas Importantes](#-notas-importantes)

## 💻 Sobre o Projeto

Este projeto foi desenvolvido durante o **Tech Challenge** oferecido pela [FIAP] como parte do curso de Arquitetura de Software.

Este projeto utiliza Terraform para provisionar uma tabela DynamoDB na AWS, destinada a armazenar informações de pagamento relacionadas ao Mercado Pago.

## 🗂 Estrutura do Projeto

O projeto consiste em três arquivos principais:

- `main.tf`: Define o recurso da tabela DynamoDB.
- `variables.tf`: Declara as variáveis utilizadas na configuração.
- `outputs.tf`: Define as saídas do Terraform após a criação dos recursos.

## ⚙️ Configuração da Tabela DynamoDB

A tabela DynamoDB é configurada com as seguintes características:

- **Nome da Tabela**: Definido pela variável `dynamodb_table_name`.
- **Chave de Partição**: `external_reference` (String)
- **Chave de Classificação**: `produto` (String)
- **Modo de Cobrança**: Configurável, padrão é `PAY_PER_REQUEST`.

## 🔧 Variáveis 

As seguintes variáveis podem ser configuradas:

- `aws_region`: Região da AWS (padrão: `sa-east-1`)
- `dynamodb_table_name`: Nome da tabela DynamoDB
- `dynamodb_billing_mode`: Modo de cobrança (`PROVISIONED` ou `PAY_PER_REQUEST`)
- `tags`: Tags para a tabela DynamoDB

## 📤 Saídas 

Após a aplicação do Terraform, as seguintes informações estarão disponíveis:

- `table_name`: Nome da tabela DynamoDB criada
- `table_arn`: ARN (Amazon Resource Name) da tabela DynamoDB

## 🚀 Como Usar

1. Certifique-se de ter o Terraform instalado.
2. Configure suas credenciais AWS.
3. Personalize as variáveis conforme necessário.
4. Execute os comandos Terraform:

```bash
# Inicialize o Terraform
$ terraform init

# Verifique o plano de execução do Terraform
$ terraform plan

# Aplique as mudanças na infraestrutura
$ terraform apply

# Confirme a aplicação digitando 'yes' quando solicitado
```

## 📝 Notas Importantes

- Certifique-se de configurar corretamente as permissões IAM para acessar o DynamoDB.
- Revise as configurações de segurança e acesso antes de usar em produção.
- Considere implementar backups e estratégias de recuperação de dados.