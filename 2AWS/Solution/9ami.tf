
# To get the latest AMI via Terraform:

# 9.1: Do validate + plan with just this:
#data "aws_ami" "get-ami" {
#}

# See the value:
#output "ami" {
#  value = data.aws_ami.get-ami
#}

# We get: Error: Returned >1 result. Try `most_recent` true.

# 9.2: So now we know what argument is required:
#data "aws_ami" "get-ami-latest" {
#  most_recent = true
#}

#output "ami-latest" {
#  value = data.aws_ami.get-ami-latest
#}

# 9.3: Filter to get a relevant AMI:
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu*gp3*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#output "ubuntu-ami" {
#  value = data.aws_ami.ubuntu
#}


# 9.4: Finally we can manage an instance with latest Ubuntu:
resource "aws_instance" "my-ubuntu-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

