
module "oregon-static-content-app" {
  source     = "../modules/static-content-app"
  app_region = var.region
  ami        = "ami-04999cd8f2624f834"
  subnet-id  = "subnet-070bb4ba6ccaabe9e"
}


