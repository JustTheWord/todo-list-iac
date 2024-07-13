# Create AKS, ACR using Terraform

<img src="../images/AKS-Terraform/logo_terraform.png" width="100" align="right">

### Pre-requisites:

1. **[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)**

2. **[Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)**

3. **[Install `kubectl` locally, use the `az aks install-cli` command](https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-install-cli)**

### Steps to create AKS, ACR using Terraform:

1. **Login to Azure CLI**

2. **Initialize terraform**

3. **Plan terraform changes**

4. **Deploy terraform changes**

5. **Set the new k8s context**

6. **Verify k8s pods**

7. **Verify ACR**

_You can also import to your state already existed resources using [`terraform import`](https://www.terraform.io/docs/cli/import/index.html) command._

---

### Login to Azure CLI:

```bash
az login
```

<kbd>
  <img src="../images/AKS-Terraform/az_login.png" width="800">
</kbd>

### Initialize terraform:

```bash
terraform init
```

<kbd>
  <img src="../images/AKS-Terraform/terraform_init.png" width="800">
</kbd>

### Plan terraform changes:

```bash
terraform plan -out tfplan
```

<p float="left">
  <kbd>
  <img src="../images/AKS-Terraform/terraform_plan.png" width="800" />
  </kbd>
  <kbd>
  <img src="../images/AKS-Terraform/terraform_plan_aks_created.png" width="800" />
  </kbd>
  <kbd>
  <img src="../images/AKS-Terraform/terraform_plan_acr_created.png" width="800" />
  </kbd>
</p>

### Deploy terraform changes:

```bash
terraform apply tfplan
```

<p float="left">
  <kbd>
  <img src="../images/AKS-Terraform/terraform_apply.png" width="800" />
  </kbd>
  <kbd>
  <img src="../images/AKS-Terraform/terraform_apply_successful.png" width="800" />
  </kbd>
</p>

### Set new k8s context:

```bash
az aks get-credentials --name <cluster-name> --resource-group <resource-group-name>
```

<kbd>
  <img src="../images/AKS-Terraform/set_new_k8s_context.png" width="800">
</kbd>

### Check the context:

```bash
kubectl config get-contexts`
```

<kbd>
<img src="../images/AKS-Terraform/check_k8s_context.png" width="800">
</kbd>

---

### Verify k8s pods:

```bash
kubectl get pods -n <namespace>
```

<kbd>
  <img src="../images/AKS-Terraform/k9s_verify_pods.png" width="800">
</kbd>

### Verify ACR:

```bash
az acr list -o table
```

<kbd>
  <img src="../images/AKS-Terraform/verify_acr.png" width="800">
</kbd>
