terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "azurerm" {}
}

# Get the project data
data "rancher_environment" "project" {
  name = "${var.project_name}"
}

# Deploy cloud9 stack
data "template_file" "docker_compose" {
  template = "${file("${path.module}/rancher/cloud9/docker-compose.yml")}"

  vars {
    username              = "${var.username}"
    password              = "${var.password}"
    proxy                 = "${var.proxy}"
    arm_subscription_id   = "${var.arm_subscription_id}"
    arm_client_id         = "${var.arm_client_id}"
    arm_client_secret     = "${var.arm_client_secret}"
    arm_tenant_id         = "${var.arm_tenant_id}"
    arm_access_key        = "${var.arm_access_key}"
    rancher_access_key    = "${var.rancher_access_key}"
    rancher_secret_key    = "${var.rancher_secret_key}"
    consul_http_token     = "${var.consul_http_token}"
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
