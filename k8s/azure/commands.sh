kubectl apply -f k8s 
kubectl create secret generic name --from-literal key=value

helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

kubectl create ingress demo-localhost --class=nginx --rule=demo.localdev.me/*=demo:80

kubectl set image Deployment/server-deployment server=devtodocontainer.azurecr.io/multi-server:v1
