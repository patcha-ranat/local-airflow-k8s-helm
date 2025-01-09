minikube start

kubectl create namespace airflow

helm repo add apache-airflow https://airflow.apache.org

helm repo update

kubectl apply -f k8s/airflow/secrets

# install airflow with helm
helm upgrade \
    --install airflow apache-airflow/airflow \
    --version 1.15.0 \
    --namespace airflow \
    --values ./k8s/airflow/custom-values.yaml \
    --timeout 10m0s \
    --debug

# create persistent volume claims for dags and logs
kubectl apply -f ./k8s/airflow/volumes

# expose port airflow webserver
kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow