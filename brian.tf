resource "local_file" "brians_example" {
  content  = data.template_file.brians_example.rendered
  count    = 3
  filename = "brians_example${count.index+1}.txt"
}

locals {
  brians_example_text = "A Rose by any other name would smell as sweet."
}

data "template_file" "brians_example" {
  template = join( "\n",
      [
        for no in tolist([1,2,3,4]) :
          "${no} ${local.brians_example_text}"
      ])
}
