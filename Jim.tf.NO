resource "local_file" "jim_example" {
  count = 3

  filename = "jim_example${count.index + 1}.txt"

  content = <<EOT
%{ for line in range(1, 5) ~}
${line} ${var.flower_type} by any other name would smell as sweet.
%{ endfor ~}
EOT
}

variable "flower_type" {
  description = "a variable for our template"
  default = "rose"
}