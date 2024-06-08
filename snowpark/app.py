from snowflake.snowpark import Session
from datetime import datetime
from snowflake.snowpark.functions import lit

def return_simple_table(session):
    # 既存のテーブルを読み込み
    df = session.table("simple_table")
    
    session.sql("INSERT INTO simple_table (id, value, created_at) VALUES (UNIFORM(1, 100, RANDOM()), RANDOM_STRING(10), CURRENT_TIMESTAMP())").collect()
    return 'ok'

