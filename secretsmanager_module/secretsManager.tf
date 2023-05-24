resource "aws_secretsmanager_secret" "secrets_manager" {
  name                    = "${var.COMPANY_NAME}_secrets"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "secretsmanager_vv" {
  secret_id     = aws_secretsmanager_secret.secrets_manager.id
  secret_string = tls_private_key.creatorkey.private_key_pem
}
