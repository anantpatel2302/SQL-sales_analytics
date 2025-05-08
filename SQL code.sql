create database sales_insights;
use sales_insights;
create table customers 
(
customer_id int auto_increment primary key,
customer_name varchar(100),
email varchar(100),
location varchar(100)
);
create table products
(
product_id int auto_increment primary key,
product_name varchar(100),
category varchar(100),
price decimal(10,2)
);
create table sales_agent
(
agent_id int auto_increment primary key,
agent_name varchar(100),
region varchar(100)
);
create table sales 
(
sale_id int auto_increment primary key,
sale_date date,
customer_id int,
product_id int,
quantity_sold int,
agent_id int,
foreign key (customer_id) references customers(customer_id),
foreign key (product_id) references products(product_id),
foreign key (agent_id) references sales_agent(agent_id)
);

-- Customers data
insert into customers (customer_name, email, location) values
('John Doe', 'john@example.com', 'New York'),
('Jane Smith', 'jane@example.com', 'Los Angeles'),
('Mike Johnson', 'mike@example.com', 'Chicago'),
('Emily Davis', 'emily@example.com', 'Houston');

-- Products data
insert into products (product_name, category, price) values
('Laptop', 'Electronics', 800.00),
('Smartphone', 'Electronics', 600.00),
('Headphones', 'Accessories', 150.00),
('Backpack', 'Accessories', 80.00);

-- Sales Agents data
insert into sales_agent (agent_name, region) values
('Alice Brown', 'East Coast'),
('Bob White', 'West Coast');

-- Sales data
insert into sales (sale_date, customer_id, product_id, quantity_sold, agent_id) values
('2025-04-01', 1, 1, 2, 1),
('2025-04-02', 2, 2, 1, 2),
('2025-04-03', 3, 3, 3, 1),
('2025-04-04', 4, 4, 2, 2),
('2025-04-05', 1, 2, 1, 1);

SELECT SUM(p.price * s.quantity_sold) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

SELECT p.product_name, SUM(s.quantity_sold) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 5;

SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(p.price * s.quantity_sold) AS monthly_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

SELECT sa.region, SUM(p.price * s.quantity_sold) AS total_revenue
FROM sales s
JOIN sales_agent sa ON s.agent_id = sa.agent_id
JOIN products p ON s.product_id = p.product_id
GROUP BY sa.region;

SELECT sa.agent_name, SUM(p.price * s.quantity_sold) AS total_sales
FROM sales s
JOIN sales_agent sa ON s.agent_id = sa.agent_id
JOIN products p ON s.product_id = p.product_id
GROUP BY sa.agent_name
ORDER BY total_sales DESC;

CREATE VIEW monthly_revenue_view AS
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(p.price * s.quantity_sold) AS monthly_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month;
