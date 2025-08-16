USE librarymanagementdb;

-- 1. Select all columns from Author table
SELECT * FROM Author;

-- 2. Select only name and bio from Author
SELECT name, bio FROM Author;

-- 3. Filter rows: Get books published after the year 2000
SELECT * FROM Book
WHERE published_year > 2000;

-- 4. Filter with AND: Books by publisher_id = 1 AND published after 1995
SELECT * FROM Book
WHERE publisher_id = 1 AND published_year > 1995;

-- 5. Filter with OR: Books published before 1950 OR after 2010
SELECT * FROM Book
WHERE published_year < 1950 OR published_year > 2010;

-- 6. LIKE: Members whose name starts with 'A'
SELECT * FROM Member
WHERE name LIKE 'A%';

-- 7. LIKE with wildcard both sides: Books containing 'Harry'
SELECT * FROM Book
WHERE title LIKE '%Harry%';

-- 8. BETWEEN: Books published between 1990 and 2000
SELECT * FROM Book
WHERE published_year BETWEEN 1990 AND 2000;

-- 9. Sorting: Members in alphabetical order
SELECT * FROM Member
ORDER BY name ASC;

-- 10. Sorting in descending order: Books by newest year first
SELECT * FROM Book
ORDER BY published_year DESC;

-- 11. LIMIT: Show only first 2 books
SELECT * FROM Book
LIMIT 2;

-- 12. Using alias: Show book title as 'Book Name'
SELECT title AS 'Book Name', published_year
FROM Book;

-- 13. DISTINCT: Show unique publisher IDs from books
SELECT DISTINCT publisher_id FROM Book;
