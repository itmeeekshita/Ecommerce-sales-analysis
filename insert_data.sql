-- insert_data.sql
USE ecommerce_db;

INSERT INTO Customers VALUES
(1, 'Alice Johnson', 'alice@example.com', 'New York', 'USA'),
(2, 'Bob Smith', 'bob@example.com', 'Los Angeles', 'USA'),
(3, 'Charlie Brown', 'charlie@example.com', 'London', 'UK'),
(4, 'David Wilson', 'david@example.com', 'Sydney', 'Australia');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 800.00, 10),
(102, 'Smartphone', 'Electronics', 500.00, 20),
(103, 'Headphones', 'Accessories', 50.00, 50),
(104, 'Backpack', 'Bags', 40.00, 30);

INSERT INTO Orders VALUES
(201, 1, '2025-08-01'),
(202, 2, '2025-08-03'),
(203, 1, '2025-08-05'),
(204, 3, '2025-08-08');

INSERT INTO OrderDetails VALUES
(301, 201, 101, 1),
(302, 201, 103, 2),
(303, 202, 102, 1),
(304, 203, 104, 3),
(305, 204, 101, 1),
(306, 204, 102, 2);
