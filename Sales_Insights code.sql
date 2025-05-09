create database sales_insights;
use sales_insights;
create table customers
(
     customer_id int auto_increment primary key,
     customer_name varchar(100),
     email varchar(100),
     location varchar(150)
);
create table products
(
     product_id int auto_increment primary key,
     product_name varchar(100),
     category varchar(100),
     price decimal(10,2)
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
     foreign key (product_id) references products(product_id)
);

-- customers data
insert into customers (customer_name, email, location) values
    ('John Doe', 'john@example.com', 'New York'),
    ('Jane Smith', 'jane@example.com', 'Los Angeles'),
    ('Mike Johnson', 'mike@example.com', 'Chicago'),
    ('Emily Davis', 'emily@example.com', 'Houston'),
    ('David Brown', 'david@example.com', 'Phoenix'),
    ('Sarah Wilson', 'sarah@example.com', 'Philadelphia'),
    ('Chris Moore', 'chris@example.com', 'San Antonio'),
    ('Laura Taylor', 'laura@example.com', 'San Diego'),
    ('Daniel Anderson', 'daniel@example.com', 'Dallas'),
    ('Olivia Thomas', 'olivia@example.com', 'San Jose'),
    ('James Jackson', 'james@example.com', 'Austin'),
    ('Emma White', 'emma@example.com', 'Jacksonville'),
    ('Matthew Harris', 'matthew@example.com', 'Fort Worth'),
    ('Sophia Martin', 'sophia@example.com', 'Columbus'),
    ('Anthony Thompson', 'anthony@example.com', 'Charlotte'),
    ('Isabella Garcia', 'isabella@example.com', 'San Francisco'),
    ('Andrew Martinez', 'andrew@example.com', 'Indianapolis'),
    ('Mia Robinson', 'mia@example.com', 'Seattle'),
    ('Joshua Clark', 'joshua@example.com', 'Denver'),
    ('Abigail Rodriguez', 'abigail@example.com', 'Washington'),
    ('Joseph Lewis', 'joseph@example.com', 'Boston'),
    ('Charlotte Lee', 'charlotte@example.com', 'El Paso'),
    ('Benjamin Walker', 'benjamin@example.com', 'Nashville'),
    ('Amelia Hall', 'amelia@example.com', 'Detroit'),
    ('Samuel Allen', 'samuel@example.com', 'Oklahoma City'),
    ('Evelyn Young', 'evelyn@example.com', 'Las Vegas'),
    ('Alexander Hernandez', 'alexander@example.com', 'Memphis'),
    ('Harper King', 'harper@example.com', 'Louisville'),
    ('Ryan Wright', 'ryan@example.com', 'Baltimore'),
    ('Ella Scott', 'ella@example.com', 'Milwaukee'),
    ('Dylan Green', 'dylan@example.com', 'Albuquerque'),
    ('Avery Adams', 'avery@example.com', 'Tucson'),
    ('Nathan Baker', 'nathan@example.com', 'Fresno'),
    ('Scarlett Nelson', 'scarlett@example.com', 'Mesa'),
    ('Christian Carter', 'christian@example.com', 'Sacramento'),
    ('Grace Mitchell', 'grace@example.com', 'Atlanta'),
    ('Jonathan Perez', 'jonathan@example.com', 'Kansas City'),
    ('Zoey Roberts', 'zoey@example.com', 'Colorado Springs'),
    ('Liam Turner', 'liam@example.com', 'Raleigh'),
    ('Chloe Phillips', 'chloe@example.com', 'Omaha'),
    ('Elijah Campbell', 'elijah@example.com', 'Miami'),
    ('Lily Parker', 'lily@example.com', 'Oakland'),
    ('Jackson Evans', 'jackson@example.com', 'Minneapolis'),
    ('Aria Edwards', 'aria@example.com', 'Tulsa'),
    ('Gabriel Collins', 'gabriel@example.com', 'Wichita'),
    ('Layla Stewart', 'layla@example.com', 'New Orleans'),
    ('Henry Sanchez', 'henry@example.com', 'Arlington'),
    ('Zoe Morris', 'zoe@example.com', 'Cleveland'),
    ('Lucas Rogers', 'lucas@example.com', 'Bakersfield'),
    ('Victoria Reed', 'victoria@example.com', 'Tampa');

-- products data
insert into products (product_name, category, price) values 
    ('Laptop', 'Electronics', 800.00),
    ('Smartphone', 'Electronics', 600.00),
    ('Headphones', 'Accessories', 150.00),
    ('Backpack', 'Accessories', 80.00),
    ('Laptop', 'Electronics', 800.00),
    ('Smartwatch', 'Electronics', 250.00),
    ('Bluetooth Speaker', 'Electronics', 120.00),
    ('Laptop', 'Electronics', 800.00),
    ('Keyboard', 'Accessories', 90.00),
    ('Monitor', 'Electronics', 300.00),
    ('Webcam', 'Accessories', 70.00),
    ('Smartphone', 'Electronics', 600.00),
    ('Flash Drive', 'Accessories', 25.00),
    ('Router', 'Electronics', 110.00),
    ('Smartphone', 'Electronics', 600.00),
    ('Wireless Charger', 'Accessories', 35.00),
    ('Office Chair', 'Furniture', 220.00),
    ('Desk Lamp', 'Furniture', 50.00),
    ('Desk Organizer', 'Accessories', 40.00),
    ('Smartwatch', 'Electronics', 250.00),
    ('Camera', 'Electronics', 700.00),
    ('Tripod', 'Accessories', 60.00),
    ('Microphone', 'Electronics', 100.00),
    ('Drawing Tablet', 'Electronics', 200.00),
    ('Smart Light Bulb', 'Electronics', 30.00),
    ('Fitness Tracker', 'Electronics', 180.00),
    ('Smartwatch', 'Electronics', 250.00),
    ('VR Headset', 'Electronics', 350.00),
    ('E-Reader', 'Electronics', 130.00),
    ('Coffee Maker', 'Appliances', 90.00),
    ('Laptop', 'Electronics', 800.00),
    ('Toaster', 'Appliances', 45.00),
    ('Electric Kettle', 'Appliances', 40.00),
    ('Hair Dryer', 'Personal Care', 55.00),
    ('Smartphone', 'Electronics', 600.00),
    ('Shaver', 'Personal Care', 85.00),
    ('Water Bottle', 'Accessories', 25.00),
    ('Notebook', 'Stationery', 10.00),
    ('Pen Set', 'Stationery', 15.00),
    ('Printer', 'Electronics', 180.00),
    ('Smartwatch', 'Electronics', 250.00),
    ('Paper Shredder', 'Electronics', 95.00),
    ('Filing Cabinet', 'Furniture', 150.00),
    ('Whiteboard', 'Furniture', 110.00),
    ('Webcam Cover', 'Accessories', 10.00),
    ('Cable Organizer', 'Accessories', 12.00),
    ('Laptop Stand', 'Accessories', 50.00),
    ('Tablet Case', 'Accessories', 35.00),
    ('Phone Case', 'Accessories', 20.00),
    ('Screen Protector', 'Accessories', 18.00);
    
-- sales data 
insert into sales (sale_date, customer_id, product_id, quantity_sold, agent_id) values
	 ('2025-03-20', 1, 1, 2, 1),
     ('2025-03-21', 2, 2, 1, 2),
     ('2025-03-22', 3, 3, 3, 1),
     ('2025-03-23', 4, 4, 2, 2),
     ('2025-03-24', 1, 2, 1, 1),
     ('2025-03-25', 5, 5, 1, 3),
     ('2025-03-26', 6, 6, 2, 4),
     ('2025-03-27', 7, 7, 1, 2),
     ('2025-03-28', 8, 8, 3, 1),
	 ('2025-03-29', 9, 9, 1, 3),
	 ('2025-03-30', 10, 10, 2, 2),
     ('2025-03-31', 11, 1, 1, 1),
     ('2025-04-01', 12, 2, 2, 4),
     ('2025-04-02', 13, 3, 1, 3),
     ('2025-04-03', 14, 4, 2, 2),
	 ('2025-04-04', 15, 5, 1, 1),
     ('2025-04-05', 2, 6, 3, 4),
     ('2025-04-06', 3, 7, 2, 3),
     ('2025-04-07', 4, 8, 1, 2),
     ('2025-04-08', 5, 9, 2, 1),
     ('2025-04-09', 6, 10, 1, 4),
     ('2025-04-10', 7, 1, 3, 3),
     ('2025-04-11', 8, 2, 2, 2),
     ('2025-04-12', 9, 3, 1, 1),
     ('2025-04-13', 10, 4, 1, 4),
     ('2025-04-14', 11, 5, 2, 3),
     ('2025-04-15', 12, 6, 1, 2),
     ('2025-04-16', 13, 7, 2, 1),
     ('2025-04-17', 14, 8, 3, 4),
     ('2025-04-18', 15, 9, 1, 3),
	 ('2025-04-19', 1, 10, 2, 2),
     ('2025-04-20', 2, 1, 1, 1),
     ('2025-04-21', 3, 2, 2, 4),
     ('2025-04-22', 4, 3, 1, 3),
     ('2025-04-23', 5, 4, 2, 2),
     ('2025-04-24', 6, 5, 1, 1),
     ('2025-04-25', 7, 6, 2, 4),
     ('2025-04-26', 8, 7, 3, 3),
     ('2025-04-27', 9, 8, 1, 2),
     ('2025-04-28', 10, 9, 1, 1),
     ('2025-04-29', 11, 10, 2, 4),
     ('2025-04-30', 12, 1, 1, 3),
     ('2025-05-01', 13, 2, 2, 2),
     ('2025-05-02', 14, 3, 3, 1),
     ('2025-05-03', 15, 4, 1, 4),
     ('2025-05-04', 1, 5, 2, 3),
     ('2025-05-05', 2, 6, 2, 2),
     ('2025-05-06', 3, 7, 1, 1),
     ('2025-05-07', 4, 8, 3, 4),
     ('2025-05-08', 5, 9, 2, 3);
     
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


CREATE VIEW monthly_revenue_view AS
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(p.price * s.quantity_sold) AS monthly_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month;
select*from sales;

with weekly_revenue as (
  select 
    category,
    date_format(s.sale_date, '%Y-%u') as week,
    sum(p.price * s.quantity_sold) as total_sales
  from sales s
  join products p on s.product_id = p.product_id
  group by category, date_format(s.sale_date, '%Y-%u')
),
revenue_with_lag as (
  select 
    category,
    week,
    total_sales,
    lag(total_sales) over(partition by category order by week) as previous_week_revenue
  from weekly_revenue
)
select 
  category,
  week,
  total_sales,
  round((total_sales - previous_week_revenue)/previous_week_revenue * 100, 2) as wow_growth_rate
from revenue_with_lag;


  -- drop database sales_insights