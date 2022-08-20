SELECT user_id,
	avg(session_time)
FROM (
	SELECT user_id,
		extract(day FROM TIMESTAMP),
		min(CASE 
				WHEN action = 'page_exit'
					THEN TIMESTAMP
				END) - max(CASE 
				WHEN action = 'page_load'
					THEN TIMESTAMP
				END) AS session_time
	FROM facebook_web_log
	GROUP BY 1,
		2
	HAVING (
			min(CASE 
					WHEN action = 'page_exit'
						THEN TIMESTAMP
					END) - max(CASE 
					WHEN action = 'page_load'
						THEN TIMESTAMP
					END)
			) IS NOT NULL
	) AS session
GROUP BY user_id