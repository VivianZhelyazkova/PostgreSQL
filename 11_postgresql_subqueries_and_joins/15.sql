SELECT COUNT(*)
FROM countries AS c
LEFT JOIN mountains_countries AS m
   USING (country_code)
WHERE m.country_code IS NULL
;