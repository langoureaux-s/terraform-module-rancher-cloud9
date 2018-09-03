variable "project_name" {
    description = "The project name (environment name)"
}

variable "stack_name" {
    description = "The name for the cloud9 stack. It will be prefixed by cloud9"
}

variable "username" {
    description = "The username to connect on cloud9"
}

variable "password" {
    description = "The password to connect on cloud9"
}

variable "arm_subscription_id" {
    description = "The Azure subscription ID"
    default = ""
}

variable "arm_client_id " {
    description = "The Azure client ID"
    default = ""
}

variable "arm_client_secret" {
    description = "The Azure client secret"
    default = ""
}

variable "arm_tenant_id" {
    description = "The Azure tenant ID"
    default = ""
}

variable "arm_access_key" {
    description = "The Azure access key"
    default = ""
}

variable "rancher_access_key" {
    description = "The Rancher access key"
    default = ""
}

variable "rancher_secret_key" {
    description = "The Rancher secret key"
    default = ""
}

variable "consul_http_token" {
    description = "The Consul token"
    default = ""
}

variable "proxy" {
    description = "The proxy to outbound on Internet"
    default = ""
}



