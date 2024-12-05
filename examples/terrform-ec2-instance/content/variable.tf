variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "aws_region" {
  description = "AWS Region to deploy the instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}
