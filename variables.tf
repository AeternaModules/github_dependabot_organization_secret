variable "dependabot_organization_secrets" {
  description = <<EOT
Map of dependabot_organization_secrets, attributes below
Required:
    - secret_name
    - visibility
Optional:
    - encrypted_value
    - key_id
    - plaintext_value
    - selected_repository_ids
    - value
    - value_encrypted
EOT

  type = map(object({
    secret_name             = string
    visibility              = string
    encrypted_value         = optional(string)
    key_id                  = optional(string)
    plaintext_value         = optional(string)
    selected_repository_ids = optional(set(number))
    value                   = optional(string)
    value_encrypted         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dependabot_organization_secrets : (
        v.value_encrypted == null || (can(base64decode(v.value_encrypted)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.dependabot_organization_secrets : (
        v.encrypted_value == null || (can(base64decode(v.encrypted_value)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.dependabot_organization_secrets : (
        contains(["all", "private", "selected"], v.visibility)
      )
    ])
    error_message = "must be one of: all, private, selected"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

