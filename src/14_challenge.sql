SELECT 
  ar.name AS Artista,
  GROUP_CONCAT(al.title SEPARATOR ',') AS 'Álbuns'
FROM artists ar
JOIN albums al ON ar.id = al.artist_id
GROUP BY ar.name
ORDER BY ar.name;