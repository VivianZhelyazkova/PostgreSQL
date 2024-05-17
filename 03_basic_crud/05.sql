UPDATE employees
SET salary = salary + 100
WHERE job_title = 'Manager'
RETURNING *;
-- SELECT * FROM employees
-- WHERE job_title = 'Manager';