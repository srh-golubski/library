SELECT title, isbn FROM book
WHERE genre_id = 6;

SELECT book.title, author.first_name, author.last_name FROM book, author
WHERE deathday IS NULL AND book.author_id = author.author_id;

UPDATE book
SET available = 0
WHERE book_id = 21;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES (7, "2022-06-15", 21);

UPDATE patron
SET loan_id=1
WHERE patron_id=7;

UPDATE book
SET available = 1
WHERE book_id = 21;

UPDATE loan
SET date_in = "2022-06-16";
