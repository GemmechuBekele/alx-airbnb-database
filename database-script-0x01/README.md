# database Schema
## 📁 Directory: `database-script-0x01/`
This folder contains the SQL script of the Air bnb like application and its parts table usages , keys, constraints and index logic are defined in db specification


## 📜 Files
- **`schema.sql`** –  SQL script which consist all create table commands along with constraints.
- **`README.md`** –  Document which describes the schema and db design.



## 🧱 Tables Defined

### User
- user_id ( UUID Primary Key)
- first_name, last_name
- email (UNIQUE)
- password_hash
- phone_number(NULLABLE)
- role ENUM(guest, hhost , admin)
- created_at TIMESTAMP


### Property
- property_id( UUID Primary Key)
- host_id (FK->user)
- name, description ,location
- price_per_night
- Carated_at , updated_at


### Booking
- booking_id (UUID Primary Key)
- property_id (FK ->Property)
- user_id (FK ->user)
- start_date , end_date
- total_price
- status ENUM(pending, Confirmed, canceled)
- created_at


### Payment

- payment_id (uuid, Primary Key)
- booking_id (FK->Booking)
- amount
- payment_method ENUM (Credit_card, Paypal, Stripe)
- payment_date


### Review

- review_id (UUID, Primary Key)
- property_id (FK → Property)
- user_id (FK → User)
- rating (1–5, check constraint)
- comment
- created_at

### Message

- message_id (UUID, Primary Key)
- sender_id (FK → User)
- recipient_id (FK → User)
- message_body
- sent_at

---

## 🔐 Constraints & Indexing

- **Primary Keys** on all tables using UUIDs
- **Foreign Keys** to maintain referential integrity
- **Unique constraint** on `email`
- **Check constraint** for rating range (1 to 5)
- **Indexed columns**: user_id, property_id, booking_id, email

---

## ⚙️ How to Use

To execute the schema:
``` bash
mysql -u your_username -p your_database < schema.sql
```

