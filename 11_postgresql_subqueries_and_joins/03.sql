SELECT
    b.booking_id,
    b.starts_at::DATE,
    b.apartment_id,
    concat(c.first_name,' ', c.last_name) as customer_name
FROM bookings as b
RIGHT JOIN customers as c
ON b.customer_id = c.customer_id
ORDER BY customer_name
LIMIT 10;