SELECT album_name, album_year FROM album
  WHERE album_year = 2018;

SELECT track_name, track_duration FROM track
  ORDER BY track_duration DESC
  LIMIT 1;

SELECT track_name FROM track
  WHERE track_duration >= 210;

SELECT collection_name FROM collection
  WHERE collection_year BETWEEN 2018 AND 2020;

SELECT artist_name FROM artist
   WHERE artist_name NOT LIKE('% %');

SELECT track_name FROM track
   WHERE track_name LIKE ('% My %');