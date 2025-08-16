USE librarymanagementdb;

SELECT * FROM Author;

SELECT name, bio FROM Author;

SELECT * FROM Book
WHERE published_year > 2000;

SELECT * FROM Book
WHERE publisher_id = 1 AND published_year > 1995;

SELECT * FROM Book
WHERE published_year < 1950 OR published_year > 2010;

SELECT * FROM Member
WHERE name LIKE 'A%';

SELECT * FROM Book
WHERE title LIKE '%Harry%';

SELECT * FROM Book
WHERE published_year BETWEEN 1990 AND 2000;

SELECT * FROM Member
ORDER BY name ASC;

SELECT * FROM Book
ORDER BY published_year DESC;

SELECT * FROM Book
LIMIT 2;

SELECT title AS 'Book Name', published_year
FROM Book;

SELECT DISTINCT publisher_id FROM Book;
