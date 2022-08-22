SELECT e.department,
    e.first_name,
    e.salary,
    avg_d.avg_s
FROM employee AS e
INNER JOIN (
    SELECT department,
        avg(salary) AS avg_s
    FROM employee
    GROUP BY department
    ) AS avg_d
    ON e.department = avg_d.department
