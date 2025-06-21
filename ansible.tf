resource "null_resource" "generate_ansible_inventory" {
  provisioner "local-exec" {
    command = <<EOT
echo "[vms]" > hosts.ini
%{ for ip in yandex_compute_instance.vm[*].network_interface[0].nat_ip_address ~}
echo "${ip}" >> hosts.ini
%{ endfor ~}
EOT
  }

  depends_on = [yandex_compute_instance.vm]
}
