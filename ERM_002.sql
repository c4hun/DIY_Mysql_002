-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Mysql_ERM_002
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Mysql_ERM_002
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Mysql_ERM_002` ;
USE `Mysql_ERM_002` ;

-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`RESERVATION TICKET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`RESERVATION TICKET` (
  `id_Partenaire` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `nom_Film` VARCHAR(45) NOT NULL,
  `prix_Film` INT NOT NULL,
  PRIMARY KEY (`id_Partenaire`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`DIGITALISATION TICKET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`DIGITALISATION TICKET` (
  `id_Partenaire` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `nom_Film` VARCHAR(45) NOT NULL,
  `prix_Film` INT NOT NULL,
  PRIMARY KEY (`id_Partenaire`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`PLACE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`PLACE` (
  `id_Salle` INT NOT NULL,
  `nom_Salle` VARCHAR(45) NOT NULL,
  `id_Siège` INT NOT NULL,
  `nom_Siège` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Salle`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`FILM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`FILM` (
  `id_Film` INT NOT NULL,
  `nom_Film` VARCHAR(45) NOT NULL,
  `prix_Film` INT NOT NULL,
  `date_Film` DATETIME NOT NULL,
  `nom_Salle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Film`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`CINEMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`CINEMA` (
  `id_Cinéma` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `addresse_Cinéma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Cinéma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`UTILISATEUR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`UTILISATEUR` (
  `id_Partenaire` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `mots_de_pass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Partenaire`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`PAIEMENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`PAIEMENT` (
  `id_factureTicket` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `prix_Film` INT NOT NULL,
  `façon_Paiement` VARCHAR(45) NOT NULL,
  `date_Paiement` DATETIME NOT NULL,
  PRIMARY KEY (`id_factureTicket`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`ADMINISTRATEUR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`ADMINISTRATEUR` (
  `id_Administrateur` INT NOT NULL,
  `nom_Cinéma` VARCHAR(45) NOT NULL,
  `mots_de_pass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Administrateur`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mysql_ERM_002`.`CLIENTELE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mysql_ERM_002`.`CLIENTELE` (
  `id_Clientèle` INT NOT NULL,
  `façon_Paiement` VARCHAR(45) NOT NULL,
  `date_Paiement` DATETIME NOT NULL,
  `date_Naissance` DATETIME NOT NULL,
  `métier` VARCHAR(20) NOT NULL,
  `numéro_Téléphone` VARCHAR(45) NOT NULL,
  `Mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Clientèle`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
