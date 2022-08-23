-- Problem ID: 10353
SELECT t.worker_title
FROM title AS t
INNER JOIN worker AS w
	ON w.worker_id = t.worker_ref_id
WHERE w.salary = (
		SELECT max(salary)
		FROM worker
		)
