provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-b8b061d0"
    instance_type = "t1.micro"
}

