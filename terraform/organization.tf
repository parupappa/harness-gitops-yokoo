# terraform version 1.5 or later if you want to use 'import' block.
import {
  id = "default"
  to = harness_platform_organization.this
}

resource "harness_platform_organization" "this" {
  identifier  = local.org_id
  name        = local.org_name
  description = "Default Organization"
  tags        = []
}
