output "stack_id" {
  value = "${rancher_stack.cloud9.id}"
}

output "stack_docker_compose" {
  value = "${rancher_stack.cloud9.rendered_docker_compose}"
}

output "stack_rancher_compose" {
  value = "${rancher_stack.cloud9.rendered_rancher_compose}"
}