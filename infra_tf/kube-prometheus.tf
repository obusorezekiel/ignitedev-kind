provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "kube-prometheus" {
  name       = "kube-prometheus-stack"
  namespace  = var.namespace
  version    = var.kube-version
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
  }
}