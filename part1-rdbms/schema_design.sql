-- Create Database
CREATE DATABASE retail_db;
USE retail_db;

-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE Sales_Reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    region VARCHAR(50) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

-- Insert into Customers
INSERT INTO Customers VALUES
('C001','Rohan Mehta','rohan@gmail.com','Mumbai'),
('C002','Priya Sharma','priya@gmail.com','Delhi'),
('C003','Amit Verma','amit@gmail.com','Bangalore'),
('C004','Sneha Iyer','sneha@gmail.com','Chennai'),
('C005','Vikram Singh','vikram@gmail.com','Mumbai');

-- Insert into Products
INSERT INTO Products VALUES
('P001','Laptop','Electronics'),
('P002','Mouse','Electronics'),
('P003','Desk Chair','Furniture'),
('P004','Notebook','Stationery'),
('P005','Headphones','Electronics');

-- Insert into Sales_Reps
INSERT INTO Sales_Reps VALUES
('SR01','Deepak Joshi','West','Mumbai HQ, Nariman Point'),
('SR02','Anita Desai','North','Delhi Office'),
('SR03','Ravi Kumar','South','Bangalore Office'),
('SR04','Kiran Shah','West','Pune Office'),
('SR05','Arjun Nair','South','Chennai Office');

-- Insert into Orders
INSERT INTO Orders VALUES
('O001','C001','P001','SR01','2023-01-10',1,50000),
('O002','C002','P004','SR02','2023-01-12',4,120),
('O003','C003','P003','SR03','2023-01-15',2,17000),
('O004','C004','P005','SR04','2023-01-18',1,3200),
('O005','C005','P002','SR01','2023-01-20',3,2400);