-- User table indexes
CREATE INDEX idx_user_role ON [user](role);
CREATE INDEX idx_user_created_at ON [user](created_at);

-- Booking table indexes
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_booking_status ON booking(status);
CREATE INDEX idx_booking_start_end_date ON booking(start_date, end_date);
CREATE INDEX idx_booking_created_at ON booking(created_at);

-- Property table indexes
CREATE INDEX idx_property_host_id ON property(host_id);
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_price_per_night ON property(price_per_night);
CREATE INDEX idx_property_created_at ON property(created_at);

-- Measure performance before and after adding indexes by using Explain or Analyze commands

EXPLAIN ANALYZE
SELECT *
FROM booking
WHERE user_id = 'some-user-id'
    AND status = 'Confirmed'
ORDER BY created_at DESC;




