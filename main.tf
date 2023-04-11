provider "aws" {
  region = "us-west-1"
}
module "instance" {
  source  = "app.terraform.io/manu7/instance/aws"
  version = "1.0.0"
  # insert required variables here
 # ec2 instance
  
  ami_id                           = "ami-09c5c62bac0d0634e"
  instance_type                    = "t2.micro"
  subnet1_id                       = "subnet-099a9035039d6feba"
  security_group1                  = ["sg-06749b1d6761d810d"]
  key_name                         = "key"
  instance1_name                   = "web-ec2"
  subnet2_id                       = "subnet-0e0d6acfd55340cee"
  security_group2                  = ["sg-03a70ada11e4866ee"]
  instance2_name                   = "app-ec2"
  associate_public_ip_address      = "true"

  #AMI 1
  web_ami_name                     = "web-ami"
  web_ami_description              = "Example EC2 web image"
  architecture                     = "x86_64"
  virtualization_type              = "hvm"
  root_device_name                 = "/dev/sda1"
  device_name                      = "/dev/sda1"
  delete_on_termination            = "true"

  #AMI 2
  app_ami_name                     = "app-ami"
  app_ami_description              = "Example EC2 app image"

}