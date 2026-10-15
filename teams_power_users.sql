SELECT
	sender_id,
	COUNT(*)
FROM messages
WHERE sent_date > '2022-07-31'
GROUP BY sender_id
ORDER BY count DESC
LIMIT 2;