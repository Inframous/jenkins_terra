resource "aws_instance" "web" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "jenkins-terra-ex" {
  bucket = "jenkins-terra-ex"
  tags = {
    Name        = "JenkinsTerra"
    Environment = "Example"
  }
}

resource "aws_s3_bucket_acl" "jenkins-terra-ex-acl" {
  depends_on = [aws_s3_bucket_ownership_controls.jenkins-terra-ex]

  bucket = aws_s3_bucket.jenkins-terra-ex.id
  acl    = "public-read"
}