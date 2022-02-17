# build
# publish docker image
# replace image version using kustomize or mannully in k8s yamel file for api and frontend
# minikube addons enable ingress
# run kubectl apply -k k8s
# minikube ip


cd api
docker build -t zarinfam/polling-api:0.0.1 .
docker push zarinfam/polling-api:0.0.1
cd ..

cd frontend
docker build -t zarinfam/polling-frontend:0.0.1 .
docker push zarinfam/polling-frontend:0.0.1
cd ..

------local deveopment using skaffold--------------
skaffold config set --global local-cluster true
skaffold init
skaffold dev