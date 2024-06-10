SELECT v.name                                    AS volunteers,
       v.phone_number,
       REGEXP_REPLACE(v.address, '^ ?Sofia ?, ', '') AS address
FROM volunteers v
         JOIN
     volunteers_departments vd ON v.department_id = vd.id
WHERE vd.department_name = 'Education program assistant'
  AND v.address LIKE '%Sofia%'
ORDER BY v.name;