# Partitioning Performance Report

## Objective

Improve the query performance on a heavily loaded `Booking` table by partitioning on `start_date`.

---

## Approach

- Used PostgreSQL native partitioning: `PARTITION BY RANGE (start_date)`

- Created partitions for the years of 2023, 2024 and 2025

- Created indexes on `user_id` in all partitions

- Executed a query that filters on a date range


---

## Query Tested

```sql

SELECT *

FROM Booking

WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';