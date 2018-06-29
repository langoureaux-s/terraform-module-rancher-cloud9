variable "vault_path" {
    description = "The vault path to get secret about this deployement. You need to set the key password"
}

variable "project_name" {
    description = "The project name (environment name)"
}

variable "stack_name" {
    description = "The name for the cloud9 stack. It will be prefixed by cloud9"
}

variable "username" {
    description = "The username to connect on cloud9"
}



