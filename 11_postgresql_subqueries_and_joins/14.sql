SELECT AVG(area_in_sq_km) as min_average_area
FROM countries
GROUP BY continent_code
ORDER BY min_average_area
LIMIT 1
;