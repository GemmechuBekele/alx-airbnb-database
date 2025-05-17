-- 1. Non-Correlated Subquery: Properties with average rating > 4.0
SELECT
p.property_id,
p.host_id,
p.name AS property_name,
p.description,
p.location,
p.price_per_night,
p.created_at AS property_created_at,
p.update_at AS property_updated_at
FROM property p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) >= 4
);

-- 2. Correlated Subquery: Users (guests) who made more than 3 bookings
SELECT
u.user_id,
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
u.created_at AS user_created_at
FROM "user" u
WHERE (
    SELECT COUNT(*)
    FROM booking b
    WHERE b.user_id = u.user_id
) > 3;