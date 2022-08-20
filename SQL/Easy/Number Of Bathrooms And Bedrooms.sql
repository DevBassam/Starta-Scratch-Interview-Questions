SELECT city,
	property_type,
	avg(bathrooms),
	avg(bedrooms)
FROM airbnb_search_details
GROUP BY city,
	property_type;
