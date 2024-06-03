SELECT mc.country_code,
       COUNT(m.mountain_range) as mountain_range_count
FROM mountains as m
         JOIN mountains_countries as mc
              ON m.id = mc.mountain_id
WHERE mc.country_code in ('US', 'RU', 'BG' )
GROUP BY mc.country_code
ORDER BY mountain_range_count DESC;