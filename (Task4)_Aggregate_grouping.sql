USE librarymanagementdb;

SELECT COUNT(*) AS total_books FROM Book;

SELECT AVG(published_year) AS average_year FROM Book;

SELECT MIN(published_year) AS earliest_year, MAX(published_year) AS latest_year
FROM Book;

SELECT publisher_id, COUNT(*) AS total_books
FROM Book
GROUP BY publisher_id;

SELECT author_id, COUNT(*) AS total_books
FROM Book_Author
GROUP BY author_id;

SELECT staff_id, COUNT(*) AS total_loans
FROM Loan
GROUP BY staff_id;

SELECT member_id, COUNT(*) AS total_loans
FROM Loan
GROUP BY member_id;

SELECT staff_id, COUNT(*) AS total_loans
FROM Loan
GROUP BY staff_id
HAVING COUNT(*) > 1;

SELECT member_id, COUNT(*) AS total_loans
FROM Loan
GROUP BY member_id
ORDER BY total_loans DESC;

SELECT COUNT(DISTINCT member_id) AS unique_borrowers
FROM Loan;