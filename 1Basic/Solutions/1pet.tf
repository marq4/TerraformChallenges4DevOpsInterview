
resource "random_pet" "pet" {
}

output "my-pet-name" {
  value = random_pet.pet.id
}

