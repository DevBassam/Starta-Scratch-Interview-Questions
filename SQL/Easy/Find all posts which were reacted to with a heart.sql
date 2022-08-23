-- Problem ID: 10087
SELECT DISTINCT fb.*
FROM facebook_posts AS fb
INNER JOIN facebook_reactions AS fr
USING (post_id)
WHERE reaction = 'heart'
