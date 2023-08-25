resource "harness_platform_secret_text" "example" {
  name                      = local.github_access_token_name
  identifier                = local.github_access_token_id
  org_id                    = local.org_id
  project_id                = local.project_identifier
  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = local.github_access_token_value
  description               = ""
  tags                      = []
}
