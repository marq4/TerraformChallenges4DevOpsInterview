
variable "filenames" {
  type    = list(string)
  default = ["dog.txt", "cat.txt", "duck.txt"]
}

resource "local_file" "my-pets" {
  count    = length(var.filenames)
  filename = var.filenames[count.index]
  content  = ""
}

