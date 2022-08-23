-- Problem ID: 10061
SELECT fe.location,
    avg(fh.popularity)
FROM facebook_employees AS fe
INNER JOIN facebook_hack_survey AS fh
    ON fe.id = fh.employee_id
GROUP BY fe.location
