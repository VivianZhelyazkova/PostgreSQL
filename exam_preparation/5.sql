SELECT  CONCAT(o.name, ' - ', a.name) AS owner_animal,
       o.phone_number,
       ac.cage_id
FROM owners o
         JOIN
     animals a ON o.id = a.owner_id
         JOIN
     animal_types at ON a.animal_type_id = at.id
         JOIN
     animals_cages ac ON a.id = ac.animal_id
WHERE at.animal_type = 'Mammals'
ORDER BY o.name,
         a.name DESC;