SELECT name, year FROM album
  WHERE year = 2018;

SELECT name, duration FROM track
  ORDER BY duration DESC
  LIMIT 1;

SELECT name FROM track
  WHERE duration >= 210;

SELECT name FROM collection
  WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artist
   WHERE name NOT LIKE('% %');

SELECT name FROM track
   WHERE name LIKE ('% My %');