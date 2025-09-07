Library Management System (SQL Project)

This project is a simple SQL-based Library Management System to practice database design and SQL queries. It simulates how members borrow books from a library.

Database Structure

The system has three tables:

Books

book_id (Primary Key)

title

author

year

category

Members

member_id (Primary Key)

name

city

join_date

BorrowedBooks

borrow_id (Primary Key)

member_id (Foreign Key → Members)

book_id (Foreign Key → Books)

borrow_date

return_date
