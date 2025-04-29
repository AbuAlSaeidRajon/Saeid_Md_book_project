-- Use the database
USE bookdb;

-- Insert data
INSERT INTO book (bookID, name, author, numberOfBooks, type)
VALUES
(3, 'Databases - The rise and fall', 'Emily White', 100, 'hardcover'),
(4, 'SQL-mysteries', 'Isla Shore', 10, 'softcover'),
(5, 'Rebellion of Sophie Q. Lister', 'Layla Jones', 150, 'e-book'),
(6, 'The adventures of Mike the Millipede', 'Antony Lee', 20, 'magazine'),
(7, 'Maria and My', 'Jesse River', 7, 'pocketbook');

-- Select all columns
SELECT * FROM book;

-- Select specific columns
SELECT name, numberOfBooks, type FROM book;

-- Select books with specific conditions
SELECT * FROM book WHERE type = 'print-on-demand';
SELECT * FROM book WHERE numberOfBooks = 10;
SELECT * FROM book WHERE name = 'Hacking databases';

-- Update data
UPDATE book SET author = 'Emily White', type = 'print-on-demand' WHERE bookID = 5;
UPDATE book SET author = 'Felix Harris', numberOfBooks = 150 WHERE bookID = 4;
UPDATE book SET author = 'Matt Wilson', numberOfBooks = 10, name = 'Rebellion of Sophie Q. Lister' WHERE bookID = 6;
UPDATE book SET type = 'pocketbook', author = 'Jesse River', numberOfBooks = 5 WHERE bookID = 5;

-- Delete data
DELETE FROM book WHERE bookID = 3;
DELETE FROM book WHERE bookID = 5;
DELETE FROM book WHERE numberOfBooks = 25;
DELETE FROM book WHERE author = 'Felix Harris' OR numberOfBooks = 5;
DELETE FROM book WHERE name = 'Rebellion of Sophie Q. Lister' OR author = 'Antony Lee' OR author = 'Layla Jones';