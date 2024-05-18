CREATE TABLE company_chart AS
SELECT concat(first_name, ' ', last_name) as full_name,
       job_title,
       department_id,
       manager_id
FROM employees;