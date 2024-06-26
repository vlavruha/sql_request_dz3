-- Задание 2

SELECT name, duration FROM track 
WHERE duration = (select MAX(duration) from track);

SELECT name FROM track
WHERE duration >= 210;

SELECT name FROM collection
WHERE year >= 2018 AND year <= 2020;

SELECT name FROM performer
WHERE name NOT LIKE '%% %%';

SELECT name FROM track 
WHERE name ILIKE '%%my%%' OR name ILIKE '%%мой%%';

-- Задание 3

SELECT g."name", count(p.performer_id) 
FROM genre g
JOIN performergenres p ON g.id = p.genre_id 
GROUP BY g."name"; 


SELECT a."name", a."year", count(t.album_id) 
FROM album a
JOIN track t ON a.id = t.album_id
WHERE a."year" BETWEEN 2019 AND 2020
GROUP BY a."name", a."year";

SELECT a."name", AVG(t.duration)
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a."name";

SELECT DISTINCT p."name", a."year"  
FROM performer p
JOIN performeralbums pa  ON p.id = pa.performer_id
JOIN album a ON pa.album_id = a.id
WHERE a."year" != 2020;

SELECT c."name" FROM collection c
JOIN trackcollection tc ON c.id = tc.collection_id
JOIN track t ON tc.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN performeralbums pa ON a.id = pa.album_id
JOIN performer p ON p.id = pa.performer_id
WHERE p."name" = 'Сплин'
GROUP BY c."name"
ORDER BY c."name";

--Задание 4

SELECT DISTINCT a."name"
FROM album a
JOIN performeralbums pa ON a.id = pa.album_id
JOIN performer p ON pa.performer_id = p.id
JOIN performergenres pg ON p.id = pg.performer_id
GROUP BY p."name", a."name"
HAVING count(pg.genre_id) > 1;

SELECT t."name" FROM track t
LEFT JOIN trackcollection tc ON t.id = tc.track_id
WHERE tc.track_id IS NULL;

SELECT p."name", t.duration
FROM performer p 
JOIN performeralbums pa ON p.id = pa.performer_id
JOIN album a ON pa.album_id = a.id
JOIN track t ON a.id = t.album_id
WHERE t.duration IN (SELECT MIN(duration) FROM track);

SELECT a."name", count(t.id)
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a."name"
HAVING count(t.id) IN 
  (SELECT count(t2.id) FROM album a2 
   JOIN track t2 ON a2.id = t2.album_id
   GROUP BY a2."name"
   ORDER BY count(t2.id)
   LIMIT 1);




