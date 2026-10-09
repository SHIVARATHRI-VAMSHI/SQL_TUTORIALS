USE cdg_hyd_jfs_058;

CREATE TABLE courses(
    course_id INT UNSIGNED AUTO_INCREMENT,
    course_code  VARCHAR(15) NOT NULL,
    course_title VARCHAR(150) NOT NULL,
    category VARCHAR(60) NOT NULL,
    duration_hours DECIMAL(5,1) NOT NULL ,
    fee DECIMAL(10,2) NOT NULL DEFAULT 0.00 ,
    delivery_mode VARCHAR(20) NOT NULL DEFAULT 'ONLINE',
    course_status VARCHAR(20) NOT NULL DEFAULT 'DRAFT',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
    CONSTRAINT pk_courses_course_id PRIMARY KEY (course_id),
    CONSTRAINT uq_courses_course_code UNIQUE (course_code),
    CONSTRAINT chk_courses_duration_hours_greater_than_zero CHECK (duration_hours > 0),
    CONSTRAINT chk_courses_course_fee_not_negative CHECK (fee >= 0),
    CONSTRAINT chk_courses_delivery_mode CHECK (delivery_mode IN ('ONLINE', 'CLASSROOM', 'HYBRID')),
    CONSTRAINT chk_courses__course_status CHECK (course_status IN ('DRAFT', 'ACTIVE', 'INACTIVE', 'ARCHIVED'))

);

DESCRIBE courses;
SHOW CREATE TABLE courses;
SELECT* FROM courses;

INSERT INTO courses ( course_code,course_title,category,duration_hours,fee,delivery_mode,course_status)
VALUES('CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40.0, 6000.00,'CLASSROOM', 'ACTIVE');

INSERT INTO courses(course_code, course_title, category, duration_hours, fee,delivery_mode, course_status)
VALUES('CRS-SQL-102', 'MySQL Essentials', 'Database', 32.0, 4500.00,'ONLINE', 'ACTIVE');
INSERT INTO courses(course_code, course_title, category, duration_hours, fee)
VALUES ('CRS-WEB-103', 'Responsive Web Design', 'Web Development', 28.0, 0.00);

INSERT INTO courses(course_code, course_title, category, duration_hours, fee,delivery_mode, course_status)
VALUES('CRS-TST-104', 'Software Testing Basics', 'Testing', 24.0, 3500.00,'HYBRID', 'ACTIVE');

INSERT INTO courses(course_code, course_title, category, duration_hours, fee,delivery_mode, course_status)
VALUES('CRS-OLD-105', 'Legacy Systems Overview', 'Technology', 12.0, 2000.00,'ONLINE', 'ARCHIVED');

-- duplicate course code 
INSERT INTO courses(course_code, course_title, category, duration_hours, fee)
VALUES('CRS-JAVA-101', 'Advanced Java', 'Programming', 50.0, 8000.00);

-- Attempt inserts having a NULL title, zero duration, negative fee, and delivery mode SELF_PACED
INSERT INTO courses(course_code, course_title, category, duration_hours, fee)
VALUES('BAD-001', NULL, 'Programming', 20.0, 1000.00);
INSERT INTO courses(course_code, course_title, category, duration_hours, fee)
VALUES('BAD-002', 'Invalid Duration', 'Testing', 0.0, 1000.00);
INSERT INTO courses(course_code, course_title, category, duration_hours, fee)
VALUES('BAD-003', 'Invalid Fee', 'Testing', 10.0, -500.00);
INSERT INTO courses(course_code, course_title, category, duration_hours, fee,delivery_mode)
VALUES('BAD-004', 'Invalid Mode', 'Testing', 10.0, 1000.00,'SELF_PACED');








