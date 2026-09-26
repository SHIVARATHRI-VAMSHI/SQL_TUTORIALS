USE cdg_hyd_jfs_058;

SELECT * FROM students;

INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C001','ananya','rao','ananya.rao@emample.test','9876501001','2007-04-18','Bsc computer science','2026-07-01',8.40,'ACTIVE');

INSERT INTO students(admission_number,first_name,last_name,email,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C002','vivaan','sharma','vivaan.sharma@example.test','2006-12-09','Bcom','2026-07-01',7.75,'ACTIVE');

INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C003','diya','nair','diya.nair@emample.test','9876501003','2007-02-25','BA economics','2026-07-01',9.10,'ACTIVE'),

('STU26C004','Kabir','singh','kabir.singh@emample.test','9876501004','2006-04-18','Bsc Mathematics','2026-07-01',6.85,'SUSPENDED'),

('STU26C005','tara','bose','tara.nose@emample.test','9876501005','2007-04-21','BA History','2026-07-01',5.90,'DROPPED');

INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C006','kavya','yahoo','ananya.rao@emample.test','9876501881','2007-04-18','BTech','2026-07-01',8.40,'ACTIVE');


INSERT INTO students(admission_number,first_name,last_name,email,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C007','vivaan','sharma','vamshi.sharma@example.test','2006-12-09','Bcom','2026-07-01',10.50,'ACTIVE');

INSERT INTO students(admission_number,first_name,last_name,email,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU26C008','vivaan','sharma','VAMSHIRAJU.sharma@example.test','2006-12-09','Bcom','2026-07-01',9.00,'TRANSFERRED');


SELECT*from students WHERE admission_number IN (STU26C005,STU26C008);

UPDATE students SET cgpa = 8.65 WHERE admission_number = 'STU26C001';

UPDATE students set cgpa = LEAST(cgpa +0.20,10.00)
 WHERE program_name = 'Bsc computer science' AND student_status = 'ACTIVE';

 UPDATE students set student_status = 'ACTIVE' WHERE admission_number = 'STU26C004';

 UPDATE students set program_name = 'Bcom Finance' WHERE program_name = 'Bcom';
 UPDATE students SET email = 'akhil2211@gmail.com' where admission_number = 'STU26C003';

 DELETE from students WHERE student_status = 'DROPPED';

 INSERT INTO students(admission_number,first_name,last_name,email,date_of_birth,program_name,admission_date,cgpa,student_status)
VALUES('STU-TEMP-001','vivaan','sharma','VAMSHIRAJ.sharma@example.test','2006-12-09','Bcom','2026-07-01',9.00,'ACTIVE');

DELETE FROM students WHERE admission_number =  'STU-TEMP-001';



