-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema platziblog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema platziblog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `platziblog` DEFAULT CHARACTER SET utf8 ;
USE `platziblog` ;

-- -----------------------------------------------------
-- Table `platziblog`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`categorias` (
  `idCategoria` INT(11) NOT NULL,
  `nombre_categoria` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `platziblog`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`usuarios` (
  `idUsuario` INT(11) NOT NULL,
  `login` VARCHAR(32) NOT NULL,
  `password` VARCHAR(40) NOT NULL,
  `nickname` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `platziblog`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`posts` (
  `idPost` INT(11) NOT NULL,
  `titulo` VARCHAR(150) NOT NULL,
  `fecha_publicacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contenido` TEXT NOT NULL,
  `estatus` CHAR(8) NULL DEFAULT NULL,
  `idUsuario` INT(11) NULL DEFAULT NULL,
  `idCategoria` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idPost`),
  INDEX `idUsuario` (`idUsuario` ASC) VISIBLE,
  INDEX `idCategoria` (`idCategoria` ASC) VISIBLE,
  CONSTRAINT `posts_ibfk_1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `platziblog`.`usuarios` (`idUsuario`),
  CONSTRAINT `posts_ibfk_2`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `platziblog`.`categorias` (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `platziblog`.`comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`comentarios` (
  `idComentario` INT(11) NOT NULL,
  `comentario` TEXT NOT NULL,
  `idUsuario` INT(11) NOT NULL,
  `idPost` INT(11) NOT NULL,
  PRIMARY KEY (`idComentario`),
  INDEX `idUsuario` (`idUsuario` ASC) VISIBLE,
  INDEX `idPost` (`idPost` ASC) VISIBLE,
  CONSTRAINT `comentarios_ibfk_1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `platziblog`.`usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `comentarios_ibfk_2`
    FOREIGN KEY (`idPost`)
    REFERENCES `platziblog`.`posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `platziblog`.`etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`etiquetas` (
  `idEtiqueta` INT(11) NOT NULL,
  `nombre_etiqueta` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idEtiqueta`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `platziblog`.`posts_etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`posts_etiquetas` (
  `idPostEtiqueta` INT(11) NOT NULL,
  `idPost` INT(11) NOT NULL,
  `idEtiqueta` INT(11) NOT NULL,
  PRIMARY KEY (`idPostEtiqueta`),
  INDEX `idPost` (`idPost` ASC) VISIBLE,
  INDEX `idEtiqueta` (`idEtiqueta` ASC) VISIBLE,
  CONSTRAINT `posts_etiquetas_ibfk_1`
    FOREIGN KEY (`idPost`)
    REFERENCES `platziblog`.`posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `posts_etiquetas_ibfk_2`
    FOREIGN KEY (`idEtiqueta`)
    REFERENCES `platziblog`.`etiquetas` (`idEtiqueta`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
