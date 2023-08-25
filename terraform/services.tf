resource "harness_platform_service" "example" {
  name       = local.service_name
  identifier = local.service_id
  org_id     = local.org_id
  project_id = local.project_identifier
  yaml       = file("${path.module}/definitions/service_definition.yaml")
}
