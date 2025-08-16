USE librarymanagementdb;

DELIMITER //
CREATE PROCEDURE GetBooksByAuthor(IN authorName VARCHAR(100))
BEGIN
    SELECT b.title, b.published_year, p.name AS publisher_name
    FROM Book b
    JOIN Book_Author ba ON b.book_id = ba.book_id
    JOIN Author a ON ba.author_id = a.author_id
    JOIN Publisher p ON b.publisher_id = p.publisher_id
    WHERE a.name = authorName;
END //
DELIMITER ;

-- To call this procedure:
-- CALL GetBooksByAuthor('J.K. Rowling');

DELIMITER //
CREATE FUNCTION CountBooksByPublisher(publisherName VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE bookCount INT;
    SELECT COUNT(*) INTO bookCount
    FROM Book b
    JOIN Publisher p ON b.publisher_id = p.publisher_id
    WHERE p.name = publisherName;
    RETURN bookCount;
END //
DELIMITER ;

-- To use this function:
-- SELECT CountBooksByPublisher('Bloomsbury Publishing') AS total_books;
