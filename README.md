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

If you need more environment variable for cloud9, you need to edit the file `/workspace/.cloud9/.bashrc`