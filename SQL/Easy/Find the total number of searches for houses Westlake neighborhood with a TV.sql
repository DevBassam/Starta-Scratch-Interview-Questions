SELECT count(*)
FROM airbnb_search_details
WHERE neighbourhood = 'Westlake'
    AND amenities LIKE '%TV%'
