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


-----------------------------------------------

--WHERE

SELECT * FROM posts where id <50;
SELECT * FROM posts where id >=50;

SELECT * FROM posts where estatus='activo';

SELECT * FROM posts where estatus!='activo';

SELECT * FROM posts where titulo LIKE '%escandalo%';
SELECT * FROM posts where titulo LIKE '%roja';

SELECT * FROM posts where fecha_publicacion > '2025-01-01';
SELECT * FROM posts where fecha_publicacion <= '2025-01-01';

SELECT * FROM posts where fecha_publicacion BETWEEN '2025-01-01' AND '2025-12-31';

SELECT * FROM posts where id BETWEEN 50 AND 60;

SELECT * FROM posts where YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';
SELECT * FROM posts where MONTH(fecha_publicacion) = '04';

