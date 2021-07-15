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

-----------------------------------------------------------------------------
--WHERE NULL/NOT/AND

SELECT * FROM posts WHERE usuario_id IS NULL;
SELECT * FROM posts WHERE categoria_id IS NULL;

SELECT * FROM posts WHERE usuario_id IS NOT NULL;
SELECT * FROM posts WHERE usuario_id IS NOT NULL AND categoria_id IS NOT NULL;

SELECT * FROM posts WHERE usuario_id IS NOT NULL AND estatus = 'activo' AND id < 50 AND categoria_id = 2 AND YEAR(fecha_publicacion)='2025';

-------------------------------------------------------------------------------

--Group by

SELECT estatus, COUNT(*) AS post_quantity FROM posts GROUP BY estatus;

SELECT estatus, SUM(id)  FROM posts GROUP BY estatus;

SELECT YEAR(fecha_publicacion) AS post_year, count(*) AS post_quantity  FROM posts GROUP BY post_year;

SELECT MONTHNAME(fecha_publicacion) AS post_month, count(*) AS post_quantity  FROM posts GROUP BY post_month ORDER BY post_quantity DESC;

SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, count(*) AS post_quantity  FROM posts GROUP BY  post_month,estatus;


--------------------------------------------------------------------------------

--ORDER BY / HAVING

SELECT * FROM posts ORDER BY fecha_publicacion ASC;
SELECT * FROM posts ORDER BY fecha_publicacion DESC;

SELECT * FROM posts ORDER BY titulo;
SELECT * FROM posts ORDER BY id;

SELECT * FROM posts ORDER BY id;

SELECT * FROM posts ORDER BY fecha_publicacion LIMIT 5;

SELECT MONTHNAME(fecha_publicacion) as post_month, estatus, COUNT(*) AS post_quantity 
FROM posts GROUP BY estatus , post_month HAVING post_quantity > 1 ORDER BY post_month;

SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM		posts
GROUP BY estatus, post_month
HAVING estatus = 'activo'
ORDER BY post_month;

-------------------------------------------------------

--Nested queries

SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year 
FROM posts GROUP BY post_year) AS new_table_projection
GROUP BY new_table_projection.date 
ORDER BY new_table_projection.date;

SELECT * FROM posts WHERE fecha_publicacion = (
	SELECT MAX(fecha_publicacion) FROM posts
);
