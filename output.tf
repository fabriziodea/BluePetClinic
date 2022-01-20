
output "nginx_Public_IP" {
    value = aws_instance.nginx-VM.public_ip
}

output "worker_Public_IP" {
    value = aws_instance.worker-VM.public_ip
}

output "manager_Public_IP" {
    value = aws_instance.manager-VM.public_ip
}

resource "local_file" "tf_ansible_vars_file_new" {
    content = <<-DOC
    Vars:
        NGINX_IP: ${aws_instance.nginx-VM.public_ip}
        Worker_IP: ${aws_instance.worker-VM.public_ip}
        Manager_IP: ${aws_instance.manager-VM.public_ip}
    DOC
  filename = "ansible/tf_ansible_vars_file.yml"
}
