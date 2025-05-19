
variable "second-pet-filename" {
  type = string
}

resource "local_file" "depends-on" {
  filename   = var.second-pet-filename
  content    = random_pet.second-pet.id
  depends_on = [random_pet.second-pet] # Make dependency explicit. 
}

resource "random_pet" "second-pet" {
}

