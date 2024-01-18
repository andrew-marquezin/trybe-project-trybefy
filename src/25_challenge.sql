SELECT
  al.title AS 'Álbum',
  COUNT(h.song_id) AS 'Quantidade de músicas reproduzidas'
FROM albums al
JOIN songs s ON al.id = s.album_id
JOIN history_play_songs h ON s.id = h.song_id
GROUP BY al.title
ORDER BY
  COUNT(h.song_id) DESC,
  al.title
LIMIT 5;
