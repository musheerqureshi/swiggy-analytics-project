

USE swiggy_analytics;

-- Top 10 Most Active Riders
SELECT TOP 10
    rider_id,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(delivery_duration_min), 2) AS avg_delivery_time
FROM delivery
GROUP BY rider_id
ORDER BY total_orders DESC;