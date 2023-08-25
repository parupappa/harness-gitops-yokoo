resource "harness_platform_pipeline" "example" {
  name             = local.pipelines_name
  identifier       = local.pipelines_id
  org_id           = local.org_id
  project_id       = local.project_identifier
  description      = "example pipeline"
  template_applied = false

  yaml = file("${path.module}/definitions/pipeline_definition.yaml")
}
