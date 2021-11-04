terraform {
  required_providers {
    template = "~> 2.1.2"
  }
}

resource "local_file" "example" {
  content  = data.template_file.example.rendered
  count    = 3
  filename = "example${count.index+1}.txt"
}

data "template_file" "example" {
  template = join("", [for i in [1,2,3,4]: "${i} ${var.example_text}\n"])
}

variable "example_text" {
  description = "a variable for our template"
  default     = "A rose by any other name would smell as sweet."
}