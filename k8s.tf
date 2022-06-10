resource "digitalocean_kubernetes_cluster" "k8s_iniciativa_devops" {
  name    = "k8s-iniciativa-devops"
  region  = "nyc1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}
