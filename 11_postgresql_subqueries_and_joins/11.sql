SELECT
    mc.country_code,
    m.mountain_range,
    p.peak_name,
    p.elevation
FROM mountains as m
JOIN peaks as p
ON m.id = p.mountain_id
JOIN mountains_countries as mc
ON m.id = mc.mountain_id
WHERE p.elevation > 2835 AND mc.country_code = 'BG'
ORDER BY p.elevation DESC;