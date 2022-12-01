variable "working_dir" {
  default = ""
}

variable "environment" {
  type = map(any)
  default = {}
}

variable "python_script_path_for_create_stage" {
  type = string
  description = "a full path to Python module to execute during resource create stage"
}

variable "python_script_path_for_destroy_stage" {
  type = string
  description = "a full path to Python module to execute during resource destroy stage"
  default = ""
}

variable "python_interpreter_parameters" {
  default = ""
  type = string
  description = "Python script parameters"
}

variable "python_script_parameters_for_create_stage" {
  default = ""
  type = string
  description = "Python script parameters"
}

variable "python_script_parameters_for_destroy_stage" {
  default = ""
  type = string
  description = "Python script parameters for destroy stage"
}
