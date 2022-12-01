module "test" {
  source = "../.."

  python_script_path_for_create_stage = "create_stage.py"
  python_script_path_for_destroy_stage = "destroy_stage.py"
}
