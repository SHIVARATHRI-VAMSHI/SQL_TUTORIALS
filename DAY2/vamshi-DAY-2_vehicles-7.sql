USE cdg_hyd_jfs_058;

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    registration_number VARCHAR(20) UNIQUE NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE NULL,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE NULL,
    vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_vehicle_type
        CHECK (vehicle_type IN ('CAR', 'MOTORCYCLE', 'TRUCK', 'VAN', 'BUS')),
    CONSTRAINT chk_fuel_type
        CHECK (fuel_type IN ('PETROL', 'DIESEL', 'ELECTRIC', 'HYBRID', 'CNG')),
    CONSTRAINT chk_odometer
        CHECK (odometer_km >= 0),
    CONSTRAINT chk_vehicle_status
        CHECK (vehicle_status IN ('ACTIVE', 'IN_SERVICE', 'SOLD', 'SCRAPPED'))
);


INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model, vehicle_type,
fuel_type, manufacture_year, purchase_date, color, odometer_km,
insurance_expiry, vehicle_status)
VALUES
('AP01AB1234', 'Ravi Kumar', 'Toyota', 'Corolla', 'CAR',
'PETROL', 2022, '2022-05-10', 'White', 25000, '2027-05-09', 'ACTIVE'),

('TS09CD5678', 'Sai Kumar', 'Honda', 'Shine', 'MOTORCYCLE',
'PETROL', 2021, '2021-08-15', 'Black', 18000, '2027-08-14', 'IN_SERVICE'),

('AP16EF9012', 'Arun Kumar', 'Tata', 'Prima', 'TRUCK',
'DIESEL', 2020, '2020-03-20', 'Blue', 75000, '2027-03-19', 'ACTIVE'),

('TS10GH3456', 'Kiran Reddy', 'Maruti', 'Eeco', 'VAN',
'CNG', 2023, '2023-06-12', 'Silver', 12000, '2027-06-11', 'ACTIVE'),

('AP39IJ7890', 'Rahul Sharma', 'Volvo', '9400', 'BUS',
'DIESEL', 2019, '2019-09-25', 'Red', 120000, '2026-09-24', 'IN_SERVICE');



SELECT * FROM vehicles;

SELECT DISTINCT vehicle_type FROM vehicles;

SELECT DISTINCT fuel_type FROM vehicles;

SELECT * FROM vehicles
WHERE purchase_date IS NULL
AND insurance_expiry IS NULL;

SELECT vehicle_id, registration_number, owner_name
FROM vehicles;

SELECT DISTINCT vehicle_status FROM vehicles;

SELECT registration_number, odometer_km
FROM vehicles;

SELECT vehicle_id, registration_number, created_at
FROM vehicles;