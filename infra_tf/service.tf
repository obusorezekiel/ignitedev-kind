resource "kubernetes_service" "node-service" {
  metadata {
    name = "ignite-dev"
  }
  spec {
    selector = {
      App = "ignite-dev"
    }
    port {
      node_port   = 30201
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}