sql

CREATE database tyfosi;

use tyfosi;

CREATE TABLE `tifosi`.`client` (
    `id_client` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    `email` VARCHAR(150) NOT NULL , 
    PRIMARY KEY (`id_client`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`marque` (
    `id_marque` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    PRIMARY KEY (`id_marque`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`boisson` (
    `id_boisson` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    `id_marque` INT NOT NULL , 
    PRIMARY KEY (`id_boisson`), 
    INDEX (`id_marque`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`ingredient` (
    `id_ingredient` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    PRIMARY KEY (`id_ingredient`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`achat` (
    `id_achat` INT NOT NULL AUTO_INCREMENT , 
    `id_client` INT NOT NULL , 
    `id_menu` INT NOT NULL , 
    `date_achat` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id_achat`), 
    INDEX (`id_client`), 
    INDEX (`id_menu`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`menu` (
    `id_menu` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    `prix` DECIMAL(5,2) NOT NULL , 
    `id_boisson` INT NOT NULL , 
    `id_foccacia` INT NOT NULL , 
    PRIMARY KEY (`id_menu`), 
    INDEX (`id_boisson`), 
    INDEX (`id_foccacia`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`comprend` (
    `id_comprend` INT NOT NULL AUTO_INCREMENT , 
    `id_ingredient` INT NOT NULL , 
    `quantite` INT NOT NULL , 
    `id_foccacia` INT NOT NULL , 
    PRIMARY KEY (`id_comprend`), 
    INDEX (`id_foccacia`), 
    INDEX (`id_ingredient`)) 
    ENGINE = InnoDB;

CREATE TABLE `tifosi`.`foccacia` (
    `id_foccacia` INT NOT NULL AUTO_INCREMENT , 
    `nom` VARCHAR(50) NOT NULL , 
    `prix` DECIMAL(5,2) NOT NULL , 
    PRIMARY KEY (`id_foccacia`)) 
    ENGINE = InnoDB;

ALTER TABLE `boisson` ADD CONSTRAINT `appartient` FOREIGN KEY (`id_marque`) REFERENCES `marque`(`id_marque`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `achat` ADD CONSTRAINT `client_achat` FOREIGN KEY (`id_client`) REFERENCES `client`(`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `achat` ADD CONSTRAINT `menu_achat` FOREIGN KEY (`id_menu`) REFERENCES `menu`(`id_menu`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comprend` ADD CONSTRAINT `ingédient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient`(`id_ingredient`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `comprend` ADD CONSTRAINT `foccacia` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia`(`id_foccacia`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `menu` ADD CONSTRAINT `menu_boisson` FOREIGN KEY (`id_boisson`) REFERENCES `boisson`(`id_boisson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `menu` ADD CONSTRAINT `menu_foccacia` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia`(`id_foccacia`) ON DELETE RESTRICT ON UPDATE RESTRICT;