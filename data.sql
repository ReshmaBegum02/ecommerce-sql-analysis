INSERT INTO customers VALUES
(1,'Rahul','rahul@email.com','Hyderabad'),
(2,'Priya','priya@email.com','Chennai'),
(3,'Arjun','arjun@email.com','Bangalore');

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000),
(102,'Headphones','Electronics',2000),
(103,'Smartphone','Electronics',25000),
(104,'Running Shoes','Fashion',3500);

INSERT INTO orders VALUES
(1,1,'2025-01-10',62000),
(2,2,'2025-01-11',3500),
(3,3,'2025-01-12',25000);

INSERT INTO order_items VALUES
(1,1,101,1),
(2,1,102,1),
(3,2,104,1),
(4,3,103,1);