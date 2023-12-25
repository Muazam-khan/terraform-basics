resource "aws_instance" "app" { # aws_instance is a keyword, web is also a keyword, if u chang web to app, it ll b name of aws instanc ea sper terraform
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}