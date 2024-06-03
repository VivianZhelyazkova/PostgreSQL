SELECT
    COUNT(*)AS count
FROM bookings as b
JOIN customers as c
USING (customer_id)
WHERE c.last_name LIKE 'Hahn'

;