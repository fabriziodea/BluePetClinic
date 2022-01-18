locals {
    nginx = templatefile("template.tpl", {
        nginx_Public_IP = aws_instance.nginx-VM.public_ip, 
    })
}

output "nginx_Public_IP" {
    value = local.nginx
}
locals {
    worker = templatefile("template.tpl", {
        worker_Public_IP = aws_instance.worker-VM.public_ip, 
    })
}
output "worker_Public_IP" {
    value = local.worker
}
locals {
    manager = templatefile("template.tpl", {
        manager_Public_IP = aws_instance.manager-VM.public_ip, 
    })
}
output "manager_Public_IP" {
    value = local.manager
}