
resource "aws_instance" "app-server" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "${var.app_region}-app-server"
  }
  depends_on = [aws_s3_bucket.static-content]
  subnet_id  = var.subnet-id
}


