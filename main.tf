resource "aws_instance" "web" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}