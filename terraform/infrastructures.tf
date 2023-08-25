resource "harness_platform_infrastructure" "example" {
  deployment_type = "Kubernetes"
  description     = ""
  env_id          = local.environment_id
  identifier      = local.infrastructure_id
  name            = local.infrastructure_name
  org_id          = "default"
  project_id      = local.project_identifier
  tags            = []
  type            = "KubernetesGcp"
  yaml            = file("${path.module}/definitions/infrastructures_definition.yaml")
}
