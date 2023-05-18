resource "aws_instance" "web" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "jenkins-terra-ex" {
  bucket = "jenkins-terra-ex"
  acl    = "public-read"
  tags = {
    Name        = "JenkinsTerra"
    Environment = "Example"
  }
}