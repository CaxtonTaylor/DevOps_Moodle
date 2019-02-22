provider "aws" {
  alias                   = "ido"
  region                  = "us-east-1"
  shared_credentials_file = "/Users/afcorredor/.aws/credentials"
  profile                 = "terraform"
}
provider "aws" {
  alias                   = "caxton"
  region                  = "us-east-1"
  shared_credentials_file = "/Users/afcorredor/.aws/credentials"
  profile                 = "serveless_ido"

}
resource "aws_instance" "web" {
  provider = "aws.ido"
  associate_public_ip_address = "true"
  ami = "ami-02116101049c29dac"
  instance_type = "t2.nano"
  key_name = "idoProd"
  subnet_id = "subnet-0d296e50b0377120d"
  vpc_security_group_ids= ["sg-0c673642feedd4dbf", "sg-0ea6c67c3c546ed22","sg-03945e77a95b7c665"]
  provisioner "local-exec" {
    command = "echo ${aws_instance.web.public_ip}"
  }
    tags = {
    Name = "Terraform Moodle"
  }
}

resource "aws_route53_record" "test1" {
  provider = "aws.caxton"
  zone_id = "Z3TYJIBDK1XUQP"
  name    = "test1.idolearning.co"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}
