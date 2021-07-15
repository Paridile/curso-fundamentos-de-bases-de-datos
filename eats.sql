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
  PRIMARY KEY (`id`, `direccion_id`),
  INDEX `fk_restaurante_direccion1_idx` (`direccion_id` ASC) VISIBLE,
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
  PRIMARY KEY (`id`, `restaurante_id`),
  INDEX `fk_comida_restaurante1_idx` (`restaurante_id` ASC) VISIBLE,
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
  PRIMARY KEY (`id`, `direccion_id`),
  INDEX `fk_cliente_direccion_idx` (`direccion_id` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_direccion`
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
  `forma_pago_id` INT NOT NULL,
  `cliente_id` INT NOT NULL,
  `repartidor_id` INT NOT NULL,
  PRIMARY KEY (`id`, `forma_pago_id`, `cliente_id`, `repartidor_id`),
  INDEX `fk_pedido_forma_pago1_idx` (`forma_pago_id` ASC) VISIBLE,
  INDEX `fk_pedido_cliente1_idx` (`cliente_id` ASC) VISIBLE,
  INDEX `fk_pedido_repartidor1_idx` (`repartidor_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_forma_pago1`
    FOREIGN KEY (`forma_pago_id`)
    REFERENCES `eats`.`forma_pago` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `eats`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_repartidor1`
    FOREIGN KEY (`repartidor_id`)
    REFERENCES `eats`.`repartidor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eats`.`comida_has_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eats`.`comida_has_pedido` (
  `id` VARCHAR(45) NOT NULL,
  `comida_id` INT NOT NULL,
  `pedido_id` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `subtotal` DOUBLE NOT NULL,
  PRIMARY KEY (`id`, `comida_id`, `pedido_id`),
  INDEX `fk_comida_has_pedido_pedido1_idx` (`pedido_id` ASC) VISIBLE,
  INDEX `fk_comida_has_pedido_comida1_idx` (`comida_id` ASC) VISIBLE,
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


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
