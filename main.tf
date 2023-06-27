provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAT2AJC3K6FFZVRHF2"
  secret_key = "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"
}  

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"

  
} 
