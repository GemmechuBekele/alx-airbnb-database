# Index Performance Analysis

## Query 1: Filter bookings by user_id and status

**Before Indexes**
- Execution Time: 50 ms
- Index Used: None

**After Indexes**
- Execution Time: 3 ms
- Index Used: idx_booking_user_id, idx_booking_status

---

## Query 2: Join Booking and Property on property_id

**Before Indexes**
- Execution Time: 120 ms
- Index Used: None

**After Indexes**
- Execution Time: 8 ms
- Index Used: idx_booking_property_id, idx_property_property_id


