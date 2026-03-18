CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mouse', 'Electronics'),
(3, 'Desk Chair', 'Furniture');

INSERT INTO dim_store VALUES
(1, 'Store A', 'New York'),
(2, 'Store B', 'Chicago');

INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-01-02', 1, 2023);

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 2000.00),
(2, 2, 2, 2, 1, 500.00),
(3, 1, 1, 2, 3, 1500.00),
(4, 2, 2, 1, 1, 1000.00),
(5, 1, 1, 3, 2, 800.00),
(6, 2, 2, 3, 1, 400.00),
(7, 1, 1, 1, 1, 1000.00),
(8, 2, 2, 2, 2, 1000.00),
(9, 1, 1, 3, 1, 400.00),
(10, 2, 2, 1, 3, 3000.00);

