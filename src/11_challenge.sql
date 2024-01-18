SELECT 
  al.title AS Album,
  al.release_year AS 'Ano de lançamento',
  ar.name AS Artista
FROM albums al
JOIN artists ar ON al.artist_id = ar.id
WHERE al.title LIKE '%you%'
ORDER BY al.release_year;
