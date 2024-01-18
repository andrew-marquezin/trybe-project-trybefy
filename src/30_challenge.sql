SELECT
  ar.name AS Artista,
  COUNT(af.user_id) AS 'Total de seguidores'
FROM artists ar
JOIN artists_followers af ON ar.id = af.artist_id
GROUP BY ar.name
HAVING COUNT(af.user_id) < 5;
