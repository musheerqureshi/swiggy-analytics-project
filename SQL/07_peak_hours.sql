

USE swiggy_analytics;

-- Peak Order Hours
SELECT 
    DATEPART(HOUR, order_time) AS order_hour,
    COUNT(*) AS total_orders
FROM delivery
GROUP BY DATEPART(HOUR, order_time)
ORDER BY total_orders DESC;