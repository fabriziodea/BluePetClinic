
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
    NGINX_IP = ${nginx_Public_IP}
    Worker_IP = ${worker_Public_IP}
    Manager_IP = ${manager_Public_IP}
    DOC
  filename = "./tf_ansible_vars_file.yml"
}
