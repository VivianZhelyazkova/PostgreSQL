CREATE VIEW view_addresses AS
SELECT concat(e.first_name, ' ', e.last_name) as full_name,
       e.department_id,
       concat(a.number, ' ', a.street)        AS address
FROM employees AS e
         JOIN addresses as a on e.address_id = a.id
ORDER BY address
; 
