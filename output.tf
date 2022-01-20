
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
    all:
      children:
        swarmanager:
          hosts:
            ${aws_instance.manager-VM.public_ip}
        swarmworker:
          hosts:
            ${aws_instance.worker-VM.public_ip}
        nginx:
          hosts:
            ${aws_instance.nginx-VM.public_ip}
                
      vars:
        ansible_user: ubuntu
        ansible_ssh_private_key_file: /home/jenkins/.ssh/MyKeyPai.pem
        ansible_python_interpreter: "/usr/bin/python3"
        ansible_ssh_common_args: '-o StrictHostKeyChecking=no'
   DOC
   filename = "ansible/inventory.yaml"
}
