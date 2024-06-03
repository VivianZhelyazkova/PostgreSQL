SELECT c.country_name,
       r.river_name
FROM countries as c
         LEFT JOIN countries_rivers as cr
              USING (country_code)
         LEFT JOIN rivers as r
                   ON cr.river_id = r.id
         JOIN continents as con
              USING (continent_code)
WHERE con.continent_name = 'Africa'
ORDER BY c.country_name
LIMIT 5;