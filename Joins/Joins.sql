use stores;
CREATE TABLE customers1 (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100)
);


CREATE TABLE orders1 (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers1(customer_id)
);



INSERT INTO customers1 (first_name, last_name, email, phone, address) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Maple Street'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Oak Avenue'),
('Robert', 'Brown', 'robert.brown@example.com', '1231231234', '789 Pine Road'),
('Emily', 'Johnson', 'emily.johnson@example.com', '4564564567', '101 Cedar Lane');

INSERT INTO orders1 (customer_id, order_date, amount, status) VALUES
(1, '2024-01-15', 100.00, 'Shipped'),
(1, '2024-02-20', 250.50, 'Processing'),
(2, '2024-02-25', 150.75, 'Delivered'),
(3, '2024-03-10', 89.99, 'Cancelled'),
(4, '2024-03-15', 220.00, 'Shipped'),
(2, '2024-03-20', 75.25, 'Pending');

--  CROSS JOIN
SELECT *FROM orders1, customers1;

-- INNER JOIN
SELECT *FROM customers1
INNER JOIN  
orders1
ON ORDERS1.order_id = customers1.customer_id;

SELECT first_name, sum(amount) FROM customers1
INNER JOIN  
orders1
ON ORDERS1.order_id = customers1.customer_id
GROUP BY first_name;

-- LEFT JOIN
SELECT *FROM customers1
LEFT JOIN
orders1 
ON orders1.order_id = customers1.customer_id;

-- RIGHT JOIN
SELECT *FROM customers1
right JOIN
orders1 
ON orders1.order_id = customers1.customer_id;







