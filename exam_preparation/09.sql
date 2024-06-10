CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(
    IN animal_name VARCHAR(30), OUT owner_name VARCHAR(50)
)
    LANGUAGE plpgsql
AS
$$
BEGIN

    SELECT o.name
    INTO owner_name
    FROM animals a
             JOIN
         owners o ON a.owner_id = o.id
    WHERE a.name = animal_name;
    IF owner_name IS NULL THEN
        owner_name := 'For adoption';
    END IF;
END;
$$;
