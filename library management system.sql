CREATE DATABASE library;

USE library;

# create table branch
CREATE TABLE branch(
Branch_no INT PRIMARY KEY,
Manager_id INT,
Branch_address VARCHAR(100),
Contact_no VARCHAR(20)
);

# create table employee
CREATE TABLE employee(
Emp_id INT PRIMARY KEY,
Emp_name VARCHAR(30),
Position VARCHAR(30),
Salary DECIMAL(10,2),
Branch_no INT,
FOREIGN KEY (Branch_no) REFERENCES branch(Branch_no)
);

# create table customer
CREATE TABLE customer(
Customer_id INT PRIMARY KEY,
Customer_name VARCHAR(30),
Customer_address VARCHAR(100),
Reg_date DATE
);

# create table issuestatus
CREATE TABLE issuestatus(
Issue_id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(50),
Issue_date DATE,
Isbn_book INT,
FOREIGN KEY (Issued_cust) REFERENCES customer(Customer_id),
FOREIGN KEY (Isbn_book) REFERENCES books(Isbn)
);

# create table returnstatus
CREATE TABLE returnstatus(
Return_id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(50),
Return_date DATE,
Isbn_book2 INT,
FOREIGN KEY (Isbn_book2) REFERENCES books(Isbn)
);

# create table books
CREATE TABLE books(
Isbn INT PRIMARY KEY,
Book_title VARCHAR(50),
Category VARCHAR(50),
Rental_price DECIMAL(10,2),
Status VARCHAR(3),
Author VARCHAR(50),
Publisher VARCHAR(50)
);

INSERT INTO branch (Branch_no, Manager_id, Branch_address, Contact_no)
VALUES
    (1, 101, '348 main st', '121-1004'),
    (2, 102, '466 church St', '121-3984'),
    (3, 103, '479 champs St', '121-2634'),
    (4, 104, '121 school St', '121-1834'),
    (5, 105, '597 Map St', '121-8765'),
    (6, 106, '276 rich St', '121-9234'),
    (7, 107, '204 darn St', '121-3498'),
    (8, 108, '970 hut St', '121-1734'),
    (9, 109, '543 Oak St', '121-3894'),
    (10, 110, '678 Pine St', '121-6543');
    
INSERT INTO employee (Emp_id, Emp_name, Position, Salary, Branch_no)
VALUES
    (201, 'james mathew', 'Manager', 75000.00, 1),
    (202, 'Nick kethan', 'Clerk', 45000.00, 1),
    (203, 'Irena mihal', 'Clerk', 55000.00, 2),
    (204, 'Esther anil', 'Clerk', 52000.00, 3),
    (205, 'Dona elizabath', 'Manager', 68000.00, 2),
    (206, 'Ebin dominik', 'Clerk', 52000.00, 3),
    (207, 'David ebraham', 'Clerk', 45000.00, 4),
    (208, 'Sara Janes', 'Manager', 67000.00, 4),
    (209, 'Clara Davis', 'Manager', 80000.00, 5),
    (210, 'ozler zen', 'Clerk', 59000.00, 5);
    
INSERT INTO customer (Customer_id, Customer_name, Customer_address, Reg_date)
VALUES
    (301, 'Aliya rosh', '809 school St', '2022-02-03'),
    (302, 'Danial ken', '101 Pine St', '2021-11-15'),
    (303, 'Emly smith', '301 Main St', '2022-01-20'),
    (304, ' Mary feranadas', '726 Oak St', '2021-08-05'),
    (305, 'Clara white', '249 church St', '2022-06-15'),
    (306, 'Liza Tanvi', '687 hut St', '2022-10-12'),
    (307, 'Jenifer maus', '399 Pine St', '2021-10-10'),
    (308, 'Micheal Black', '852 oak St', '2021-05-17'),
    (309, 'Elias jack', '386 school St', '2021-09-15'),
    (310, 'Mirch jan', '605 hut St', '2022-06-10');
    
INSERT INTO books (Isbn, Book_title, Category, Rental_price, Status, Author, Publisher)
VALUES
    (101, 'A Tile of Two City', 'Fiction', 7.99, 'yes', 'Charles Dickens', 'Simon'),
    (102, 'To Kill a Mockingbird', 'Fiction', 5.99, 'yes', 'Harper Lee', 'J.B. Lippincott'),
    (103, '1984', 'Science Fiction', 9.99, 'yes', 'George Orwell', 'Penguin'),
    (104, 'American Pshyco', 'Fiction', 10.99, 'yes', 'Bret Easton Hills', 'Vintage'),
    (105, 'Catch 22', 'Fiction', 8.99, 'yes', 'Joseph heller', 'Simon'),
    (106, 'Childrens of blood and blame', 'Fantasy', 10.99, 'yes', 'Tomi Adyemi', 'Henry Holt'),
    (107, 'Great expectation', 'Classic', 11.99, 'yes', 'Charles dickens', 'Chapman and Hall'),
    (108, 'The Time Machine', 'classic', 10.99, 'yes', 'H G wells', 'Henry Holt'),
    (109, 'Circe', 'fantasy', 15.99, 'yes', 'Madaline miller', 'Hogarth Press'),
    (110, 'Harry Porter', 'Adventure', 16.99, 'yes', 'Jk Rowling', 'Bloomsberry');
    
INSERT INTO issuestatus (Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
    (401, 301, 'A Tile of Two City', '2022-11-11', 101),
    (402, 302, 'To Kill a Mockingbird', '2023-06-23', 102),
    (403, 303, '1984', '2022-02-03', 103),
    (404, 304, 'American Pshyco', '2021-08-04', 104),
    (405, 305, 'Catch 22', '2022-07-15', 105),
    (406, 306, 'Childrens of blood and blame', '2022-07-20', 106),
    (407, 307, 'Great expectation', '2021-10-15', 107),
    (408, 308, 'The Time Machine', '2022-07-19', 108),
    (409, 309, 'Circe', '2021-09-10', 109),
    (410, 310, 'Harry Porter', '2022-12-25', 110);
    
INSERT INTO returnstatus (Return_id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
    (501, 301, 'A Tile of Two City', '2022-12-15', 101),
    (502, 302, 'To Kill a Mockingbird', '2022-07-10', 102),
    (503, 303, '1984', '2022-03-15', 103),
    (504, 304, 'American Pshyco', '2022-01-01', 104),
    (505, 305, 'Catch 22', '2022-08-20', 105),
    (506, 306, 'Childrens of blood and blame', '2022-05-05', 106),
    (507, 307,  'Great expectation', '2021-11-10', 107),
    (508, 308, 'The Time Machine', '2022-09-25', 108),
    (509, 309, 'Circe', '2022-10-15', 109),
    (510, 310, 'Harry Porter', '2022-12-30', 110);
    
# Retrieve the book title, category, and rental price of all available books
SELECT book_title, category, rental_price FROM books WHERE status='yes';

# List the employee names and their respective salaries in descending order of salary
SELECT Emp_name , salary FROM employee ORDER BY salary DESC;

#  Retrieve the book titles and the corresponding customers who have issued those books.
SELECT b.Book_title , c.customer_name 
FROM books b join issuestatus i ON b.isbn=i.isbn_book
JOIN customer c ON i.issued_cust=c.customer_id;

# Display the total count of books in each category.
SELECT category, count(*) AS total_books FROM books GROUP BY category;

# Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name , position FROM employee WHERE salary >50000;

# List the customer names who registered before 2022-01-01 and have not issued any books yet
SELECT customer_name from customer WHERE Reg_date < '2022-01-01'
AND customer_id NOT IN (SELECT Issued_cust FROM issuestatus);

# Display the branch numbers and the total count of employees in each branch
SELECT Branch_no , count(*) AS emp_count FROM employee GROUP BY Branch_no;

#  Display the names of customers who have issued books in the month of June 2023.
SELECT DISTINCT c.customer_name FROM customer c JOIN issuestatus i
ON c.customer_id = i.issued_cust
WHERE month(i.issue_date)=6 AND year(i.issue_date) =2023;

# Retrieve book_title from book table containing history
SELECT Book_title FROM books WHERE category='History';

# Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT branch_no , count(*) AS emp_count FROM employee GROUP BY branch_no HAVING count(*)>5;