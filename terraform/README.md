# Overview
## What is the Harness Terraform Provider?
- [Harness Terraform Provider Overview](https://developer.harness.io/docs/platform/Resource-Development/Terraform/harness-terraform-provider-overview)

This repository manages Harness resources using the Harness Terraform Provider.

Here's the directory tree structure of this repository:

```
.
├── README.md
├── connectors.tf
├── definitions
│   ├── infrastructures_definition.yaml
│   ├── pipeline_definition.yaml
│   ├── service_definition.yaml
│   └── trigger_definition.yaml
├── environments.tf
├── infrastructures.tf
├── locals.tf
├── organization.tf
├── pipelines.tf
├── projects.tf
├── providers.tf
├── secrets.tf
├── services.tf
├── terraform.tfstate
└── triggers.tf
```

# Pipeline Architecture
The pipeline architecture utilizes the following components:
- Artifact Registry
  - GitHub Packages
- Source Repository
  - GitHub
- Kubernetes Cluster
  - GKE (Google Kubernetes Engine)
- CD Pipeline
  - Harness (Next Gen)

The constructed pipeline configuration follows the prototype steps outlined below:
## Setup
1. Push a Docker image to GitHub Packages.
2. Use Terraform to configure resources on Harness.

## Pipeline Execution
1. Pushing changes to the specified branch in GitHub triggers the pipeline.
2. An approval phase is initiated on Harness, requiring manual approval.
3. Upon approval, the pipeline executes and deploys to GKE.

# Getting Started
To get started with creating Harness resources using Terraform, follow the guide [here](https://developer.harness.io/docs/platform/resource-development/terraform/harness-terraform-provider/).

## Prerequisites
- Terraform Installation
  - Version: ~> 1.5.0
- Kubernetes Cluster Setup
  - GKE

## Obtain Harness API Key
- [Create personal API keys and tokens](https://developer.harness.io/docs/platform/resource-development/apis/add-and-manage-api-keys/#create-personal-api-keys-and-tokens)

## Obtain GitHub Personal Access Token
Authenticate using a [personal access token (classic)](https://docs.github.com/ja/packages/working-with-a-github-packages-registry/working-with-the-container-registry#personal-access-token-classic) with the following permissions:

```
- admin:repo_hook
- write:packages
- delete:packages
- repo
- user
```


## Configure Variables
Edit the following variables in `locals.tf` and YAML files in the `definitions` folder according to your environment.
```bash
# providers.tf
<version_number>
<your_harness_account_id>
<your_harness_pat>

# projects.tf
<your_project_identifier>
<your_project_name>

# connectors.tf
<your_connector_id>
<your_connector_name>
<your_github_repo_url>

# secrets.tf
<your_github_username>
<your_github_token_id>
<your_github_token_name>
<your_github_token_value>

# pipelines.tf
<your_pipelines_name>
<your_pipelines_id>

# services.tf
<your_service_name>
<your_service_id>
<your_service_manifest_id>
<your_service_connector_brach>
<your_service_artifact_registry>
<your_service_artifact_org>

# environments.tf
<your_environment_name>
<your_environment_id>

# infrastructures.tf
<your_infrastructure_name>
<your_infrastructure_id>
<your_cluster_name>
<your_cluster_namespace>
<your_cluster_releasename>

# triggers.tf
<your_trigger_name>
<your_trigger_id>
```

# Execute Terraform
```bash
terraform login # Execute only once
terraform init
terraform plan
terraform apply
```

# FAQ 
## How do I modify the pipeline?
There are two ways to achieve this:

1. Modify the harness_pipeline resource in `pipelines.tf`.
2. Use the GUI to modify the pipeline, fetch the YAML, and then update the harness_pipeline resource in `pipelines.tf`.