resource "null_resource" "run_create_script" {
  provisioner "local-exec" {
    working_dir = var.working_dir
    environment = var.environment
    when = create
    command = "python3 ${var.python_interpreter_parameters} ${var.python_script_path_for_create_stage} ${var.python_script_parameters_for_create_stage}"
  }

  count = fileexists(var.python_script_path_for_create_stage) ? 1 : 0
}

resource "null_resource" "run_destroy_script" {
  triggers = {
    destroy_command = "python3 ${var.python_interpreter_parameters} ${var.python_script_path_for_destroy_stage} ${var.python_script_parameters_for_destroy_stage}"
    working_dir = var.working_dir
  }

  provisioner "local-exec" {
    working_dir = self.triggers.working_dir
    when = destroy
    command = self.triggers.destroy_command
  }

  count = length(var.python_script_path_for_destroy_stage) > 0 && fileexists(var.python_script_path_for_destroy_stage) ? 1 : 0
}
