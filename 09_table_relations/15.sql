SELECT COUNT(*) AS countries_without_rivers
FROM countries c
LEFT JOIN countries_rivers cr ON c.country_code = cr.country_code
WHERE cr.river_id IS NULL;
