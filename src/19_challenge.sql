SELECT
  s.title AS 'Título',
  s.duration_in_seconds AS 'Duração',
  al.title AS 'Álbum'
FROM songs s
JOIN albums al ON s.album_id = al.id
WHERE duration_in_seconds BETWEEN 300 AND 480
ORDER BY duration_in_seconds;