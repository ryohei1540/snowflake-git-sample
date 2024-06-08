from snowflake.snowpark import Session

def return_simple_table(session):
    # 既存のテーブルを読み込み
    INSERT INTO simple_table (id, value, created_at) SELECT UNIFORM(1, 100, RANDOM()), 'hoge', CURRENT_TIMESTAMP().collect()
    return 'ok'

