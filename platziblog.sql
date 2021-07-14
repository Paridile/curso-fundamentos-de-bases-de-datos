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
CREATE SCHEMA IF NOT EXISTS `platziblog` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
USE `platziblog` ;

-- -----------------------------------------------------
-- Table `platziblog`.`people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`people` (
  `person_id` INT(11) NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `city` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci;

USE `platziblog` ;

-- -----------------------------------------------------
-- Placeholder table for view `platziblog`.`platzi_people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platziblog`.`platzi_people` (`person_id` INT, `last_name` INT, `first_name` INT, `address` INT, `city` INT);

-- -----------------------------------------------------
-- View `platziblog`.`platzi_people`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `platziblog`.`platzi_people`;
USE `platziblog`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platziblog`.`platzi_people` AS select `platziblog`.`people`.`person_id` AS `person_id`,`platziblog`.`people`.`last_name` AS `last_name`,`platziblog`.`people`.`first_name` AS `first_name`,`platziblog`.`people`.`address` AS `address`,`platziblog`.`people`.`city` AS `city` from `platziblog`.`people`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
