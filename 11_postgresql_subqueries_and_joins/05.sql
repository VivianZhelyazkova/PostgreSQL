SELECT
    b.booking_id,
    c.first_name
FROM bookings as b
CROSS JOIN customers as c
ORDER BY first_name
;