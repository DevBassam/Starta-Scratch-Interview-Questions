-- Problem ID: 10288
WITH results
AS (
    SELECT sum(CASE WHEN search_results_position >= 0
                THEN 1 ELSE 0 END) AS total,
           sum(CASE WHEN clicked = 1 AND search_results_position <= 3
                THEN 1 ELSE 0 END) AS clicked,
           sum(CASE WHEN clicked = 0 AND search_results_position <= 3
                THEN 1 ELSE 0 END) AS notclicked
    FROM fb_search_events
    )
SELECT (clicked * 1.0 / total) * 100 AS top_3_clicked,
       (notclicked * 1.0 / total) * 100 AS top_3_notclicked
FROM results
