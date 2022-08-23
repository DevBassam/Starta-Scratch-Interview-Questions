-- Problem ID: 10156
SELECT country,
    count(country)
FROM airbnb_units
INNER JOIN (
    SELECT DISTINCT host_id
    FROM airbnb_hosts
    WHERE age < 30
    ) AS under_30
ON under_30.host_id = airbnb_units.host_id
WHERE unit_type = 'Apartment'
GROUP BY country
