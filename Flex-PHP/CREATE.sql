SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `EmployeeDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `EmployeeDB` ;

-- -----------------------------------------------------
-- Table `EmployeeDB`.`Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmployeeDB`.`Department` ;

CREATE  TABLE IF NOT EXISTS `EmployeeDB`.`Department` (
  `idDepartment` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(200) NULL ,
  PRIMARY KEY (`idDepartment`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmployeeDB`.`Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmployeeDB`.`Employee` ;

CREATE  TABLE IF NOT EXISTS `EmployeeDB`.`Employee` (
  `idEmployee` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(250) NULL ,
  `Surname` VARCHAR(250) NULL ,
  `Score` INT NULL ,
  `Department_idDepartment` INT NOT NULL ,
  PRIMARY KEY (`idEmployee`) ,
  INDEX `fk_Employee_Department` (`Department_idDepartment` ASC) ,
  CONSTRAINT `fk_Employee_Department`
    FOREIGN KEY (`Department_idDepartment` )
    REFERENCES `EmployeeDB`.`Department` (`idDepartment` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
