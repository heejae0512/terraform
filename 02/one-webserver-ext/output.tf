output "public_ip" {
  value       = aws_instance.myinstance.public_ip
  description = "My EC2 Public IP"
}

variable "server_port" {
    default = 8080
}