
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
          managers:
             hosts:
               "{{ Manager_IP }}"
          workers:
            hosts:
              "{{ Worker_IP }}"
           nginx:
            hosts:
                "{{ NGINX_IP }}"
                
       vars:
        ansible_user: ubuntu
        ansible_ssh_private_key_file: '~/.ssh/MyKeyPai.pem'
        ansible_python_interpreter: "/usr/bin/python3"
        ansible_ssh_common_args: '-o StrictHostKeyChecking=no'
   DOC
   filename = "ansible/inventory.yaml"
}
