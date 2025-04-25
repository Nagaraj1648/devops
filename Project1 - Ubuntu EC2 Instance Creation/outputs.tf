output "public_ip" {
  description = "Public IP of Jenkins EC2 instance"
  value       = aws_instance.app_server.public_ip
}