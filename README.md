### My Ignite.dev Submission ###

## Task instructions for DevOps Intern Role

### Setup a kubernetes cluster using kind 


1. I Wrote a simple bash script that deploys a [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)  cluster locally
2. I downloaded the kubeconfig for the cluster and store in a safe place.

### Deploy a sample Node.js app using terraform

1. Within the project folder, I dockerize a simple hello world [express](https://expressjs.com/en/starter/hello-world.html) and deploy to dockerhub. You can find the app in the /app directory

2. Created a kubernetes deployment manifest to deploy to deploy the Node.js to the kind cluster. The manifest files are in the /k8s-manifest directory

3. using the [kubectl terraform provider](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs), I wrote a terraform code to deploy the kubectl manifest to the kind cluster. The Infra code is found on the /infra_tf directory

### Bonus

1. Using the [kube-prometheus stack](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md), using [terraform helm provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs), I setup monitoring and observability for the prometheus cluster.



   