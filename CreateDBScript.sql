-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema realestatedb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema realestatedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `realestatedb` ;
USE `realestatedb` ;

-- -----------------------------------------------------
-- Table `realestatedb`.`employees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`employees` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `office_address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`customers` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`owners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`owners` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`owners` (
  `owner_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`owner_id`),
  UNIQUE INDEX `owner_id_UNIQUE` (`owner_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`employees_customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`employees_customers` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`employees_customers` (
  `employee_id` INT NOT NULL,
  `customer_id` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`owners_properties`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`owners_properties` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`owners_properties` (
  `owner_id` INT NOT NULL,
  `property_address` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`properties`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`properties` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`properties` (
  `property_address` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `employee_amount` INT NULL,
  PRIMARY KEY (`property_address`),
  UNIQUE INDEX `property_address_UNIQUE` (`property_address` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`consultations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`consultations` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`consultations` (
  `consultation_id` INT NOT NULL,
  `property_address` VARCHAR(45) NOT NULL,
  `employee_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`consultation_id`),
  UNIQUE INDEX `consultation_id_UNIQUE` (`consultation_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`offers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`offers` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`offers` (
  `offer_number` INT NOT NULL,
  `amount` FLOAT NOT NULL,
  `customer_id` INT NOT NULL,
  `owner_id` INT NOT NULL,
  `listing_id` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`offer_number`),
  UNIQUE INDEX `offer_number_UNIQUE` (`offer_number` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `realestatedb`.`listings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `realestatedb`.`listings` ;

CREATE TABLE IF NOT EXISTS `realestatedb`.`listings` (
  `listing_id` INT NOT NULL,
  `property_address` VARCHAR(45) NOT NULL,
  `price` FLOAT NOT NULL,
  PRIMARY KEY (`listing_id`),
  UNIQUE INDEX `listing_id_UNIQUE` (`listing_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE INDEX indexCustomerID ON customers(customer_id);
CREATE INDEX indexEmployeeID ON employees(employee_id);
CREATE INDEX indexOwnerID ON owners(owner_id);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;