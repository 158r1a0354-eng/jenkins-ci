output "ec2_public_ip" {
  description = "Public IP of the SRE EC2 instance"
  value       = aws_instance.sre_ec2.public_ip
}

