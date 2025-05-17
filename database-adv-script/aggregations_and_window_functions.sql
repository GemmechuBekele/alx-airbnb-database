-- 1 Total bookings made by each user
SELECT
u.user_id,
u.first_name,
u.last_name,
COUNT(*) AS total_bookings
FROM "user" u
LEFT JOIN booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;

-- 2 Rank properties based on number of bookings
SELECT
p.property_id,
p.name AS property_name,
COUNT(b.booking_id) AS total_bookings,
RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM property p
LEFT JOIN booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY booking_rank DESC;
