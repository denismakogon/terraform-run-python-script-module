module "test" {
  source = "../.."

  python_script_path_for_create_stage = "create_stage.py"
  python_script_parameters_for_create_stage = [
    "-a a", "-b b"
  ]
}

