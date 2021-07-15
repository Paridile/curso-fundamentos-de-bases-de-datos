SELECT * 
FROM posts
WHERE fecha_publicacion > '2024';


SELECT city, count(*) AS total
FROM people WHERE active = true
GROUP BY city
ORDER BY total DESC
HAVING total >= 2;



SELECT titulo, fecha_publicacion, estatus FROM posts;

SELECT titulo AS encabezado, fecha_publicacion AS publicacion, estatus AS estado FROM posts;

SELECT count(*) AS 'total posts' FROM posts;