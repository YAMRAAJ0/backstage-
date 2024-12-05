provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-0a313d6098716f372" 
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}


