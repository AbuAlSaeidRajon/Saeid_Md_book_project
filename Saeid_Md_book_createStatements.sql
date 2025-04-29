-- Create database
CREATE DATABASE bookdb;

-- Use the database
USE bookdb;

-- Create table `book`
CREATE TABLE book (
    bookID INT PRIMARY KEY,
    name VARCHAR(55) NOT NULL,
    author VARCHAR(13) NOT NULL,
    numberOfBooks INT NOT NULL,
    type VARCHAR(28) NOT NULL
);

-- Insert sample data for testing
INSERT INTO book (bookID, name, author, numberOfBooks, type)
VALUES
(1, 'NoSql - New Hope', 'Matt Wilson', 5, 'leaflet'),
(2, 'Hacking databases', 'Felix Harris', 13, 'print-on-demand');

-- Create user and grant privileges
CREATE USER 'thomas'@'localhost' IDENTIFIED BY 'uukIujgL';
GRANT ALL PRIVILEGES ON bookdb.* TO 'thomas'@'localhost';
FLUSH PRIVILEGES;