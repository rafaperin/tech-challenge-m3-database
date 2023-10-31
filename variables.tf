variable "db_username" {
  description = "The username for the DB master user"
  type        = string
  sensitive   = true
}
variable "db_password" {
  description = "The password for the DB master user"
  type        = string
  sensitive   = true
}

variable "aws_access_key_id" {
  description = "Access key ID from AWS IAM"
  type        = string
  sensitive   = true
}
variable "aws_secret_acess_key" {
  description = "Secret access key from AWS IAM"
  type        = string
  sensitive   = true
}