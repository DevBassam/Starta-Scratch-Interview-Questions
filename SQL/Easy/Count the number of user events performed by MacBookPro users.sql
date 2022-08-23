-- Problem ID: 9653
SELECT event_name, COUNT(*) 
FROM playbook_events
WHERE device = 'macbook pro'
GROUP BY event_name
ORDER BY 2 DESC
