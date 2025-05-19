
variable "my_foreach_pets" {
  type    = list(string)
  default = ["frog.txt", "cow.txt", "fox.txt"]
}

resource "local_file" "foreach-files" {
  for_each = toset(var.my_foreach_pets)
  filename = each.value
  content  = ""
}

