"""
# DAG Tester

1. Bullet X
2. Bullet Y
3. Bullet Z

"""
import datetime

from airflow import DAG
from airfow.operators.empty import EmptyOperator


default_config = {}

default_args = {}

with DAG(
    dag_id="my_dag_name",
    start_date=datetime.datetime(2024, 6, 1),
    schedule="0 1 * * *",
) as dag:
    
    start_task = EmptyOperator()

    end_task = EmptyOperator()

    start_task >> end_task
