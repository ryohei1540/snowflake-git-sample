CREATE OR REPLACE TASK simple_task
    WAREHOUSE = 'xsmall'
    SCHEDULE = 'USING CRON 0 * * * * UTC'
AS
    CALL simple_procedure('This is from a task');