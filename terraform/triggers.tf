resource "harness_platform_triggers" "example" {
  name        = local.trigger_name
  identifier  = local.trigger_id
  org_id      = local.org_id
  project_id  = local.project_identifier
  target_id   = local.pipelines_id
  description = "" // Optional description

  yaml = file("${path.module}/definitions/trigger_definition.yaml")
}
