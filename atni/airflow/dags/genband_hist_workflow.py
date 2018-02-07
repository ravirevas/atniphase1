from __future__ import print_function
from builtins import range
#from airflow.operators import python_operator
#from airflow.operators import bash_operator
from airflow.operators import PythonOperator
from airflow.operators import BashOperator
from airflow.models import DAG
from datetime import datetime, timedelta
import smtplib
import time
from pprint import pprint

default_args = {
    'owner': 'airflow',
    'depends_on_past':False,
    'start_date': datetime.now()-timedelta(minutes=10),
    'email': ['vijay.datla@clairvoyantsoft.com'],
    'email_on_failure': True,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
    # 'queue': 'bash_queue',
    # 'pool': 'backfill',
    # 'priority_weight': 10,
    # 'end_date': datetime(2017, 1, 1),
}

dag = DAG(
    'genband--hist--workflow', default_args=default_args, schedule_interval="0 * * * *", start_date=datetime.now() - timedelta(minutes=10))


c = """
sh  $ATNI_REPO/shell_scripts/genband/run_genband_parse_process_hist.sh
"""

c1 = """
sh  $ATNI_REPO/shell_scripts/genband/run_genband_ftp_process_hist.sh
"""

c2 = """
sh  $ATNI_REPO/shell_scripts/genband/run_genband_post_parse_process_hist.sh
"""

pullFiles = BashOperator(
    task_id='genband--hist--pullFiles',
    bash_command=c1,
    dag=dag)

parseFiles = BashOperator(
    task_id='genband--hist--parseFiles',
    bash_command=c,
    dag=dag)

moveFilesToDatalake =  BashOperator(
    task_id='genband--hist--moveFilesToDataLake',
    bash_command=c2,
    dag=dag)


parseFiles.set_upstream(pullFiles)
moveFilesToDatalake.set_upstream(parseFiles)
