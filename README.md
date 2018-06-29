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
  proxy         = "http://user:password@proxy:8080"
  project_name  = "Default"
  stack_name    = "toto"
}
```