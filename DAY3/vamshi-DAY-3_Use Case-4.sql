USE cdg_hyd_jfs_058;

SELECT * FROM books;

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780134685991', 'Effective Java', 'Joshua Bloch', 'Programming', 'Addison-Wesley', 2018, 416, 'HARDCOVER', 4500.00, 6, 'English');

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780132350884', 'Clean Code', 'Robert C. Martin', 'Programming', 'Prentice Hall', 2008, 466, 'PAPERBACK', 3200.00, 12, 'English'),
('9780262046305', 'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 'MIT Press', 2022, 312, 'HARDCOVER', 6500.00, 4, 'English');

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780000000001', 'The Monsoon Trail', 'Kavya Sen', 'Fiction', NULL, 2025, 288, 'PAPERBACK', 499.00, 20, 'English'),
('9780000000002', 'Data Stories for Beginners', 'Asha Rao', 'Education', 'Learning House', 2026, 210, 'EBOOK', 299.00, 0, 'English');

-- publication year 999
INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780134685992', 'Effective Java', 'Joshua Bloch', 'Programming', 'Addison-Wesley', 999, 416, 'HARDCOVER', 4500.00, 6, 'English');

-- page count with 0
INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780134685993', 'Effective Java', 'Joshua Bloch', 'Programming', 'Addison-Wesley', 1999, 0, 'HARDCOVER', 4500.00, 6, 'English');

-- negative price
INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780132350885', 'Clean Code', 'Robert C. Martin', 'Programming', 'Prentice Hall', 2008, 466, 'PAPERBACK', -3200.00, 12, 'English');

-- book format AUDIOBOOK
INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780132350886', 'Clean Code', 'Robert C. Martin', 'Programming', 'Prentice Hall', 2008, 466, 'AUDIOBOOK', 3200.00, 12, 'English');

-- duplicate ISBN
INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780000000002', 'Clean Code', 'Joshua Bloch', 'Programming', 'Learning House', 2026, 210, 'EBOOK', 299.00, 0, 'English');

UPDATE books SET copies_available = copies_available+10 WHERE title = 'Clean Code';

UPDATE books SET price = price*0.9 WHERE book_format = 'EBOOK';

UPDATE books SET publisher = 'Riverleaf Press' WHERE title = 'The Monsoon Trail';

UPDATE books SET copies_available = 15 WHERE title = 'Data Stories for Beginners';

UPDATE books SET page_count = 0 WHERE title = 'Introduction to Algorithms';

SELECT * FROM books WHERE isbn = 9780000000001;
DELETE FROM books WHERE isbn = 9780000000001;

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES ('9780000000999', 'The Monsoon Trail', 'Kavya Sen', 'Fiction', NULL, 2025, 288, 'PAPERBACK', 499.00, 20, 'English');
SELECT * FROM books where isbn = 9780000000999;
DELETE FROM books where isbn = 9780000000999;