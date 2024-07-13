# Create AKS using Terraform

<img src="../images/AKS-Terraform/logo_terraform.png" width="100" align="right">

### Terraform code

**[terraform-aks/](../terraform-aks/)**

### Pre-requisites:

1. **[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)**

2. **[Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)**

3. **[Install `kubectl` locally, use the `az aks install-cli` command](https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-install-cli)**

### Steps to create AKS using Terraform:

1. **Initialize terraform**

2. **Plan terraform changes**

3. **Deploy terraform changes**

4. **Set new k8s context**

5. **Check the context**

_You can also import to your state already existed resources using [`terraform import`](https://www.terraform.io/docs/cli/import/index.html) command._

---

### Initialize terraform:

```bash
terraform init
```

### Plan terraform changes:

```bash
terraform plan -out tfplan
```

### Deploy terraform changes:

```bash
terraform apply tfplan
```

### Set new k8s context:

```bash
az aks get-credentials --name <cluster-name> --resource-group <resource-group-name>
```

### Check the context:

```bash
kubectl config get-contexts`
```

<kbd>
<img src="../images/AKS-Terraform/check_k8s_context.png" width="700">
</kbd>

---

### Verify the pods:

```bash
kubectl get pods -n <namespace>
```

<kbd>
  <img src="../images/AKS-Terraform/k9s_verify_pods.png" width="800">
</kbd>
