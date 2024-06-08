CREATE OR REPLACE PROCEDURE simple_procedure()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO simple_table (id, value, created_at) VALUES (9999, 'hoge', CURRENT_TIMESTAMP());
    RETURN 'Insert successful';
END;
$$