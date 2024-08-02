-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS time, COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY time; 