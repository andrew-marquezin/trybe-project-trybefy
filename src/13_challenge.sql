SELECT ar.name AS Artista
FROM artists ar
INNER JOIN albums al ON al.artist_id = ar.id
GROUP BY ar.name
HAVING COUNT(al.artist_id) >= 3
ORDER BY ar.name;