use pizzahut;
-- CREATE TABLE orders (
-- order_id int primary key,
-- order_date date,
-- order_time time
-- );

-- CREATE TABLE orders_details (
-- order_details_id int primary key,
-- order_id int,
-- pizza_id text, 
-- quantity int
-- );

-- 1. Retrieve the total number of orders placed.
-- SELECT COUNT(order_id) as Total_Order_placed
-- FROM orders;

-- 2. Calculate the total revenue generated from pizza sales.
-- SELECT  ROUND(SUM(p.price*o.quantity),2) AS total_revenue
-- FROM pizzas as p
-- JOIN orders_details as o
-- ON p.pizza_id = o.pizza_id;

-- 3. Identify the highest-priced pizza.
-- SELECT pizza_types.name, pizzas.price
-- FROM pizza_types 
-- JOIN pizzas
-- ON pizza_types.pizza_type_id = pizzas.pizza_type_id
-- ORDER BY price DESC
-- LIMIT 1;

-- 4.Identify the most common pizza size ordered.
-- SELECT pizzas.size, count(orders_details.order_details_id) as order_count
-- FROM pizzas
-- JOIN orders_details
-- ON pizzas.pizza_id = orders_details.pizza_id
-- GROUP BY pizzas.size
-- ORDER BY order_count DESC;

-- 5.List the top 5 most ordered pizza types along with their quantities.
-- SELECT pizza_types.name, sum(orders_details.quantity) as order_quantity
-- FROM pizza_types
-- JOIN pizzas
-- ON pizza_types.pizza_type_id = pizzas.pizza_type_id
-- JOIN orders_details
-- ON orders_details.pizza_id = pizzas.pizza_id
-- GROUP BY pizza_types.name
-- ORDER BY order_quantity desc LIMIT 5;

-- 6.Join the necessary tables to find the total quantity of each pizza category ordered.
-- SELECT pizza_types.category, sum(orders_details.quantity) as total_quantity
-- FROM pizza_types
-- JOIN pizzas
-- ON pizza_types.pizza_type_id = pizzas.pizza_type_id
-- JOIN orders_details
-- ON pizzas.pizza_id = orders_details.pizza_id
-- GROUP BY pizza_types.category
-- ORDER BY total_quantity desc;

-- 7.Determine the top 3 most ordered pizza types based on revenue.
-- SELECT pizza_types.name, sum(pizzas.price * orders_details.quantity) as total_revenue
-- FROM pizza_types
-- JOIN pizzas
-- ON pizza_types.pizza_type_id = pizzas.pizza_type_id
-- JOIN orders_details
-- ON pizzas.pizza_id = orders_details.pizza_id
-- GROUP BY pizza_types.name
-- ORDER BY total_revenue desc LIMIT 3;

-- 8.Join relevant tables to find the category-wise distribution of pizzas.
-- SELECT category, COUNT(category) AS TOTAL
-- FROM pizza_types
-- GROUP BY category
-- ORDER BY TOTAL desc;

-- 9.Determine the top 3 most ordered pizza types based on revenue for each pizza category.
-- SELECT pizza_types.name, pizza_types.category, sum(pizzas.price * orders_details.quantity) as total_revenue
-- FROM pizza_types
-- JOIN pizzas
-- ON pizza_types.pizza_type_id = pizzas.pizza_type_id
-- JOIN orders_details
-- ON pizzas.pizza_id = orders_details.pizza_id
-- GROUP BY  pizza_types.name,
-- pizza_types.category
-- ORDER BY total_revenue desc
-- LIMIT 3;

-- 10.Determine the distribution of orders by hour of the day.
-- SELECT hour(order_time) as hour, count(order_id) as order_count
-- FROM orders
-- GROUP BY hour(order_time);


