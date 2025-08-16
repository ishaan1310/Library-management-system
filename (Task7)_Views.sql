USE librarymanagementdb;

CREATE VIEW BooksWithAuthors AS
SELECT b.book_id, b.title, a.name AS author_name, b.published_year
FROM Book b
JOIN Book_Author ba ON b.book_id = ba.book_id
JOIN Author a ON ba.author_id = a.author_id;

CREATE VIEW ActiveLoans AS
SELECT l.loan_id, b.title, m.name AS member_name, s.name AS staff_name, l.loan_date
FROM Loan l
JOIN Book b ON l.book_id = b.book_id
JOIN Member m ON l.member_id = m.member_id
JOIN Staff s ON l.staff_id = s.staff_id
WHERE l.return_date IS NULL;

CREATE VIEW BooksPerPublisher AS
SELECT p.name AS publisher_name, COUNT(b.book_id) AS total_books
FROM Publisher p
LEFT JOIN Book b ON p.publisher_id = b.publisher_id
GROUP BY p.name;

CREATE VIEW FrequentBorrowers AS
SELECT m.member_id, m.name, COUNT(l.loan_id) AS total_loans
FROM Member m
JOIN Loan l ON m.member_id = l.member_id
GROUP BY m.member_id, m.name
HAVING COUNT(l.loan_id) > 1;

SELECT * FROM BooksWithAuthors;
SELECT * FROM ActiveLoans;
SELECT * FROM BooksPerPublisher;
SELECT * FROM FrequentBorrowers;

-- 6. Dropping a view
-- DROP VIEW BooksWithAuthors;
