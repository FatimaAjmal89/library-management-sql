# 📚 Library Management System (SQL Project)

This is a beginner-friendly **SQL project** designed to practice database design, relationships, and queries.  
The project simulates a small library system where books are borrowed by members.  



## 📌 Database Structure

The project consists of **3 main tables**:

1. **Books**
   - `book_id` (Primary Key)
   - `title`
   - `author`
   - `year`
   - `category`

2. **Members**
   - `member_id` (Primary Key)
   - `name`
   - `city`
   - `join_date`

3. **BorrowedBooks**
   - `borrow_id` (Primary Key)
   - `member_id` (Foreign Key → Members)
   - `book_id` (Foreign Key → Books)
   - `borrow_date`
   - `return_date`



## 📝 Sample Data

- **5 Books** (different authors & categories)  
- **5 Members** (different cities & join dates)  
- **6 Borrowed records** (some members borrowed multiple books)



