# todo-list-iac

## The basic steps to deploy the infrastructure are:

### Kubernetes steps:

**Create a Kubernetes cluster (Terraform / Mannually )?:**

...

**Main deployment:**

1. Postgres deployment:
   - PVC (Persistent Volume Claim)
   - Secret
   - Deployment

```bash
kubectl apply -f postgres/
```

2. Application deployment:

```bash
kubectl apply -f configmap.yaml
kubectl apply -f email-sender.yaml
kubectl apply -f scheduler.yaml
kubectl apply -f api.yaml
kubectl apply -f service-api.yaml
```
