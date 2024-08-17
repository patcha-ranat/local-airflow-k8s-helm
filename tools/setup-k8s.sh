minikube start

kubectl create namespace airflow

helm repo add apache-airflow https://airflow.apache.org

helm repo update

# create persistent volume claims for dags and logs
kubectl apply -f ./k8s/airflow/persistent-volume.yaml
kubectl apply -f ./k8s/airflow/persistent-volume-claim.yaml


# install airflow with helm
helm upgrade --install airflow charts/airflow --namespace airflow -f ./k8s/airflow/custom-values.yaml

# expose port airflow webserver
kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow