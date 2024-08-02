-- Group the orders by date and calculate the average number of pizzas ordered per day.

select orders.order_date as Date , sum(orders_details.quantity) as Quantity,
avg(sum(orders_details.quantity)) over() as Average_Quantity
from orders join orders_details
on orders.order_id = orders_details.order_id
group by orders.order_date;