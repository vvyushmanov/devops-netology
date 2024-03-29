locals {
    master-ip = yandex_compute_instance.master.network_interface[0].ip_address
    master-nat-ip = yandex_compute_instance.master.network_interface[0].nat_ip_address
    worker1-ip = yandex_compute_instance.worker1.network_interface[0].ip_address
    worker1-nat-ip = yandex_compute_instance.worker1.network_interface[0].nat_ip_address
    worker2-ip = yandex_compute_instance.worker2.network_interface[0].ip_address
    worker2-nat-ip = yandex_compute_instance.worker2.network_interface[0].nat_ip_address
    lb-ip = yandex_lb_network_load_balancer.k8s-cplane.listener.*.external_address_spec[0].*.address[0]
}

resource "local_file" "inventory" {
  filename = "hosts.yml"
  content = templatefile("hosts.yml.tftpl",
    {
        master-nat-ip = local.master-nat-ip,
        master-local-ip = local.master-ip,
        worker1-nat-ip = local.worker1-nat-ip,
        worker1-local-ip = local.worker1-ip,
        worker2-nat-ip = local.worker2-nat-ip,
        worker2-local-ip = local.worker2-ip,
        lb-ip = local.lb-ip
    }
  )
}

output "k8s-apiserver" {
  value = local.lb-ip
}

output "main-ip" {
  value = yandex_alb_load_balancer.k8s-l7-balancer.listener.*.endpoint[0].*.address[0].*.external_ipv4_address[0].*.address[0]
}