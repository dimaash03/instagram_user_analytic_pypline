-- Q1: Which countries have the largest user base?
SELECT
	country,
	COUNT(*) AS user_count,
	ROUND(100.00 * COUNT(*) / (SELECT COUNT(*) FROM data), 2) AS user_pct
FROM data
GROUP BY country
ORDER BY user_count DESC;

-- Q2: Average engagement metrics by country
SELECT
    country,
    COUNT(*) AS users,
    ROUND(AVG(daily_active_minutes_instagram), 2) AS avg_minutes_per_user,
    ROUND(AVG(stories_viewed_per_day), 2) AS avg_stories_per_user,
    ROUND(AVG(reels_watched_per_day), 2) AS avg_reels_per_user,
    ROUND(AVG(sessions_per_day), 2) AS avg_sessions_per_user,
    ROUND(AVG(likes_given_per_day), 2) AS avg_likes_per_user,
    ROUND(AVG(comments_written_per_day), 2) AS avg_comments_per_user,
    ROUND(AVG(dms_sent_per_week), 2) AS avg_dms_per_user
FROM data
GROUP BY country
ORDER BY avg_minutes_per_user DESC;


