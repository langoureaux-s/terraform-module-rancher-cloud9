# terraform-module-rancher-cloud9

This module permit to deploy cloud9 stack with docker support on Rancher.

You need to set the following keys on vault path:
- **password**: the password to access on cloud9
- **proxy** the proxy chain to output on Internet: http://username:password@proxy:8080

```
terragrunt = {
  terraform {
    source = "git::https://github.com/langoureaux-s/terraform-module-rancher-cloud9.git"
  }
  
  vault_path    = "secret/prd/cloud9/toto"
  username      = "toto"
  project_name  = "Default"
  stack_name    = "toto"
}
```