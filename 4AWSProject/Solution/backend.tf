
terraform {
  backend "s3" {
    bucket = "my-tfstate-marq-4-29052025"
    key    = "terraform-state-file"
    region = "us-east-1"
  }
}

