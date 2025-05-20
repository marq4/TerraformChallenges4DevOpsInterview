
# 8.1: First try to create a new instance and validate:
#resource "aws_instance" "validate-test" {
#}

# Error: Missing required argument: ami, instance_type. 

# 8.2: So now we know what arguments are required: 
resource "aws_instance" "hardcoded-ami" {
  ami           = "ami-04f167a56786e4b09" # Linux, us-east-2. 
  instance_type = "t2.micro"              # Free tier
}

