SELECT *
FROM worker
WHERE EXTRACT(month FROM joining_date) = 2
	AND EXTRACT(YEAR FROM joining_date) = 2014