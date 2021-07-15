
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

CREATE TABLE `platziblog`.`posts` (
  `id` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `fecha_publicacion` TIMESTAMP NULL,
  `contenido` TEXT NOT NULL,
  `status` CHAR(8) NULL DEFAULT 'activo',
  `usuario_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`));


ALTER TABLE `platziblog`.`posts` 
ADD INDEX `post_usuarios_idx` (`usuario_id` ASC);
;
ALTER TABLE `platziblog`.`posts` 
ADD CONSTRAINT `post_usuarios`
  FOREIGN KEY (`usuario_id`)
  REFERENCES `platziblog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;


ALTER TABLE `platziblog`.`posts` 
ADD INDEX `post_categorias_idx` (`categoria_id` ASC);
;
ALTER TABLE `platziblog`.`posts` 
ADD CONSTRAINT `post_categorias`
  FOREIGN KEY (`categoria_id`)
  REFERENCES `platziblog`.`categorias` (`id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;


CREATE TABLE `platziblog`.`comentario` (
  `id` INT NOT NULL,
  `cuerpo_comentario` TEXT NOT NULL,
  `usuario_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `platziblog`.`comentario` 
ADD INDEX `comentario_usuario_idx` (`usuario_id` ASC);


ALTER TABLE `platziblog`.`comentario` 
ADD CONSTRAINT `comentario_usuario`
  FOREIGN KEY (`usuario_id`)
  REFERENCES `platziblog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `platziblog`.`comentario` 
ADD INDEX `comentario:post_idx` (`post_id` ASC);
;
ALTER TABLE `platziblog`.`comentario` 
ADD CONSTRAINT `comentario:post`
  FOREIGN KEY (`post_id`)
  REFERENCES `platziblog`.`posts` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `platziblog`.`post_etiquetas` (
  `id` INT NOT NULL,
  `post_id` INT NOT NULL,
  `etiqueta_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));





