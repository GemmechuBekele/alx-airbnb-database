-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u1-1234-0001', 'Gemmechu', 'Bekele', 'gemmechu@gmail.com', 'hashed_pge1', '+251911457819', 'admin'),
('u2-1234-0002', 'Leli', 'Megersa', 'leli@gmail.com', 'hashed_ple2', '+251917457817', 'host'),
('u3-1234-0003', 'Chaltu', 'Tola', 'chaltu@gmail.com', 'hashed_pch3', '+251911547810', 'guest'),
('u4-1234-0004', 'Robera', 'Fenanen', 'robera@gmail.com', 'hashed_pro4', '+251910637870', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES
('p1-2345-0001', 'u2-1234-0002', 'Cottage', 'A peaceful cottage', 'Bishoftu, Ethiopia', 120.00),
('p2-2345-0002', 'u3-1234-0003', 'Loft', 'Modern loft ', 'Bekoji, Ethiopia', 250.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1-3456-0001', 'p1-2345-0001', 'u1-1234-0001', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('b2-3456-0002', 'p2-2345-0002', 'u1-1234-0001', '2025-07-10', '2025-07-15', 1250.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay1-4567-0001', 'b1-3456-0001', 480.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r1-5678-0001', 'p1-2345-0001', 'u1-1234-0001', 5, ' Very quiet and clean.'),
('r2-5678-0002', 'p2-2345-0002', 'u1-1234-0001', 4, 'Noisy at night.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m1-6789-0001', 'u1-1234-0001', 'u2-1234-0002', 'Hi, is your cottage available in December?'),
('m2-6789-0002', 'u2-1234-0002', 'u1-1234-0001', 'Yes, it is available from Dcember 1st.');