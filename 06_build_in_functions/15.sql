UPDATE countries
SET iso_code = upper(left(country_name, 3))
WHERE iso_code IS NULL
;
