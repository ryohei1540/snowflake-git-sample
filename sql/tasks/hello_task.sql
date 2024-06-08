CREATE OR REPLACE TASK hello_task
    WAREHOUSE = 'xsmall'
    SCHEDULE = 'USING CRON 1 * * * * UTC'
AS
    CALL hello();