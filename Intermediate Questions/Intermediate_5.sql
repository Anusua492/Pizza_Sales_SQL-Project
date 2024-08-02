-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name,
    round(SUM(orders_details.quantity * pizzas.price),2) AS Revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY SUM(orders_details.quantity * pizzas.price) DESC
LIMIT 3;
 