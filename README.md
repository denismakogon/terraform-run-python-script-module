# A Terraform module for Python scripts
Terraform module for running Python script with create and delete lifecycle stages.

## How to use it

```terraform
module "do_something" {
  source = "git::http://github.com/denismakogon/terraform-run-python-script-module.git?ref=main"

  environment = {
    
  }
  working_dir = "./"

  python_interpreter_parameters = ""
  
  python_script_path_for_create_stage = "/path/to/script.py"
  python_script_parameters_for_create_stage = "create script parameters"

  python_script_path_for_destroy_stage = "/path/to/script.py"
  python_script_parameters_for_destroy_stage = "destroy script parameters"
}
```
