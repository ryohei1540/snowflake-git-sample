CREATE OR REPLACE PROCEDURE hello()
RETURNS TABLE()
LANGUAGE PYTHON
RUNTIME_VERSION='3.11'
PACKAGES=('snowflake-snowpark-python')
IMPORTS=('@git_sample/branches/main/snowpark/app.py')
HANDLER='app.return_simple_table';