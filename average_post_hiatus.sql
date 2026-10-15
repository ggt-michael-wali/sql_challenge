SELECT
	user_id,
	MAX(post_date)::date - MIN(post_date)::date AS days_between
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING COUNT(*) > 1;