

resource "local_file" "my-file" {
  filename = "terraform-managed-file.txt"
  content  = "Hello Terraform!"
}

