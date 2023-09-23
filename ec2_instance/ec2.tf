terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"  
  access_key = "AKIAQ5UGFN4CIPZ7N7X5"
  secret_key = "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"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-08abb3eeacc61972d" 
  instance_type = "t2.micro"
}
output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}