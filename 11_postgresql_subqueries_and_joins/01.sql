SELECT
    concat(a.address, ' ', a.address_2) AS apartment_address,
    b.booked_for as nights
FROM apartments as a
JOIN bookings as b
ON a.booking_id = b.booking_id
ORDER BY a.apartment_id;