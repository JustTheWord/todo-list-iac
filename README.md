# todo-list-iac

<img src="./images/Kubernetes-Logo.png" width="300" align="right">

### Create an [AKS](https://learn.microsoft.com/en-us/azure/aks/what-is-aks) cluster :

_There are different ways to install it (Azure CLI / Terraform / Manually),_
_But we recommend you to use Azure CLI + Terraform to deploy the cluster._

1. **[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)**

2. **[Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)**

3. **[Install `kubectl` locally, use the `az aks install-cli` command](https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-install-cli)**

### Guides:

1. [Guide to setup your cluster via Azure CLI + Terraform](./terraform/)

2. [Guide to setup your cluster manually via Web UI](./docs/AKS-Manual/README.md)

---

### Create a private [Azure Container Registry](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-get-started-azure-cli):

**1. Create a resource group**

**2. Create a container registry**

**3. Log in to registry**

**4. Push images to registry**

---

### Steps to deploy the application to AKS:

**1. Create a Namespace**

**2. Create a ConfigMap/Secret for Environment Variables**

**3. Create PersistentVolume and PersistentVolumeClaim**

**4. Create Deployments for Each Service**

**5. Create Services for Each Deployment**

---

### Change the configmap values before deployment:

<img src="./images/change_configmap.png" width="500" border='2px'>

---

### Application deployment:

```bash
kubectl apply -f app-namespace.yaml
kubectl apply -f app-configmap.yaml
kubectl apply -f postgres-pv.yaml
kubectl apply -f postgres-pvc.yaml
kubectl apply -f postgres-secret.yaml
kubectl apply -f redis-pv.yaml
kubectl apply -f redis-pvc.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f app-api.yaml
kubectl apply -f app-email-sender.yaml
kubectl apply -f app-scheduler.yaml
kubectl apply -f app-scheduler.yaml
kubectl apply -f redis-deployment.yaml
kubectl apply -f rabbitmq-deployment.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f app-api-service.yaml
kubectl apply -f redis-service.yaml
kubectl apply -f rabbitmq-service.yaml
```

---

### Application deployment via `aks-store-quickstart.yaml`:

```bash
kubectl apply -f aks-store-quickstart.yaml
```

---

### Deployment is successful:

```bash
namespace/application created
configmap/app-config created
persistentvolume/postgres-pv created
persistentvolumeclaim/postgres-pvc created
persistentvolume/redis-pv created
persistentvolumeclaim/redis-pvc created
deployment.apps/postgres created
deployment.apps/app-api created
deployment.apps/app-email-sender created
deployment.apps/app-scheduler created
deployment.apps/redis created
deployment.apps/rabbitmq created
service/postgres created
service/app-api created
service/redis created
service/rabbitmq created
```

---

<img src="./images/app_works.png" width="1000" border='2px'>
