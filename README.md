# Local Airflow K8s Helm

Patcharanat P.

## Pre-requisites
1. Docker installed
2. Minikube installed
3. Helm installed

```
docker context use default
```

References:
1. Airflow Helm Chart
    - [Official Apache Airflow Helm Chart Documentation - Airflow Production Guide](https://airflow.apache.org/docs/helm-chart/stable/production-guide.html)
        - [Official airflow helm chart values.yaml for reference - Airflow Helm Chart GitHub](https://github.com/apache/airflow/blob/main/chart/values.yaml)
    - [User Community Documentation & Tutorials](https://github.com/airflow-helm/charts/tree/main/charts/airflow)
        - [Minikube Values.yaml Template](https://github.com/airflow-helm/charts/blob/main/charts/airflow/examples/minikube/custom-values.yaml)
        - [GKE Values.yaml Template](https://github.com/airflow-helm/charts/blob/main/charts/airflow/examples/google-gke/custom-values.yaml)
2. Official Airflow
    - [Setting webserver secret keys with best practices - Airflow Production Guide](https://airflow.apache.org/docs/helm-chart/stable/production-guide.html#webserver-secret-key)
        - [How to Kubernetes Secrets - Spacelift](https://spacelift.io/blog/kubernetes-secrets)
3. Airflow PV/PVC dags/logs for local development - Yoav Nordmann
    - [Airflow on K8s for local Development - Medium](https://medium.com/israeli-tech-radar/airflow-on-k8s-for-local-development-5c3ad0ab8e7d)
    - [GitHub Repo for helm chart - GitHub - Yoav Nordmann](https://github.com/YoavNordmann/local-dev-airflow/tree/master)
4. Kubernetes
    - [Kubernetes cluster's status is not ready - describing nodes - Stack Overflow](https://stackoverflow.com/questions/47107117/how-to-debug-when-kubernetes-nodes-are-in-not-ready-state)
    - [Customize Memory limits for Docker and led to Kubernetes on local machine - wslconfig - Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/wsl-config#configure-global-options-with-wslconfig)
    - [Set minikube resource allocation limits](https://stackoverflow.com/questions/52199737/minikube-default-cpu-memory)