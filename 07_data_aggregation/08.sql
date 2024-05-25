SELECT id      as employee_id,
       first_name,
       last_name,
       salary,
       department_id,
       CASE department_id
           WHEN 1 THEN 'Management'
           WHEN 2 THEN 'Kitchen Staff'
           WHEN 3 THEN 'Service Staff'
           ELSE 'Other'
       END as department_name

FROM employees
ORDER BY employee_id;