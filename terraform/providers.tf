terraform {
  required_version = "~> 1.5.5"

  required_providers {
    harness = {
      source  = "harness/harness"
      version = "0.24.2"
    }
  }
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = local.account_id
  platform_api_key = local.platform_api_key
}
