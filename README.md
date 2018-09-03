# terraform-module-rancher-cloud9

This module permit to deploy cloud9 stack with docker support on Rancher.

```
terragrunt = {
  terraform {
    source = "git::https://github.com/langoureaux-s/terraform-module-rancher-cloud9.git"
  }
  
  vault_path    = "secret/prd/cloud9/toto"
  username      = "toto"
  password      = "mypassword"
  project_name  = "Default"
  stack_name    = "toto"
}
```

You can use the following optionnal parameters:
 - proxy: the proxy chain, for exemple http://user:password@proxy:8080
 - arm_subscription_id: the Azure subscription ID
 - arm_client_id: the Azure client ID
 - arm_client_secret: the Azure client secret
 - arm_tenant_id: the azure tenant ID
 - arm_access_key: The azure access key for blob storage
 - rancher_access_key: the Rancher access key
 - rancher_secret_key: The ranger secret key
 - consul_http_token: The Consul token
 - 