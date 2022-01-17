output "Public_IP" {
    value = aws_instance.nginx-VM.public_ip
}
output "Public_IP" {
    value = aws_instance.worker-VM.public_ip
}
output "Public_IP" {
    value = aws_instance.manager-VM.public_ip
}
