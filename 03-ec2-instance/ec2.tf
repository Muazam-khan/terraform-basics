resource "aws_instance" "app" { # aws_instance is a keyword, web is also a keyword, if u chang web to app, it ll b name of aws instanc ea sper terraform
  ami           = "ami-0f75a13ad2e340a58"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}