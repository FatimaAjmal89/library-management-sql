CREATE DATABASE my_library;

USE  my_library;

CREATE TABLE Books(
book_id INT PRIMARY KEY, 
title VARCHAR(50), 
author  VARCHAR(50), 
year INT, 
category VARCHAR(50)
);

CREATE TABLE member(
member_id  INT PRIMARY KEY,
name VARCHAR(50), 
city VARCHAR(50), 
join_date INT
);

alter table member 
modify join_date DATE;

CREATE TABLE BorrowedBooks(
borrow_id  INT PRIMARY KEY, 
member_id INT, 
book_id INT, 
borrow_date INT, 
return_date INT,
FOREIGN KEY (member_id) REFERENCES member(member_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

alter table BorrowedBooks
modify borrow_date DATE,
modify return_date DATE;



INSERT INTO Books
(book_id,title,author,year, category)
VALUES
(1,'Harry Potter and the Sorcerer’s Stone','J.K. Rowling',1997,'Fantasy'),
(2, 'Pride and Prejudice', 'Jane Austen', 1813, 'Classic'),
(3, 'A Brief History of Time', 'Stephen Hawking', 1988, 'Science'),
(4, 'The Hobbit', 'J.R.R. Tolkien', 1937, 'Adventure'),
(5, 'Murder on the Orient Express', 'Agatha Christie', 1934, 'Mystery');

INSERT INTO member
(member_id, name, city , join_date)
VALUES 
(1,'Fatimah','Karachi','2023-05-12'),
(2, 'Amna', 'Lahore', '2022-08-20'),
(3, 'Meum', 'Islamabad', '2021-03-15'),
(4, 'Sara', 'Multan', '2024-01-10'),
(5, 'Mariah', 'Peshawar', '2020-11-25');

INSERT INTO BorrowedBooks
(borrow_id , member_id , book_id , borrow_date, return_date )
VALUES
(1, 1, 3, '2025-02-08', '2025-02-20'), 
(2, 2, 5, '2025-02-10', '2025-02-25'), 
(3, 1, 1, '2025-02-12', '2025-02-22'), 
(4, 3, 2, '2025-02-15', '2025-02-28'), 
(5, 2, 4, '2025-02-17', '2025-02-27'),
(6, 1, 5, '2025-02-19', '2025-03-01');

SELECT *
FROM BorrowedBooks
WHERE return_date is NULL;

SELECT member_id, count(book_id)
FROM BorrowedBooks
GROUP BY member_id;

SELECT m.name, b.borrow_date, bk.title AS book_title
FROM member m
JOIN BorrowedBooks b
ON m.member_id = b.member_id
JOIN Books bk 
ON bk.book_id = b.book_id;

SELECT b.title, count(*) AS borrowcount
FROM BorrowedBooks bb
JOIN Books b
ON b.book_id=bb.book_id
GROUP BY b.title
ORDER BY borrowcount DESC
limit 1 ;

SELECT m.name , bk.title
FROM member m
JOIN BorrowedBooks bb
ON m.member_id= bb.member_id
JOIN Books bk
ON bk.book_id = bb.book_id
;