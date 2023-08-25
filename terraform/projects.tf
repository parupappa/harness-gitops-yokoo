resource "harness_platform_project" "example" {
  identifier = local.project_identifier
  name       = local.project_name
  org_id     = local.org_id
  color      = "#0063F7"
}
