SELECT
    a.name AS animal_name,
    EXTRACT(YEAR FROM a.birthdate) AS year_of_birth,
    at.animal_type
FROM
    animals a
JOIN
    animal_types at ON a.animal_type_id = at.id
WHERE
    a.owner_id IS NULL
    AND AGE('2022-01-01'::DATE, a.birthdate) < INTERVAL '5 years'
    AND at.animal_type <> 'Birds'
ORDER BY
    a.name ;