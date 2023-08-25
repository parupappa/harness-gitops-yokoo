resource "harness_platform_connector_github" "example" {
  name                = local.github_connector_name
  identifier          = local.github_connector_id
  description         = ""
  tags                = []
  connection_type     = "Repo"
  org_id              = local.org_id
  project_id          = local.project_name
  url                 = local.github_repo_url
  delegate_selectors  = []
  execute_on_delegate = false

  api_authentication {
    token_ref = local.github_access_token_id
  }


  credentials {
    http {
      username  = local.github_username
      token_ref = local.github_access_token_id
    }
  }

}

