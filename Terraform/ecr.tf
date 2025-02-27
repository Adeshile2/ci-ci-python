
provider "aws" {
  region = "us-east-1"
}

# Create a secret in AWS Secrets Manager
resource "aws_secretsmanager_secret" "env_secrets" {
  name = "my-env-secrets" # Name of the secret
  description = "Secrets for environment variables"

}

# Store key-value pairs in the secret
resource "aws_secretsmanager_secret_version" "env_secrets_version" {
  secret_id = aws_secretsmanager_secret.env_secrets.id
  secret_string = jsonencode({
    AWS_ACCESS_KEY    =  var.aws_access_key
    AWS_SECRET_KEY =  var.aws_secret_key
    
  })
}

# Output the secret ARN
output "secret_arn" {
  value = aws_secretsmanager_secret.env_secrets.arn
}

resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "my-ecr-devops" # Replace with your desired repository name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
#Output the ecr repo
output "aws_ecr_repo" {
  value = aws_ecr_repository.my_ecr_repo.arn
}





