provider "aws" {
 region = "ap-south-1"
 access_key = "AKIAV4HVQ5A4EBPLTF4M"
 secret_key = file("../../thiruvukol")
}

resource "aws_instance" "firstInstanceAWS" {
ami = "ami-01216e7612243e0ef"
instance_type = "t2.micro"
}


output "firstInstanceAWSPubicId" {
  value = aws_instance.firstInstanceAWS.public_ip
}
