kubectl apply -f k8s 
kubectl create secret generic name --from-literal key=value

helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

kubectl create ingress demo-localhost --class=nginx --rule=demo.localdev.me/*=demo:80

kubectl set image Deployment/server-deployment server=devtodocontainer.azurecr.io/multi-server:v1


docker run -it -v C:/Users/ebaltazar/code\practicas/kubernetes/complex/k8s:/app ruby:2.4 sh
