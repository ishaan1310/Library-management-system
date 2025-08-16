USE librarymanagementdb;

INSERT INTO Author (name, bio) VALUES
('J.K. Rowling', 'Author of Harry Potter series'),
('George R.R. Martin', 'Author of A Song of Ice and Fire'),
('Agatha Christie', 'Famous mystery writer');

INSERT INTO Publisher (name, address) VALUES
('Bloomsbury Publishing', 'London, UK'),
('Bantam Books', 'New York, USA'),
('HarperCollins', 'New York, USA');

INSERT INTO Book (title, isbn, publisher_id, published_year) VALUES
('Harry Potter and the Philosopher''s Stone', '9780747532699', 1, 1997),
('A Game of Thrones', '9780553103540', 2, 1996),
('Murder on the Orient Express', '9780062693662', 3, 1934);

INSERT INTO Book_Author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Member (name, email, membership_date) VALUES
('Alice Johnson', 'alice@example.com', '2024-05-10'),
('Bob Smith', 'bob@example.com', '2024-06-15'),
('Charlie Davis', 'charlie@example.com', '2024-07-01');

INSERT INTO Staff (name, position) VALUES
('John Doe', 'Librarian'),
('Emily Clark', 'Assistant Librarian');

INSERT INTO Loan (book_id, member_id, staff_id, loan_date, return_date) VALUES
(1, 1, 1, '2024-08-01', NULL), -- Not returned yet
(2, 2, 2, '2024-08-05', '2024-08-15'),
(3, 3, 1, '2024-08-07', NULL);

UPDATE Member
SET email = 'alice.johnson@example.com'
WHERE member_id = 1;

UPDATE Loan
SET return_date = '2024-08-20'
WHERE loan_id = 1;

DELETE FROM Loan
WHERE member_id = 3;

DELETE FROM Member
WHERE member_id = 3;

DELETE FROM Loan
WHERE staff_id = 2;

DELETE FROM Staff
WHERE staff_id = 2;
