SELECT
    a.name,
    a.country,
    booked_at::DATE
FROM apartments as a
LEFT JOIN bookings as b
ON a.booking_id = b.booking_id
ORDER BY a.apartment_id
LIMIT 10;