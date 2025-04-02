-- Insert data into the Books table
INSERT INTO Books (Book_id, Title, Price, Category, Availability) VALUES 
(1, 'Harry Potter and the Sorcerer''s Stone', 19.99, 'Fantasy', 'YES'),
(2, 'A Game of Thrones', 29.99, 'Fantasy', 'YES'),
(3, 'The Hobbit', 14.99, 'Fantasy', 'YES'),
(4, 'Murder on the Orient Express', 12.99, 'Mystery', 'YES'),
(5, 'The Adventures of Tom Sawyer', 10.99, 'Fiction', 'YES'),
(6, 'The Great Gatsby', 15.99, 'Classic', 'YES'),
(7, 'The Old Man and the Sea', 9.99, 'Fiction', 'YES'),
(8, 'Foundation', 20.99, 'Science Fiction', 'YES'),
(9, 'The Shining', 22.99, 'Horror', 'YES'),
(10, 'Pride and Prejudice', 18.99, 'Classic', 'YES');

-- Insert data into the Authors table
INSERT INTO Authors (Author_id, Author_name, Author_contact, Book_id) VALUES 
(1, 'J.K. Rowling', 'jk.rowling@example.com', 1),
(2, 'George R.R. Martin', 'george.martin@example.com', 2),
(3, 'J.R.R. Tolkien', 'jrr.tolkien@example.com', 3),
(4, 'Agatha Christie', 'agatha.christie@example.com', 4),
(5, 'Mark Twain', 'mark.twain@example.com', 5),
(6, 'F. Scott Fitzgerald', 'f.scott@example.com', 6),
(7, 'Ernest Hemingway', 'ernest.hemingway@example.com', 7),
(8, 'Isaac Asimov', 'isaac.asimov@example.com', 8),
(9, 'Stephen King', 'stephen.king@example.com', 9),
(10, 'Jane Austen', 'jane.austen@example.com', 10);

-- Insert data into the Publishers table
INSERT INTO Publishers (Pub_id, Pub_address, Pub_name, Book_id) VALUES 
(1, 'Publishing St, London', 'Bloomsbury', 1),
(2, 'Publisher Ave, New York', 'Bantam Books', 2),
(3, 'Lane, London', 'HarperCollins', 3),
(4, 'Blvd, New York', 'Agatha Press', 4),
(5, 'Way, London', 'Mark Press', 5),
(6, 'Rd, New York', 'Scribner', 6),
(7, 'St, Paris', 'Penguin Books', 7),
(8, 'Ave, Chicago', 'Gnome Press', 8),
(9, 'Blvd, Maine', 'Cemetery Dance', 9),
(10, 'Rd, Bath', 'Chawton Press', 10);

-- Insert data into the Members table
INSERT INTO Members (Mem_id, Mem_name, Mem_contact, Mem_address, Membership_start, Membership_end) VALUES 
(1, 'Alice Johnson', 'alice.johnson@example.com', '1 Maple St, NY', TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), TO_DATE('01-JAN-2024', 'DD-MON-YYYY')),
(2, 'Bob Smith', 'bob.smith@example.com', '2 Oak St, NY', TO_DATE('01-FEB-2023', 'DD-MON-YYYY'), TO_DATE('01-FEB-2024', 'DD-MON-YYYY')),
(3, 'Charlie Brown', 'charlie.brown@example.com', '3 Pine St, NY', TO_DATE('01-MAR-2023', 'DD-MON-YYYY'), TO_DATE('01-MAR-2024', 'DD-MON-YYYY')),
(4, 'Diana Prince', 'diana.prince@example.com', '4 Cedar St, NY', TO_DATE('01-APR-2023', 'DD-MON-YYYY'), TO_DATE('01-APR-2024', 'DD-MON-YYYY')),
(5, 'Eve Adams', 'eve.adams@example.com', '5 Birch St, NY', TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_DATE('01-MAY-2024', 'DD-MON-YYYY')),
(6, 'Frank White', 'frank.white@example.com', '6 Elm St, NY', TO_DATE('01-JUN-2023', 'DD-MON-YYYY'), TO_DATE('01-JUN-2024', 'DD-MON-YYYY')),
(7, 'Grace Hall', 'grace.hall@example.com', '7 Cedar St, NY', TO_DATE('01-JUL-2023', 'DD-MON-YYYY'), TO_DATE('01-JUL-2024', 'DD-MON-YYYY')),
(8, 'Henry Ford', 'henry.ford@example.com', '8 Walnut St, NY', TO_DATE('01-AUG-2023', 'DD-MON-YYYY'), TO_DATE('01-AUG-2024', 'DD-MON-YYYY')),
(9, 'Ivy Green', 'ivy.green@example.com', '9 Cherry St, NY', TO_DATE('01-SEP-2023', 'DD-MON-YYYY'), TO_DATE('01-SEP-2024', 'DD-MON-YYYY')),
(10, 'Jack Black', 'jack.black@example.com', '10 Poplar St, NY', TO_DATE('01-OCT-2023', 'DD-MON-YYYY'), TO_DATE('01-OCT-2024', 'DD-MON-YYYY'));

-- Insert data into the Loan table
INSERT INTO Loan (Loan_id, Issue_date, Due_date, Return_date, Fine, Mem_id, Book_id) VALUES
(1, TO_DATE('10-JAN-2023', 'DD-MON-YYYY'), TO_DATE('20-JAN-2023', 'DD-MON-YYYY'), NULL, 10.00, 1, 1),
(2, TO_DATE('15-FEB-2023', 'DD-MON-YYYY'), TO_DATE('25-FEB-2023', 'DD-MON-YYYY'), TO_DATE('23-FEB-2023', 'DD-MON-YYYY'), 0.00, 2, 2),
(3, TO_DATE('20-MAR-2023', 'DD-MON-YYYY'), TO_DATE('30-MAR-2023', 'DD-MON-YYYY'), TO_DATE('28-MAR-2023', 'DD-MON-YYYY'), 0.00, 3, 3),
(4, TO_DATE('05-APR-2023', 'DD-MON-YYYY'), TO_DATE('15-APR-2023', 'DD-MON-YYYY'), NULL, 5.00, 4, 4),
(5, TO_DATE('10-MAY-2023', 'DD-MON-YYYY'), TO_DATE('20-MAY-2023', 'DD-MON-YYYY'), TO_DATE('18-MAY-2023', 'DD-MON-YYYY'), 0.00, 5, 5),
(6, TO_DATE('15-JUN-2023', 'DD-MON-YYYY'), TO_DATE('25-JUN-2023', 'DD-MON-YYYY'), TO_DATE('23-JUN-2023', 'DD-MON-YYYY'), 0.00, 6, 6),
(7, TO_DATE('20-JUL-2023', 'DD-MON-YYYY'), TO_DATE('30-JUL-2023', 'DD-MON-YYYY'), NULL, 7.00, 7, 7),
(8, TO_DATE('25-AUG-2023', 'DD-MON-YYYY'), TO_DATE('04-SEP-2023', 'DD-MON-YYYY'), TO_DATE('03-SEP-2023', 'DD-MON-YYYY'), 0.00, 8, 8),
(9, TO_DATE('01-SEP-2023', 'DD-MON-YYYY'), TO_DATE('11-SEP-2023', 'DD-MON-YYYY'), NULL, 10.00, 9, 9),
(10, TO_DATE('05-OCT-2023', 'DD-MON-YYYY'), TO_DATE('15-OCT-2023', 'DD-MON-YYYY'), TO_DATE('14-OCT-2023', 'DD-MON-YYYY'), 0.00, 10, 10);