-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema eats
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eats
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eats` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema platziblog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema platziblog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `platziblog` DEFAULT CHARACTER SET latin1 ;
USE `eats` ;

-- -----------------------------------------------------
-- Table `eats`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`direccion` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `municipio` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  `calle` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`restaurante` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_restaurante_direccion1_idx` (`direccion_id` ASC)  ,
  CONSTRAINT `fk_restaurante_direccion1`
    FOREIGN KEY (`direccion_id`)
    REFERENCES `eats`.`direccion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`comida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`comida` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `restaurante_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comida_restaurante1_idx` (`restaurante_id` ASC)  ,
  CONSTRAINT `fk_comida_restaurante1`
    FOREIGN KEY (`restaurante_id`)
    REFERENCES `eats`.`restaurante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`forma_pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`forma_pago` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`cliente` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `direccion_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cliente_direccion1_idx` (`direccion_id` ASC)  ,
  CONSTRAINT `fk_cliente_direccion1`
    FOREIGN KEY (`direccion_id`)
    REFERENCES `eats`.`direccion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`repartidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`repartidor` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `cartera` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`pedido` (
  `id` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `total` DOUBLE NOT NULL,
  `repartidor_id` INT NOT NULL,
  `forma_pago_id` INT NOT NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pedido_repartidor1_idx` (`repartidor_id` ASC)  ,
  INDEX `fk_pedido_forma_pago1_idx` (`forma_pago_id` ASC)  ,
  INDEX `fk_pedido_cliente1_idx` (`cliente_id` ASC)  ,
  CONSTRAINT `fk_pedido_repartidor1`
    FOREIGN KEY (`repartidor_id`)
    REFERENCES `eats`.`repartidor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_forma_pago1`
    FOREIGN KEY (`forma_pago_id`)
    REFERENCES `eats`.`forma_pago` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `eats`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`comida_has_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`comida_has_pedido` (
  `id` VARCHAR(45) NOT NULL,
  `cantidad` INT NOT NULL,
  `subtotal` DOUBLE NOT NULL,
  `comida_id` INT NOT NULL,
  `pedido_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comida_has_pedido_comida1_idx` (`comida_id` ASC)  ,
  INDEX `fk_comida_has_pedido_pedido1_idx` (`pedido_id` ASC)  ,
  CONSTRAINT `fk_comida_has_pedido_comida1`
    FOREIGN KEY (`comida_id`)
    REFERENCES `eats`.`comida` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comida_has_pedido_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `eats`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `platziblog` ;

-- -----------------------------------------------------
-- Table `platziblog`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`categorias` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `platziblog`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`usuarios` (
  `id` INT(11) NOT NULL,
  `login` VARCHAR(30) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `nickname` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `platziblog`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`posts` (
  `id` INT(11) NOT NULL,
  `titulo` VARCHAR(130) NOT NULL,
  `fecha_publicacion` TIMESTAMP NULL DEFAULT NULL,
  `contenido` TEXT NOT NULL,
  `estatus` CHAR(8) NULL DEFAULT 'activo',
  `usuario_id` INT(11) NULL DEFAULT NULL,
  `categoria_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `posts_usuarios_idx` (`usuario_id` ASC)  ,
  INDEX `posts_categorias_idx` (`categoria_id` ASC)  ,
  CONSTRAINT `posts_categorias`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `platziblog`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `posts_usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `platziblog`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `platziblog`.`comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`comentarios` (
  `id` INT(11) NOT NULL,
  `cuerpo_comentario` TEXT NOT NULL,
  `usuario_id` INT(11) NOT NULL,
  `post_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `comentarios_usuario_idx` (`usuario_id` ASC)  ,
  INDEX `comentarios_post_idx` (`post_id` ASC)  ,
  CONSTRAINT `comentarios_post`
    FOREIGN KEY (`post_id`)
    REFERENCES `platziblog`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `comentarios_usuario`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `platziblog`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `platziblog`.`etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`etiquetas` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `platziblog`.`posts_etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`posts_etiquetas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `post_id` INT(11) NOT NULL,
  `etiqueta_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `postsetiquetas_post_idx` (`post_id` ASC)  ,
  INDEX `postsetiquetas_etiquetas_idx` (`etiqueta_id` ASC)  ,
  CONSTRAINT `postsetiquetas_etiquetas`
    FOREIGN KEY (`etiqueta_id`)
    REFERENCES `platziblog`.`etiquetas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `postsetiquetas_post`
    FOREIGN KEY (`post_id`)
    REFERENCES `platziblog`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 54
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
