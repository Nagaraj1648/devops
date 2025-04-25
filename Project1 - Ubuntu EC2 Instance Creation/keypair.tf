resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("${path.module}/my-ec2-key.pub")
}