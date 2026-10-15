SELECT user_id, tweet_date, ROUND(
    AVG(
    tweet_count OVER(
        PARTITION BY user_id
        ORDER BY tweet_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    )
    ),  2 
) AS rolling_average
FROM tweets
ORDER BY user_id, tweet_date;

-- 184.1616

ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY tweet_date) AS row_num  