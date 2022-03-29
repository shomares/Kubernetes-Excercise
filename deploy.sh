docker build -t shomare/multi-client:latest -t shomare/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t shomare/multi-server:latest -t shomare/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t shomare/multi-worker:latest -t shomare/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push shomare/multi-client:latest
docker push shomare/multi-server:latest 
docker push shomare/multi-worker:latest

docker push shomare/multi-client:$SHA
docker push shomare/multi-server:$SHA 
docker push shomare/multi-worker:$SHA

kubectl apply -f ./k8s/gc
kubectl set image deployments/client-deployment client=shomare/multi-client:$SHA 
kubectl set image deployments/server-deployment server=shomare/multi-server:$SHA 
kubectl set image deployments/worker-deployment worker=shomare/multi-worker:$SHA 
