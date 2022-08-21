SELECT sector,
    max(marketvalue)
FROM forbes_global_2010_2014
GROUP BY sector
ORDER BY 2 DESC;
