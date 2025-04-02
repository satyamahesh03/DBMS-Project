-- Create the Books table
CREATE TABLE Books (
    Book_id NUMBER PRIMARY KEY, 
    Title VARCHAR2(255) NOT NULL, 
    Price NUMBER(10,2) NOT NULL, 
    Category VARCHAR2(100) NOT NULL, 
    Availability VARCHAR2(200) NOT NULL
);

-- Create the Authors table
CREATE TABLE Authors (
    Author_id NUMBER PRIMARY KEY, 
    Author_name VARCHAR2(255) NOT NULL, 
    Author_contact VARCHAR2(255), 
    Book_id NUMBER, 
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);

-- Create the Publishers table
CREATE TABLE Publishers (
    Pub_id NUMBER PRIMARY KEY,
    Pub_address VARCHAR2(255) NOT NULL,
    Pub_name VARCHAR2(255) NOT NULL,
    Book_id NUMBER,
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);

-- Create the Members table
CREATE TABLE Members (
    Mem_id NUMBER PRIMARY KEY,
    Mem_name VARCHAR2(255) NOT NULL,
    Mem_contact VARCHAR2(255),
    Mem_address VARCHAR2(255),
    Membership_start DATE NOT NULL,
    Membership_end DATE NOT NULL
);

-- Create the Loan table
CREATE TABLE Loan (
    Loan_id NUMBER PRIMARY KEY,
    Issue_date DATE,
    Due_date DATE,
    Return_date DATE,
    Fine DECIMAL(5,2),
    Mem_id NUMBER,
    Book_id NUMBER,
    FOREIGN KEY (Mem_id) REFERENCES Members(Mem_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);