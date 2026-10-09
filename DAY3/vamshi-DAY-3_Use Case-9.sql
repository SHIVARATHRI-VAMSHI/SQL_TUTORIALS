USE cdg_hyd_jfs_058;

SELECT * FROM movies;

INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26001', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE', 8.2, 35000000.00, 'RELEASED');

INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26002', 'Orbit Seven', 'Science Fiction', 'English', '2026-05-22', 148, 'Daniel Cole', 'PARENTAL_GUIDANCE', 7.6, 120000000.00, 'RELEASED'),
('MOV26003', 'Little Mango Tree', 'Animation', 'Telugu', '2026-07-10', 96, 'Ravi Teja', 'ALL_AGES', 8.5, 18000000.00, 'RELEASED');

INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV27001', 'Echoes of Tomorrow', 'Thriller', 'English', NULL, 125, 'Maya Sen', 'UNRATED', NULL, NULL, 'UPCOMING'),
('MOV24005', 'Old Harbour', 'Mystery', 'Bengali', '2024-02-09', 118, 'Sayan Dutta', 'ADULT', 6.9, 22000000.00, 'ARCHIVED');

-- zero duration
INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26002', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 0, 'Anika Verma', 'PARENTAL_GUIDANCE', 8.2, 35000000.00, 'RELEASED');

-- rating greater than 10.0
INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26003', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE', 11.0, 35000000.00, 'RELEASED');

-- negative production budget
INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26004', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE', 8.2, -35000000.00, 'RELEASED');

-- age_certificate 'TEEN'
INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26005', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'TEEN',8.2, 35000000.00, 'RELEASED');

-- duplicate movie code
INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV26001', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE',8.2, 35000000.00, 'RELEASED');

UPDATE movies SET release_date = '2027-03-19', age_certificate = 'PARENTAL_GUIDANCE' WHERE movie_code = 'MOV27001';

UPDATE movies SET audience_rating = 8.8 WHERE movie_code = 'MOV26003';

UPDATE movies SET production_budget = production_budget*1.05 WHERE genre = 'Science Fiction' AND production_budget IS NOT NULL;

UPDATE movies SET catalog_status = 'ARCHIVED' WHERE catalog_status = 'RELEASED' AND release_date < '2025-01-01';

UPDATE movies SET audience_rating = 12.0 WHERE movie_code = 'MOV24005';

SELECT * FROM movies WHERE catalog_status = 'ARCHIVED' AND movie_code = 'MOV24005';
DELETE FROM movies WHERE catalog_status = 'ARCHIVED' AND movie_code = 'MOV24005';

INSERT INTO MOVIES (movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status) 
VALUES ('MOV-TEMP-01', 'Bahubali', 'Fictional', 'Telugu', '2026-01-16', 132, 'S S Rajmouli', 'PARENTAL_GUIDANCE', 9.2, 350000000.00, 'RELEASED');
SELECT * FROM movies WHERE movie_code = 'MOV-TEMP-01';
DELETE FROM movies WHERE movie_code = 'MOV-TEMP-01';

SELECT * FROM movies;