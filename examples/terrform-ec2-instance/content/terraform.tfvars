# instance_name = "my-instance"
# aws_region    = "us-east-1"
# instance_type = "t2.micro"


instance_name="${{ values.instanceName }}" 
aws_region="${{ values.awsRegion }}"
instance_type="${{ values.instanceType }}"
