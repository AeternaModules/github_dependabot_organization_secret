resource "github_dependabot_organization_secret" "dependabot_organization_secrets" {
  for_each = var.dependabot_organization_secrets

  secret_name             = each.value.secret_name
  visibility              = each.value.visibility
  encrypted_value         = each.value.encrypted_value
  key_id                  = each.value.key_id
  plaintext_value         = each.value.plaintext_value
  selected_repository_ids = each.value.selected_repository_ids
  value                   = each.value.value
  value_encrypted         = each.value.value_encrypted
}

