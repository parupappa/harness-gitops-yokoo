# providers
locals {
  account_id       = "<your_account_id>"
  platform_api_key = "<your_platform_api_key>"
}

# organizations
locals {
  org_id   = "default"
  org_name = "default"
}

# projects
locals {
  project_identifier = "<your_project_identifier>"
  project_name       = "<your_project_name>"
}

# connectors
locals {
  github_connector_id   = "<your_connector_id>"
  github_connector_name = "<your_connector_name>"
  github_repo_url       = "<your_github_repo_url>"
}

# secrets
locals {
  github_username           = "<your_github_username>"
  github_access_token_id    = "<your_github_token_id>"
  github_access_token_name  = "<your_github_token_name>"
  github_access_token_value = "<your_github_token_value>"
}

# pipelines
locals {
  pipelines_name = "<your_pipelines_name>"
  pipelines_id   = "<your_pipelines_id>"
}

# services
locals {
  service_name               = "<your_service_name>"
  service_id                 = "<your_service_id>"
  service_manifest_id        = "<your_service_manifest_id>"
  service_connector_brach    = "<your_service_connector_brach>"
  service_artifact_registory = "<your_service_artifact_registry>"
  service_artifact_org       = "<your_service_artifact_org>"
}

# environments
locals {
  environment_name = "<your_environment_name>"
  environment_id   = "<your_environment_id>"
}

# infrastructures
locals {
  infrastructure_name = "<your_infrastructure_name>"
  infrastructure_id   = "<your_infrastructure_id>"
  cluster_name        = "<your_cluster_name>"
  cluster_namespace   = "<your_cluster_namespace>"
  cluster_releasename = "<your_cluster_releasename>"
}

# triggers
locals {
  trigger_name   = "<your_trigger_name>"
  trigger_id     = "<your_trigger_id>"
  trigger_branch = "<your_trigger_branch>"
}
