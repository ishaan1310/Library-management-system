-- Create Database
CREATE DATABASE IF NOT EXISTS librarymanagementdb;
USE librarymanagementdb;

-- Author Table
CREATE TABLE IF NOT EXISTS Author (
    author_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    PRIMARY KEY (author_id)
);

-- Publisher Table
CREATE TABLE IF NOT EXISTS Publisher (
    publisher_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    PRIMARY KEY (publisher_id)
);

-- Book Table
CREATE TABLE IF NOT EXISTS Book (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    publisher_id INT,
    published_year YEAR,
    PRIMARY KEY (book_id),
    FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id)
);

-- Book_Author Table
CREATE TABLE IF NOT EXISTS Book_Author (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Member Table
CREATE TABLE IF NOT EXISTS Member (
    member_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    membership_date DATE,
    PRIMARY KEY (member_id)
);

-- Staff Table
CREATE TABLE IF NOT EXISTS Staff (
    staff_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    PRIMARY KEY (staff_id)
);

-- Loan Table
CREATE TABLE IF NOT EXISTS Loan (
    loan_id INT NOT NULL AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    staff_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    PRIMARY KEY (loan_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
