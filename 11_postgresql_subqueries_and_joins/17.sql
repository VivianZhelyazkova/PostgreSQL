UPDATE countries
SET country_name = 'Burma'
WHERE country_name = 'Myanmar'
RETURNING *;

INSERT INTO monasteries(monastery_name, country_code)
VALUES ('Hanga Abbey', (SELECT country_code FROM countries WHERE country_name = 'Tanzania')),
('Myin-Tin-Daik' , (SELECT country_code FROM countries WHERE country_name = 'Burma'));

SELECT con.continent_name,
       c.country_name,
       COUNT(*) AS monasteries_count
FROM continents AS con
JOIN countries AS c
USING (continent_code)
JOIN monasteries AS m
USING (country_code)
WHERE NOT c.three_rivers
GROUP BY con.continent_name, c.country_name
ORDER BY monasteries_count DESC, c.country_name;




