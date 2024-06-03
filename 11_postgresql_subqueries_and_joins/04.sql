SELECT
    b.booking_id,
    a.name AS apartment_owner,
    a.apartment_id,
    concat(c.first_name, ' ', c.last_name) AS customer_name
FROM bookings as b
FULL JOIN apartments as a
    on b.booking_id = a.booking_id
FULL JOIN customers as c
ON b.customer_id = c.customer_id
ORDER BY booking_id, apartment_owner, customer_name
;