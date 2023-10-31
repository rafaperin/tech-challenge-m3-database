Script Terraform para deploy do AWS RDS com PostgreSQL 

Este script faz a configuração básica de VPC, Security Group e RDS na AWS para executarmos um banco de dados PostgreSQL 12, com a porta 5432 configurada no firewall.

Para executar este script, usamos o comando abaixo na raiz do projeto para inicializar o terraform:

terraform init

Para que seja possível a realização do deploy, é necessário informar as credencias de acesso da AWS, bem como user/password do usuário master do database

Através dos comandos abaixo é possível definir os valores destas variáveis:

export TF_VAR_aws_access_key_id=sua_access_key_id
export TF_VAR_aws_secret_acess_key=sua_secret_access_key
export TF_VAR_db_username=nome_do_usuario
export TF_VAR_db_password=senha_do_usuario

Na sequência, usamos o seguinte comando para validar o script:

terraform plan

E por fim, utilizamos o comando abaixo para executar o script e realizar a criação dos recursos:

terraform apply


