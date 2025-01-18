minikube start

kubectl create namespace airflow

helm repo add apache-airflow https://airflow.apache.org

helm repo update

# create secrets for consistent webserver pods
kubectl apply -f k8s/airflow/secrets

# create persistent volume claims for dags and logs
kubectl apply -f k8s/airflow/volumes

# Mount Airflow components to minikube cluster (For Windows)
minikube mount ~/Desktop/<USER>/<PATH_TO_AIRFLOW_FOLDER>/airflow:/mnt/airflow

# install airflow with helm
helm upgrade \
    --install airflow apache-airflow/airflow \
    --version 1.15.0 \
    --namespace airflow \
    --values ./k8s/airflow/custom-values.yaml \
    --timeout 10m0s \
    --debug

# expose port airflow webserver
kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow