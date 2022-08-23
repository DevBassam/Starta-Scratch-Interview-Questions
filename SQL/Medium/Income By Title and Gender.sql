-- Problem ID: 10077
SELECT se.employee_title,
    se.sex,
    AVG(se.salary + sb.total_bonus) AS total_compensation
FROM sf_employee AS se
INNER JOIN (
    SELECT worker_ref_id,
        SUM(bonus) AS total_bonus
    FROM sf_bonus
    GROUP BY worker_ref_id
    ) AS sb
    ON se.id = sb.worker_ref_id
GROUP BY se.employee_title,
    se.sex
