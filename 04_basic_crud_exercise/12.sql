SELECT concat(first_name, ' ', last_name) as full_name,
       job_title,
       salary
FROM employees
WHERE salary in (12500, 14000, 23600, 25000)
ORDER BY salary DESC;