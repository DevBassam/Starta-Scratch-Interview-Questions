-- Problem ID: 9992
SELECT artist,
    count(*)
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY 2 DESC
