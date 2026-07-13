output "dependabot_organization_secrets_id" {
  description = "Map of id values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.id }
}
output "dependabot_organization_secrets_created_at" {
  description = "Map of created_at values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.created_at }
}
output "dependabot_organization_secrets_encrypted_value" {
  description = "Map of encrypted_value values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.encrypted_value }
  sensitive   = true
}
output "dependabot_organization_secrets_key_id" {
  description = "Map of key_id values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.key_id }
}
output "dependabot_organization_secrets_plaintext_value" {
  description = "Map of plaintext_value values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.plaintext_value }
  sensitive   = true
}
output "dependabot_organization_secrets_remote_updated_at" {
  description = "Map of remote_updated_at values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.remote_updated_at }
}
output "dependabot_organization_secrets_secret_name" {
  description = "Map of secret_name values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.secret_name }
}
output "dependabot_organization_secrets_selected_repository_ids" {
  description = "Map of selected_repository_ids values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.selected_repository_ids }
}
output "dependabot_organization_secrets_updated_at" {
  description = "Map of updated_at values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.updated_at }
}
output "dependabot_organization_secrets_value" {
  description = "Map of value values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.value }
  sensitive   = true
}
output "dependabot_organization_secrets_value_encrypted" {
  description = "Map of value_encrypted values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.value_encrypted }
  sensitive   = true
}
output "dependabot_organization_secrets_visibility" {
  description = "Map of visibility values across all dependabot_organization_secrets, keyed the same as var.dependabot_organization_secrets"
  value       = { for k, v in github_dependabot_organization_secret.dependabot_organization_secrets : k => v.visibility }
}

