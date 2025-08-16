USE librarymanagementdb;

SELECT Book.title, Publisher.name AS publisher_name
FROM Book
INNER JOIN Publisher ON Book.publisher_id = Publisher.publisher_id;

SELECT Book.title, Author.name AS author_name
FROM Book
LEFT JOIN Book_Author ON Book.book_id = Book_Author.book_id
LEFT JOIN Author ON Book_Author.author_id = Author.author_id;

SELECT Author.name AS author_name, Book.title
FROM Book
RIGHT JOIN Book_Author ON Book.book_id = Book_Author.book_id
RIGHT JOIN Author ON Book_Author.author_id = Author.author_id;

-- MySQL doesn’t support FULL OUTER JOIN directly, so we use UNION
SELECT Member.name, Loan.book_id, Loan.loan_date
FROM Member
LEFT JOIN Loan ON Member.member_id = Loan.member_id
UNION
SELECT Member.name, Loan.book_id, Loan.loan_date
FROM Member
RIGHT JOIN Loan ON Member.member_id = Loan.member_id;

SELECT Book.title, Member.name AS member_name, Staff.name AS staff_name
FROM Loan
INNER JOIN Book ON Loan.book_id = Book.book_id
INNER JOIN Member ON Loan.member_id = Member.member_id
INNER JOIN Staff ON Loan.staff_id = Staff.staff_id;

SELECT A.name AS member1, B.name AS member2, A.membership_date
FROM Member A
INNER JOIN Member B
ON A.membership_date = B.membership_date
AND A.member_id <> B.member_id;
