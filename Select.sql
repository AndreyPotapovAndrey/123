
-- 2.1

SELECT track_name, MAX(duration) FROM Track
GROUP BY track_name;

-- 2.2

SELECT track_name, duration FROM Track
WHERE duration  >= 210;

-- 2.3

SELECT compilation_name, realise_date
FROM Compilations
WHERE realise_date BETWEEN '2018-01-01' and '2020-01-01';

-- 2.4

SELECT name_performer
FROM Performers 
WHERE name_performer NOT LIKE '% %';

-- 2.5

SELECT track_name
FROM Track 
WHERE lower(track_name) LIKE '%мой%'
OR lower(track_name) LIKE '% мой %'
OR lower(track_name) LIKE '% мой%'
OR lower(track_name) LIKE '%мой %';


-- 3.1

SELECT name_genres, count(*)  from Performers p
JOIN PerformerGenre pg ON p.performersid = pg.performers_id
JOIN Genres g ON pg.genre_id = g.genresid 
GROUP BY name_genres
ORDER BY COUNT(g) DESC;

-- 3.2

SELECT count(*) as track_count  FROM Track t
JOIN  Albums a ON t.alb_id = a.albumsid
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31';

-- 3.3

SELECT name_album, AVG(duration) from Track t 
JOIN Albums a ON t.alb_id = a.albumsid
GROUP BY (a.name_album);

-- 3.4

SELECT name_performer FROM performers p  
JOIN Albums a ON p.performersid = a.albumsid
WHERE name_performer NOT IN (
SELECT name_performer
FROM Performers p
JOIN PerformerAlbums pa ON p.performersid = pa.perf_id
JOIN Albums a ON pa.album_id = a.albumsid
WHERE EXTRACT(year FROM year_of_release) = 2020
);

 или BETWEEN '2020-01-01' AND '2020-12-31'


-- 3.5

SELECT DISTINCT compilation_name
FROM Compilations c 
JOIN Compilationstrack ct ON c.compilationsid = ct.comp_id
JOIN Track t ON ct.track_id = t.track_id
JOIN PerformerAlbums pa ON t.alb_id = pa.album_id
JOIN Performers p ON p.performersid = pa.perf_id 
WHERE name_performer = 'Vibrasphere';





















