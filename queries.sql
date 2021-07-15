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

----------------------------------------------------
--JOIN


SELECT *  FROM usuarios LEFT JOIN posts
ON usuarios.id = posts.usuario_id;

SELECT *  FROM usuarios LEFT JOIN posts
ON usuarios.id = posts.usuario_id where posts.usuario_id IS NULL;

SELECT *  FROM usuarios RIGHT JOIN posts
ON usuarios.id = posts.usuario_id WHERE posts.usuario_id IS null;

SELECT *  FROM usuarios INNER JOIN posts
ON usuarios.id = posts.usuario_id;

SELECT *  FROM usuarios LEFT JOIN posts
ON usuarios.id = posts.usuario_id UNION  
SELECT *  FROM usuarios RIGHT JOIN posts
ON usuarios.id = posts.usuario_id;

SELECT *  FROM usuarios LEFT JOIN posts
ON usuarios.id = posts.usuario_id WHERE posts.usuario_id IS NULL UNION  
SELECT *  FROM usuarios RIGHT JOIN posts
ON usuarios.id = posts.usuario_id WHERE posts.usuario_id IS NULL;