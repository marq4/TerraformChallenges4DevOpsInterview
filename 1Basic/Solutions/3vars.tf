
resource "local_file" "save-pets-name" {
  filename = var.pet-filename
  content  = random_pet.pet.id
}

