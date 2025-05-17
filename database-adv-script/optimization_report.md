# Optimization Report

## Query Purpose

Retrieve all booking records along with associated user, property, and payment details.

---

## Original Query Analysis

- Joined 4 tables with no filtering
- Used SELECT * (retrieving unnecessary columns)
- No indexes resulted in sequential scans and higher execution time

---

## Optimization Strategy

- Added indexes on foreign key columns used in joins
- Replaced SELECT * with selected necessary columns
- Used INNER JOINs where relationships are required
- Left Payment as LEFT JOIN (since not all bookings are paid)

---

## Indexes Added

```sql
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
CREATE INDEX idx_property_host_id ON Property(host_id);
