"""
# DAG Tester

1. Bullet X
2. Bullet Y
3. Bullet Z

"""
import datetime

from airflow.models import DAG
from airflow.operators.empty import EmptyOperator


DAG_ID = "my_dag_name"

default_config = {}

# Airflow DAG
default_dag_args = {
    "owner": "kde",
    "email": "kde@kde.com",
    "doc_md": __doc__,
    "default_view": "grid",
    "retries": 2,
    "retry_delay": datetime.timedelta(minutes=5),
    "depends_on_past": False
}
    
with DAG(
    dag_id=DAG_ID,
    start_date=datetime.datetime(2025, 1, 15),
    schedule="0 1 * * *",
    catchup=False,
    default_args=default_dag_args,
    tags=["de"]
) as dag:
    
    start_task = EmptyOperator(task_id="start")

    end_task = EmptyOperator(task_id="end")

    start_task >> end_task
