USE cdg_hyd_jfs_058;

SELECT * FROM vehicles;

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01AB1234', 'Arjun Rao', 'Hyundai', 'Creta', 'CAR', 'DIESEL', 2022, '2022-08-15', 'White', 34000, '2027-08-14', 'ACTIVE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TS09CD5679', 'Meera Iyer', 'Honda', 'Activa 6G', 'MOTORCYCLE', 'PETROL', 2021, NULL, 'Red', 18500, '2026-12-31', 'ACTIVE'),
('MH12EF9012', 'Rohan Logistics', 'Tata', 'Ultra', 'TRUCK', 'DIESEL', 2020, '2020-03-10', 'Blue', 145000, '2026-10-15', 'IN_SERVICE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('DL03GH3456', 'Nisha Kapoor', 'Mahindra', 'eSupro', 'VAN', 'ELECTRIC', 2024, '2024-02-01', 'Silver', 22000, NULL, 'ACTIVE'),
('TN10JK7890', 'Training Transport', 'Ashok Leyland', 'Viking', 'BUS', 'DIESEL', 2010, NULL, 'Yellow', 480000, NULL, 'SCRAPPED');

-- negative odometer value
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KA01AB1234', 'Arjun Rao', 'Hyundai', 'Creta', 'CAR', 'DIESEL', 2022, '2022-08-15', 'White', -34000, '2027-08-14', 'ACTIVE');

-- vehicle type SUV
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TS09CD5675', 'Meera Iyer', 'Mahindra', 'Bolero Neo', 'SUV', 'PETROL', 2021, NULL, 'Red', 18500, '2026-12-31', 'ACTIVE');

-- fuel type HYDROGEN
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('DL03GH3454', 'Nisha Kapoor', 'Toyota', 'Mirai', 'CAR', 'HYDROGEN', 2024, '2024-02-01', 'Blue', 22000, NULL, 'ACTIVE');

-- duplicate registration number
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('DL03GH3456', 'Vivaan Sharma', 'Mahindra', 'eSupro', 'VAN', 'ELECTRIC', 2024, '2024-02-01', 'Silver', 22000, NULL, 'ACTIVE');

UPDATE vehicles SET odometer_km = odometer_km+750 WHERE registration_number = 'KA01AB1234';

UPDATE vehicles SET insurance_expiry = '2027-02-01' WHERE registration_number = 'DL03GH3456';

UPDATE vehicles SET vehicle_status = 'ACTIVE' WHERE registration_number = 'MH12EF9012' AND vehicle_status = 'IN_SERVICE';

UPDATE vehicles SET color = 'Matte Red' WHERE registration_number = 'TS09CD5678';

UPDATE vehicles SET odometer_km = odometer_km + 1000 WHERE vehicle_status = 'ACTIVE';

SELECT * FROM vehicles WHERE registration_number = 'TN10JK7890';
DELETE FROM vehicles WHERE registration_number = 'TN10JK7890';

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TEST00TMP01', 'Gayatri Singh', 'Mahindra', 'Scorpio Classic', 'CAR', 'DIESEL', 2024, '2024-02-01', 'BLACK', 22000, NULL, 'ACTIVE');
SELECT * FROM vehicles;
DELETE FROM vehicles WHERE registration_number = 'TEST00TMP01';