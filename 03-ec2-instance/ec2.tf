resource "aws_instance" "app" { # aws_instance is a keyword, web is also a keyword, if u chang web to app, it ll b name of aws instanc ea sper terraform
  ami           = "ami-0f75a13ad2e340a58"  # argument
  instance_type = "t3.micro"

  tags = {
            Name = "MuazamKhan"
  }
}

output "instance_dns" {     # attribute
   value = aws_instance.app.private_dns
}

output "instance_arn" {     # attribute
   value = aws_instance.app.arn
}

resource "aws_security_group" "allow_tls" {
  name        = "b56_allow_tls"
  description = "B56 Allow TLS inbound traffic"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}