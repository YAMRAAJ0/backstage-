provider "aws" {
  region = "${{ values.awsRegion }}"
}

resource "aws_instance" "${{ values.instanceName }}" {
  ami           = "ami-0a313d6098716f372" 
  instance_type = "${{ values.instanceType }}"
  tags = {
    Name = "${{ values.instanceName }}"
  }
}


