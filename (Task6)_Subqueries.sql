USE librarymanagementdb;

SELECT title, published_year
FROM Book
WHERE published_year = (SELECT MIN(published_year) FROM Book);

SELECT name
FROM Author
WHERE author_id IN (SELECT author_id FROM Book_Author);

SELECT name
FROM Member m
WHERE EXISTS (
    SELECT 1
    FROM Loan l
    WHERE l.member_id = m.member_id
);

SELECT title
FROM Book b
WHERE (SELECT COUNT(*) FROM Loan l WHERE l.book_id = b.book_id) > 1;

SELECT member_id, total_loans
FROM (
    SELECT member_id, COUNT(*) AS total_loans
    FROM Loan
    GROUP BY member_id
) AS loan_counts
WHERE total_loans > 1;

SELECT title, published_year
FROM Book
WHERE published_year > (SELECT AVG(published_year) FROM Book);

SELECT name
FROM Member
WHERE member_id NOT IN (SELECT DISTINCT member_id FROM Loan WHERE member_id IS NOT NULL);