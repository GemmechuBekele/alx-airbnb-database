# 📂 SQL Join Queries — Advanced Airbnb Clone Database

This script (`joins_queries.sql`) combines various forms of **SQL JOIN** to derive distinct associations within users, bookings, properties, and reviews in an Airbnb_database.

---

## 📌 Tables Used

### 🔹 `user`

- `user_id` (UUID, Primary Key)
- `first_name`, `last_name`, `email`, `password_hash`
- `phone_number` (nullable)
- `role` (ENUM: guest, host, admin)
- `created_at`

### 🔹 `booking`

- `booking_id` (UUID, Primary Key)
- `property_id` (FK → property)
- `user_id` (FK → user)
- `start_date`, `end_date`
- `total_price`
- `status` (ENUM: pending, confirmed, canceled)
- `created_at`

### 🔹 `property`

- `property_id` (UUID, Primary Key)
- `host_id` (FK → user)
- `name`, `description`, `location`
- `price_per_night`
- `created_at`, `updated_at`

### 🔹 `review`

- `review_id` (UUID, Primary Key)
- `property_id` (FK → property)
- `user_id` (FK → user)
- `rating` (1–5, check constraint)
- `comment`
- `created_at`

---

## ✅ SQL Queries

### 1️⃣ INNER JOIN — All Bookings and Their Users

This query returns every booking along with the users who made each booking.

```sql
SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,
    u.role
FROM booking b
INNER JOIN "user" u ON b.user_id = u.user_id;
```

### 2️⃣ LEFT JOIN — All Properties and Their Reviews (Even Without Reviews)

```sql
SELECT 
    p.property_id,
    p.name AS property_name,
    p.description,
    p.location,
    p.price_per_night,
    p.created_at AS property_created_at,
    r.review_id,
    r.user_id AS reviewer_id,
    r.rating,
    r.comment,
    r.created_at AS review_created_at
FROM property p
LEFT JOIN review r ON p.property_id = r.property_id;
```

### 3️⃣ FULL OUTER JOIN — All Users and All Bookings
    
    ```sql
    SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM "user" u
FULL OUTER JOIN booking b ON u.user_id = b.user_id;
```

## 📂 `File Structure`
alx-airbnb-database/

└── database-adv-script/

    ├── joins_queries.sql   # SQL join queries

    └── README.md           

## 🧪 `Tested On`
✅ PostgreSQL 13+

## 📬 `Author`
Contact: Gemmechu Bekele ```