
data "aws_secretsmanager_secret" "secrets" {
  name = "my-database-password"
}

data "aws_secretsmanager_secret_version" "latest" {
  secret_id = data.aws_secretsmanager_secret.secrets.id
}

resource "aws_db_instance" "my_secret_db" {
  identifier        = "rds-db-instance"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t3.micro"
  username          = "admin"
  password          = data.aws_secretsmanager_secret_version.latest.secret_string
}

