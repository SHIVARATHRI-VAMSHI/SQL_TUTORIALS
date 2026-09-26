USE cdg_hyd_jfs_058;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_number VARCHAR(15) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex ENUM('FEMALE', 'MALE', 'INTERSEX', 'NOT_DISCLOSED') NOT NULL,
    blood_group VARCHAR(5) NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NULL,
    emergency_contact_name VARCHAR(50) NOT NULL,
    emergency_contact_phone VARCHAR(20) NOT NULL,
    allergies TEXT NULL,
    patient_status ENUM('ACTIVE', 'INACTIVE', 'DECEASED') NOT NULL DEFAULT 'ACTIVE',
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_blood_group
    CHECK (blood_group IS NULL OR blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
);

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex,
 blood_group, phone, email, emergency_contact_name,
 emergency_contact_phone, allergies, patient_status)
VALUES
('PAT001', 'Rahul', 'Kumar', '2002-05-15', 'MALE',
 'O+', '9876543210', 'rahul@example.com', 'Suresh Kumar',
 '9876501234', 'Skin Allergy', 'ACTIVE'),
('PAT002', 'Ananya', 'Reddy', '2001-08-20', 'FEMALE',
 'A+', '9876543211', NULL, 'Lakshmi Reddy',
 '9876501235', NULL, 'ACTIVE'),
('PAT003', 'Arjun', 'Sharma', '1999-11-10', 'MALE',
 'B-', '9876543212', 'arjun@example.com', 'Meena Sharma',
 '9876501236', 'Dust allergy', 'INACTIVE');

SELECT * FROM patients;

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex,
 blood_group, phone, email, emergency_contact_name,
 emergency_contact_phone, allergies, patient_status)
VALUES
('PAT004', 'Test', 'Patient', '2000-01-01', 'MALE',
 'X+', '9876543213', 'test@example.com', 'Test Contact',
 '9876501237', NULL, 'ACTIVE');