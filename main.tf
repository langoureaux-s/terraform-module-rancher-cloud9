terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "azurerm" {}
}

provider "rancher" {}
provider "vault" {}

# Get the project data
data "rancher_environment" "project" {
  name = "${var.project_name}
}

# Get vault secret
data "vault_generic_secret" "vault" {
  path = "${var.vault_path}"
}

# Deploy cloud9 stack
data "template_file" "docker_compose" {
  template = "${file("${path.module}/rancher/cloud9/docker-compose.yml")}"

  vars {
    username              = "${var.username}"
    password              = "${data.vault_generic_secret.vault.data["password"]}"
  }
}
resource "rancher_stack" "cloud9" {
  name            = "${var.stack_name}"
  description     = "Cloud9"
  environment_id  = "${data.rancher_environment.project.id}"
  scope           = "user"
  start_on_create = true
  finish_upgrade  = true
  docker_compose  = "${data.template_file.docker_compose.rendered}"
  rancher_compose = "${file("${path.module}/rancher/cloud9/rancher-compose.yml")}"
}
