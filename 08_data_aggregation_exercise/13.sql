SELECT COUNT(CASE WHEN department_id = 1 THEN 1) AS "Engineering",
       COUNT(CASE WHEN department_id = 2 THEN 1) AS "Tool Design",
       COUNT(CASE WHEN department_id = 3 THEN 1) AS "Sales",
       COUNT(CASE WHEN department_id = 4 THEN 1) AS "Marketing",
       COUNT(CASE WHEN department_id = 5 THEN 1) AS "Purchasing",
       COUNT(CASE WHEN department_id = 6 THEN 1) AS "Research and Development",
       COUNT(CASE WHEN department_id = 7 THEN 1) AS "Production"
FROM employees;
