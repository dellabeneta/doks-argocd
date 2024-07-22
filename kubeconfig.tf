resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.argocd.kube_config[0].raw_config
  filename = pathexpand("~/.kube/config")
}