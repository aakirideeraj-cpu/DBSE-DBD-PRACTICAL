CREATE DATABASE IF NOT EXISTS bookflow_db;
USE bookflow_db;
CREATE TABLE books (
 book_id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 isbn VARCHAR(13) NOT NULL UNIQUE,
 published_year INT,
 CONSTRAINT chk_published_year CHECK (published_year < 2027)
);
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

SELECT * FROM books;


