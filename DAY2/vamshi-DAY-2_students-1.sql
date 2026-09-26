USE cdg_hyd_jfs_058;
CREATE TABLE students (
    student_id INT  PRIMARY KEY NOT NULL AUTO_INCREMENT ,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
	CONSTRAINT `uq_email` UNIQUE (email),
	CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);
SELECT* FROM students;

DROP TABLE students;

INSERT INTO students (admission_number, first_name, last_name,  email,phone, date_of_birth,program_name, admission_date, cgpa, student_status )
VALUES('22h51a73b9','vamshi','shivarathri','vamshi2211@gmail.com','6301929751','2003-06-07','jfs','2026-07-23',7.39,'Active');

INSERT INTO students ( admission_number, first_name, last_name,  email,phone, date_of_birth,program_name, admission_date, cgpa, student_status )
VALUES('22h51a73a9','akhil','muthyam','akhil2211@gmail.com','6301928991','2004-06-09','jfs','2026-07-23',6.98,'Active');