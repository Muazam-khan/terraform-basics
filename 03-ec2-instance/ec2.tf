resource "aws_instance" "app" { # aws_instance is a keyword, web is also a keyword, if u chang web to app, it ll b name of aws instanc ea sper terraform
  ami           = "ami-06911ef5687b5d1ad"  # argument
  instance_type = "t3.micro"

  tags = {
            Name = "MuazamKhan"
  }
}

# output "instance_dns" {     # attribute
#    value = "aws_instance.app.private_dns"
# }

# output "instance_arn" {     # attribute
#    value = "aws_instance.app.arn"
# }