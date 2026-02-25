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

-- Q3: How does posting activity relate to engagement?
WITH per_user AS (
    SELECT
        user_id,
        posts_created_per_week,
        (
            0.30 * daily_active_minutes_instagram +
            0.20 * reels_watched_per_day +
            0.15 * stories_viewed_per_day +
            0.15 * sessions_per_day +
            0.10 * likes_given_per_day +
            0.05 * comments_written_per_day +
            0.05 * dms_sent_per_week
        ) AS engagement_score
    FROM data
),
by_posts AS (
    SELECT
        posts_created_per_week,
        COUNT(*) AS users,
        ROUND(AVG(engagement_score), 2) AS avg_engagement_score
    FROM per_user
    GROUP BY posts_created_per_week
)
SELECT *
FROM by_posts
ORDER BY posts_created_per_week;
-- Another sql query
WITH per_user AS (
    SELECT
        user_id,
        posts_created_per_week,
        (
            0.30 * daily_active_minutes_instagram +
            0.20 * reels_watched_per_day +
            0.15 * stories_viewed_per_day +
            0.15 * sessions_per_day +
            0.10 * likes_given_per_day +
            0.05 * comments_written_per_day +
            0.05 * dms_sent_per_week
        ) AS engagement_score
    FROM data
),
by_posts AS (
    SELECT
        posts_created_per_week,
        COUNT(*) AS users,
        ROUND(AVG(engagement_score), 2) AS avg_engagement_score
    FROM per_user
    GROUP BY posts_created_per_week
    HAVING COUNT(*) >= 100
)
SELECT *
FROM by_posts
ORDER BY posts_created_per_week;