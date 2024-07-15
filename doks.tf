resource "digitalocean_kubernetes_cluster" "argocd" {
  name   = "argocd"
  region = "sfo3"
  version = "1.30.2-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 3

    taint {
      key    = "workloadKind"
      value  = "database"
      effect = "NoSchedule"
    }
  }
}