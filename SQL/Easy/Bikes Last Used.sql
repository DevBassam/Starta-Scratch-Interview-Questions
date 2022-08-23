-- Problem ID: 10176
SELECT bike_number,
	max(end_time)
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY 2 DESC;
