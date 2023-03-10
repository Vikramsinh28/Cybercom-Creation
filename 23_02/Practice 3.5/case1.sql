-- create database sales;
-- use sales;

-- create table customers
-- (
--     customer_id int auto_increment primary key,
--     first_name varchar(50),
--     last_name varchar(50),
--     email varchar(50),
--     phone varchar(50)
-- );

-- create table orders
-- (
--     order_id int auto_increment primary key,
--     order_date date,
--     customer_id int,
--     product_id int
-- );

-- create table products
-- (
--     product_id int auto_increment primary key,
--     product_name varchar(50),
--     unit_price int,
--     description varchar(50)
-- );

-- insert into customers(first_name, last_name, email, phone)
-- values('John', 'Smith', 'john@gmail.com', '123456789'),
-- ('Peter', 'Smith', 'Peter@gmail.com' , '543456789'),
-- ('Mary', 'Smith', 'mary@gmail.com', '123626789'),
-- ('Jon', 'Smith', 'jon@gmail.com', '123459889'),
-- ('Pter', 'Smith', 'pter@gmail.com', '123146789');


-- insert into orders(order_date, customer_id, product_id)
-- values('2020-01-01', 3, 1)
-- ('2020-01-02', 2, 2),
-- ('2020-01-03', 3, 3),
-- ('2020-01-04', 4, 4),
-- ('2020-01-05', 5, 5),
-- ('2020-01-06', 1, 2),
-- ('2020-01-07', 2, 3),
-- ('2020-01-08', 3, 4),
-- ('2020-01-09', 4, 5),
-- ('2020-01-10', 5, 1);

-- insert into products(product_name, unit_price, description)
-- values('product1', 100, 'description1'),
-- ('product2', 200, 'description2'),
-- ('product3', 300, 'description3'),
-- ('product4', 400, 'description4'),
-- ('product5', 500, 'description5');

-- Question 2

-- select customers.first_name , customers.email , customers.phone , count(orders.customer_id) from customers 
-- join orders
-- on customers.customer_id = orders.customer_id 
-- group by customers.first_name
-- order by count(orders.customer_id) desc

-- Question 3

-- select p.product_name , count(o.product_id) as total_orders ,
-- sum(p.unit_price) as  total_revenue
-- from products as p
-- join orders as o
-- on p.product_id = o.product_id
-- group by p.product_name 
-- order by total_revenue

-- Question 4

-- select c.first_name, c.last_name, c.email, p.product_name from customers c 
-- inner join orders o on c.customer_id = o.customer_id
-- inner join products p on o.product_id = p.product_id
-- where c.customer_id in (select customer_id from orders group by customer_id having count(customer_id) > 1);

-- Question 5
-- select c.first_name, c.last_name, c.email from customers c
-- inner join orders o on c.customer_id = o.customer_id
-- inner join products p on o.product_id = p.product_id
-- where p.unit_price > 50;

-- Question 6
-- select p.product_name , count(o.product_id) from products p
-- inner join orders o on o.product_id = p.product_id
-- group by p.product_name
-- having count(o.product_id) > 1;

-- select p.product_name, count(o.product_id) as total_orders from products p
-- inner join orders o on o.product_id = p.product_id   
-- group by p.product_name
-- having total_orders > 1;


