from snowflake.snowpark import Session
from datetime import datetime
from snowflake.snowpark.functions import lit

def return_simple_table(session):
    # 既存のテーブルを読み込み
    df = session.table("simple_table")
    
    # 新しい行をDataFrameとして作成
    new_row = session.create_dataframe([[1, 'New Name', datetime.now()]], schema=["id", "name", "created_at"])
    
    # 新しい行を既存のDataFrameに追加
    df = df.union(new_row)
    
    return df

if __name__ == "__main__":
    session = Session.builder.getOrCreate()
    return_simple_table(session).show()
