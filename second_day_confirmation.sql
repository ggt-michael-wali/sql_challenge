SELECT user_id FROM emails AS e INNER JOIN texts AS t ON e.email_id = t.email_id WHERE EXTRACT(DAY FROM t.action_date - e.signup_date) =1;

