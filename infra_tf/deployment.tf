resource "kubernetes_deployment" "node_deploy" {
  metadata {
    name = "ignite-dev"
    labels = {
      app = "ignite-dev"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "ignite-dev"
      }
    }

    template {
      metadata {
        labels = {
          app = "ignite-dev"
        }
      }

      spec {
        container {
          image = "obusorezekiel/node-web-app"
          name  = "ignite-dev"

          port {
            container_port = 8080
          }
        }
      }
    }
  }
}