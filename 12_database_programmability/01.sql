CREATE FUNCTION fn_full_name(IN first_name VARCHAR, IN last_name VARCHAR, OUT full_name VARCHAR)
AS
$$
    BEGIN
    if first_name IS NULL then
        full_name := INITCAP(last_name);
    ELSIF last_name IS NULL then
        full_name := INITCAP(first_name);
    ELSE
        full_name := INITCAP(CONVERT(first_name, ' ', last_name));
    END IF;
    END;
$$
    LANGUAGE plpgsql;