# Build Dokcer Image

```bash
docker build -t cenylcz/cenylcz-db:1.0.0 .
```

## Run with Kubernets

```bash
kubectl apply -f cenylcz-db-secret.yaml
kubectl apply -f cenylcz-db-pv.yaml 
kubectl apply -f cenylcz-db-pvc.yaml 
kubectl apply -f cenylcz-db-deployment.yaml
kubectl apply -f cenylcz-db-service.yaml
```
## Delete Kubernetes deployment
```bash
kubectl delete -f cenylcz-db-service.yaml
kubectl delete -f cenylcz-db-deployment.yaml 
kubectl delete -f cenylcz-db-pvc.yaml 
kubectl delete -f cenylcz-db-pv.yaml 
```

## Helm Install
```
helm install {name} .
```
