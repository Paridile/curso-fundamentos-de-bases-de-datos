--Consultar
SELECT * FROM people;

--Modificar tabla - Agregar columna
ALTER TABLE `platziblog`.`people` 
ADD COLUMN `date_of_birth` DATETIME NULL AFTER `city`;

--Eliminar columna
ALTER TABLE `platziblog`.`people` 
DROP COLUMN `date_of_birth`;

--Crear vista
CREATE  OR REPLACE VIEW `all_people` AS SELECT * FROM people;

---------------------------------------------------------------------

--Comandos DML
INSERT,UPDATE,DELETE,SELECT

--Insertar 
INSERT INTO people(`last_name`,`first_name`,`address`,`city`)
VALUES('Hernandez','Monica','Reforma 22','Mexico');

--Actualizar
UPDATE people SET last_name = 'Chavez' , city='Merida'
WHERE person_id=1;

UPDATE people SET first_name='Juan' WHERE
city='Merida';

--Eliminar
DELETE FROM people WHERE person_id = 1;

--Consultar
SELECT first_name,last_name FROM people;

---------------------------------------------------------------------

--Eliminar tabla
DROP TABLE `platziblog`.`people`;

CREATE TABLE `platziblog`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `platziblog`.`etiqueta` (
  `id` INT NOT NULL,
  `nombre_etiqueta` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `platziblog`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `nickname` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  PRIMARY KEY (`id`));



