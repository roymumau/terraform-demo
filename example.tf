provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-2051294a"
    instance_type = "t2.micro"
    subnet_id = "subnet-021ab828"
    vpc_security_group_ids = ["sg-9d7bc4e5"]
    associate_public_ip_address = false
    key_name = "roy-dev"

    user_data = "${file("testfile")}"
}

