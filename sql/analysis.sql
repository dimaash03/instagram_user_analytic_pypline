SELECT 
	country,
	COUNT(*) AS user_count,
	ROUND(100.00 * COUNT(*) / (SELECT COUNT(*) FROM data), 2) AS user_pct
FROM data
GROUP BY country
ORDER BY user_count DESC;
/*SQL query to get country-wise user counts and percentages */