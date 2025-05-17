# Relational Database Performance Monitoring Report  

## Objective  

Track and improve system performance for the `Booking`, `User`, and `Property` tables.  

---  

## Tools Used  

- `EXPLAIN ANALYZE`: to profile execution and scan types of the query 

- `CREATE INDEX`: enhancing performance on WHERE, JOIN, and ORDER BY clauses  

---

## Queries Monitored  

### Query 1: Recent Confirmed Bookings  

```sql  
SELECT *  
FROM Booking  
WHERE status = 'Confirmed'  
  AND created_at >= NOW() - INTERVAL '30 days'  
ORDER BY created_at DESC;  
```

