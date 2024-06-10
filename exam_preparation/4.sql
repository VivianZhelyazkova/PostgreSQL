SELECT
    o.name as owner,
    COUNT(*) AS count_of_animals
FROM owners AS o
         JOIN animals AS a
              ON o.id = a.owner_id
GROUP BY o.name
ORDER BY count_of_animals DESC ,owner
LIMIT 5
;