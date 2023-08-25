resource "harness_platform_environment" "example" {
  name         = local.environment_name
  identifier   = local.environment_id
  org_id       = local.org_id
  project_id   = local.project_identifier
  type         = "PreProduction"
  color        = "#0063F7"
  description  = "staging environment"
  tags         = []
  force_delete = false // This is optional and based on your needs
}
