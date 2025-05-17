-- 1. INNER JOIN: Get all bookings and the users who made them
SELECT
b.booking_id,
b.property_id,
b.start_date,
b.end_date,
b.total_price,
b.status,
b.created_at AS booking_created_at,
u.user_id,
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
u.created_at AS user_created_at
FROM booking b INNER JOIN "user" u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Get all properties and their reviews (even if no reviews)

SELECT 
p.property_id,
p.host_id,
p.name AS property_name,
p.description,
p.location,
p.price_per_night,
p.created_at AS property_created_at,
p.update_at AS property_updated_at,
r.review_id,
r.user_id AS reviewer_id,
r.rating,
r.comment,
r.created_at AS review_created_at
FROM property p 
LEFT JOIN review r 
ON p.property_id = r.property_id
ORDER BY
p.name ASC,
r.created_at ASC;

-- 3. FULL OUTER JOIN: All users and all bookings (even if unmatched)
-- Query for PostgreSQL (which supports FULL OUTER JOIN natively)

SELECT
u.user_id,
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
u.created_at AS user_created_at,
b.booking_id,
b.property_id,
b.start_date,
b.end_date,
b.total_price,
b.status,
b.created_at AS booking_created_at
FROM "user" u FULL OUTER JOIN booking b ON u.user_id = b.user_id;