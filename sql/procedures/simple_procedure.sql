CREATE OR REPLACE PROCEDURE simple_procedure(value VARCHAR)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO simple_table (id, value, created_at) VALUES (9999,value, CURRENT_TIMESTAMP());
    RETURN 'Insert successful';
END;
$$