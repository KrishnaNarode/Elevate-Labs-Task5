CREATE DATABASE Task5DB;
USE Task5DB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_name, city) VALUES
('Raghav', 'Pune'),
('Atharva', 'Mumbai'),
('Nilesh', 'Delhi'),
('Omkar', 'Chennai');

INSERT INTO Orders (order_date, amount, customer_id) VALUES
('2025-09-01', 5000, 1),
('2025-09-03', 2500, 2),
('2025-09-05', 3000, 1),
('2025-09-07', 1500, NULL); 

select * from Customers;
select * from Orders;

-- INNER JOIN
SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN
SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN
SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- FULL JOIN 
SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

