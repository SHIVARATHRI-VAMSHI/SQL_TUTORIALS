USE cdg_hyd_jfs_058;

SELECT * FROM hotel_rooms;

INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES (101, 'SINGLE', 1, 1, 1, 2500.00, 'Available', TRUE, FALSE, NULL);

INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES('102', 'DOUBLE', 1, 2, 3, 4200.00, 'OCCUPIED', TRUE, FALSE, 'City view'),  
('201', 'DELUXE', 2, 1, 2, 6500.00, 'Reserved', TRUE, FALSE, 'Balcony');

INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES('301', 'SUITE', 3, 2, 4, 12000.00, 'Available', TRUE, FALSE, 'Sea view'),  
('T99', 'SINGLE', 9, 1, 1, 1000.00, 'MAINTENANCE', FALSE, FALSE, 'Training room') ;

-- zero beds
INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('103', 'SINGLE', 1, 0, 3, 4500.00, 'Available', TRUE, FALSE, '3BED');

-- zero occupancy
INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('304', 'DOUBLE', 3, 4, 0, 5600.00, 'OCCUPIED', TRUE, FALSE, 'City view');

-- zero price
INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('405', 'DELUXE', 4, 2, 3, 0.00, 'Reserved', TRUE, FALSE, 'Balcony');

-- availability cleaning
INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('104', 'SINGLE', 1, 1, 1, 1500.00, 'CLEANING', TRUE, FALSE, NULL);

-- duplicate room number
INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('101', 'DELUXE', 1, 2, 3, 3700.00, 'OCCUPIED', TRUE, FALSE, 'Sea view');

UPDATE hotel_rooms SET price_per_night = price_per_night * 1.1 WHERE room_type = 'SUITE';

UPDATE hotel_rooms SET availability_status = 'AVAILABLE', notes = 'Cleaning completed' WHERE room_number = '102';

UPDATE hotel_rooms SET max_occupancy = 3, price_per_night = 7000.00 WHERE room_number = '201';

UPDATE hotel_rooms SET notes = 'Scheduled for removal' WHERE room_number = 'T99';

UPDATE hotel_rooms SET max_occupancy = 0 WHERE room_number = '301';

SELECT * FROM hotel_rooms WHERE room_number = 'T99';
DELETE FROM hotel_rooms WHERE room_number = 'T99';

INSERT INTO hotel_rooms(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES ('TMP1', 'DELUXE', 1, 2, 3, 3700.00, 'OCCUPIED', TRUE, FALSE, 'Sea view');
SELECT * FROM hotel_rooms;
DELETE FROM hotel_rooms WHERE room_number = 'TMP1';


