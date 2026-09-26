USE cdg_hyd_jfs_058;

SELECT * FROM patients;

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26001', 'Aarya', 'Kapoor', '1998-05-12', 'FEMALE', 'aarya.kapoor@example.test', 'A+', '9876503001', 'Rohan Kapoor', '9876513001', 'Penicillin', 'ACTIVE');

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26002', 'Dev', 'Malhotra', '1985-11-03', 'MALE', NULL, 'O+', '9876503002', 'Leena Malhotra', '9876513002', NULL, 'ACTIVE');

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26003', 'Isha', 'Bose', '2001-02-19', 'NOT_DISCLOSED', 'isha.bose@example.test', 'B-', '9876503003', 'Tara Bose', '9876513003', 'Peanuts', 'ACTIVE'),
('PT26004', 'Kiran', 'Ali', '1976-08-27', 'INTERSEX', NULL, 'AB+', '9876503004', 'Sameer Ali', '9876513004', NULL, 'INACTIVE'),
('PT26005', 'Dev', 'Malhotra', '1985-11-03', 'MALE', 'neel.joshi@example.test', 'O+', '9876503005', 'Maya Joshi', '9876513005', 'Dust', 'ACTIVE');

-- blood group Z+
INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26006', 'Sadhul', 'Gupta', '2004-08-22', 'MALE', 'Z+', 'shadul.gupta@gmail.com', '1234567890', 'Neha Gupta', '1234567891', NULL, 'INACTIVE');

-- biological sex UNKNOWN
INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26007', 'Neha', 'Gupta', '1965-12-22', 'UNKNOWN', 'O-', 'neha.gupta@gmail.com', '1234567890', 'Shadul Gupta', '1234567891', NULL, 'INACTIVE');

-- duplicate patient id
INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT26002', 'Rohith', 'Sharma', '1987-03-16', 'MALE', 'AB+', 'rohith.sharma@gmail.com', '1234567890', 'Kama;a Sharma', '1234567891', 'MILK', 'ACTIVE');

UPDATE patients SET allergies = 'Sulfa drugs' WHERE patient_number = 'PT26002';

UPDATE patients SET email = 'dev.malhotra@example.test' WHERE patient_number = 'PT26002';

UPDATE patients SET phone = 9876503991 WHERE patient_number = 'PT26001';

UPDATE patients SET blood_group = 'O-' WHERE patient_number = 'PT26005';

-- blood group C+
UPDATE patients SET blood_group = 'C+' WHERE patient_number = 'PT26003';

SELECT * FROM patients WHERE patient_status = 'INACTIVE';
DELETE FROM patients WHERE patient_number = 'PT26004';

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES ('PT-TEMP-01', 'Virat', 'Kohli', '1977-05-26', 'MALE', 'B+', 'niaraja.kohli@gmail.com', '1234567890', 'Kama;a Sharma', '1234567891', 'MILK', 'ACTIVE');
DELETE FROM patients WHERE patient_number = 'PT-TEMP-01';