resource "digitalocean_kubernetes_cluster" "k8s_iniciativa_devops" {
  name    = var.cluster_name
  region  = var.cluster_region
  version = "1.22.8-do.1"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}

resource "local_file" "kube_config" {
  content  = digitalocean_kubernetes_cluster.k8s_iniciativa_devops.kube_config.0.raw_config
  filename = "kube_config.yml"
}
