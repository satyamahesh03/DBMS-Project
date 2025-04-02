-- Select all books
SELECT * FROM Books;

-- Get all members with active membership
SELECT * FROM Members WHERE Membership_end > SYSDATE;

-- Find books by category
SELECT * FROM Books WHERE Category = 'Fantasy';

-- Check overdue books
SELECT Loan_id, Mem_id, Book_id, Due_date, Fine 
FROM Loan 
WHERE Due_date < SYSDATE AND Return_date IS NULL;

-- Find books and their respective authors
SELECT Books.Title, Authors.Author_name 
FROM Books 
JOIN Authors ON Books.Book_id = Authors.Book_id;