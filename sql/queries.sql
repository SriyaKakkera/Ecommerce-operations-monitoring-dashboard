SELECT COUNT(*) FROM orders_data;

SELECT 
    order_id,
    order_status,
    delivery_time_days,
    is_delayed,
    order_total_value,
    payment_value,
    customer_city,
    customer_state
FROM orders_data
LIMIT 10;

SELECT COUNT(*) AS total_orders
FROM orders_data;

SELECT SUM(order_total_value) AS total_revenue
FROM orders_data;

SELECT AVG(delivery_time_days) AS avg_delivery_time
FROM orders_data;

SELECT COUNT(*) AS delayed_orders
FROM orders_data
WHERE is_delayed = TRUE;

SELECT ROUND(100.0 * SUM(CASE WHEN is_delayed = TRUE THEN 1 ELSE 0 END) / COUNT(*),2
    ) AS delayed_order_percentage
FROM orders_data;

SELECT order_status,COUNT(*) AS total_orders
FROM orders_data
GROUP BY order_status
ORDER BY total_orders DESC;

SELECT customer_state,ROUND(SUM(order_total_value)::numeric, 2) AS total_revenue
FROM orders_data
GROUP BY customer_state
ORDER BY total_revenue DESC
LIMIT 10;

