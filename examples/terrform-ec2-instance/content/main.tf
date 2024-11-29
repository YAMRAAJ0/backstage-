provider "aws" {
  region = var.aws_region
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "aws_region" {
  description = "AWS Region to deploy the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Use an appropriate AMI ID
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}



# provider "aws" {
#   region = var.aws_region
# }

# variable "instance_name" {
#   type = string
# }

# variable "aws_region" {
#   type = string
# }

# variable "instance_type" {
#   type = string
# }

# resource "aws_instance" "example" {
#   ami           = "ami-12345678" # Use an appropriate AMI ID
#   instance_type = var.instance_type
#   tags = {
#     Name = var.instance_name
#   }
# }






