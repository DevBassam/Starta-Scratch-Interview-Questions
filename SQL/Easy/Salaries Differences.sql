SELECT max(salary) - (
		SELECT max(salary)
		FROM db_employee AS e
		INNER JOIN db_dept AS d
			ON d.id = e.department_id
		WHERE d.department = 'engineering'
		)
FROM db_employee AS e
INNER JOIN db_dept AS d
	ON d.id = e.department_id
WHERE d.department = 'marketing';