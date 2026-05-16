

USE swiggy_analytics;

-- Top 10 Cities by Number of Restaurants
SELECT TOP 10 
    city_clean, 
    COUNT(*) AS total_restaurants
FROM restaurants
GROUP BY city_clean
ORDER BY total_restaurants DESC;