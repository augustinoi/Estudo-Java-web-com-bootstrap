-- MySQL Script generated by MySQL Workbench
-- Tue Apr 10 17:18:11 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_over_system
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_over_system
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_over_system` DEFAULT CHARACTER SET utf8 ;
USE `db_over_system` ;

-- -----------------------------------------------------
-- Table `db_over_system`.` CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.` CLIENTE` (
  `idCLIENTE` INT NOT NULL AUTO_INCREMENT,
  `NOME_FANTASIA` VARCHAR(45) NOT NULL,
  `CNPJ` VARCHAR(18) NOT NULL,
  `SERVICO_CONTRATADO` VARCHAR(45) NOT NULL,
  `TELEFONE` VARCHAR(15) NOT NULL,
  `EMAIL` VARCHAR(35) NULL,
  `DESCRICAO` VARCHAR(45) NULL,
  PRIMARY KEY (`idCLIENTE`),
  UNIQUE INDEX `idCLIENTE_UNIQUE` (`idCLIENTE` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`USUARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`USUARIO` (
  `idUSUARIO` INT NOT NULL AUTO_INCREMENT,
  `USERNAME` VARCHAR(45) NOT NULL,
  `SENHA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUSUARIO`),
  UNIQUE INDEX `idUSUARIO_UNIQUE` (`idUSUARIO` ASC),
  UNIQUE INDEX `USERNAME_UNIQUE` (`USERNAME` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`FUNCIONARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`FUNCIONARIO` (
  `idCADSATRO DE FUNCIONARIO` INT NOT NULL AUTO_INCREMENT,
  `CPF` VARCHAR(15) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `RG` VARCHAR(9) NOT NULL,
  `DATA_DE_NASCIMENTO` DATE NOT NULL,
  `SEXO` VARCHAR(45) NOT NULL,
  `CARGO` VARCHAR(45) NOT NULL,
  `TELEFONE` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NULL,
  `USUARIO_idUSUARIO` INT NOT NULL,
  PRIMARY KEY (`idCADSATRO DE FUNCIONARIO`),
  UNIQUE INDEX `idCADSATRO DE FUNCIONARIO_UNIQUE` (`idCADSATRO DE FUNCIONARIO` ASC),
  INDEX `fk_FUNCIONARIO_USUARIO1_idx` (`USUARIO_idUSUARIO` ASC),
  CONSTRAINT `fk_FUNCIONARIO_USUARIO1`
    FOREIGN KEY (`USUARIO_idUSUARIO`)
    REFERENCES `db_over_system`.`USUARIO` (`idUSUARIO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`ENTRADA_PRODUTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`ENTRADA_PRODUTO` (
  `idENTRADA_PRODUTO` INT NOT NULL AUTO_INCREMENT,
  `QUANT` INT(11) NOT NULL,
  `VALOR_UNIT` DECIMAL(9,2) NOT NULL DEFAULT 0.00,
  `DATA_ENTRADA` DATE NOT NULL,
  PRIMARY KEY (`idENTRADA_PRODUTO`),
  UNIQUE INDEX `idENTRADA_PRODUTO_UNIQUE` (`idENTRADA_PRODUTO` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`SAIDA_PRODUTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`SAIDA_PRODUTO` (
  `idENTRADA_PRODUTO` INT NOT NULL AUTO_INCREMENT,
  `QUANT` INT(11) NOT NULL,
  `VALOR_UNIT` DECIMAL(9,2) NOT NULL DEFAULT 0.00,
  `DATA_SAIDA` DATE NOT NULL,
  PRIMARY KEY (`idENTRADA_PRODUTO`),
  UNIQUE INDEX `idENTRADA_PRODUTO_UNIQUE` (`idENTRADA_PRODUTO` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`TIPO_PRODUTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`TIPO_PRODUTO` (
  `idTIPO_PRODUTO` INT NOT NULL,
  `CATEGORIA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTIPO_PRODUTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`PRODUTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`PRODUTO` (
  `idPRODUTO` INT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(45) NOT NULL,
  `STATU` VARCHAR(12) NOT NULL,
  `ENTRADA_PRODUTO_idENTRADA_PRODUTO` INT NOT NULL,
  `SAIDA_PRODUTO_idENTRADA_PRODUTO` INT NOT NULL,
  `TIPO_PRODUTO_idTIPO_PRODUTO` INT NOT NULL,
  PRIMARY KEY (`idPRODUTO`),
  UNIQUE INDEX `idPRODUTO_UNIQUE` (`idPRODUTO` ASC),
  INDEX `fk_PRODUTO_ENTRADA_PRODUTO1_idx` (`ENTRADA_PRODUTO_idENTRADA_PRODUTO` ASC),
  INDEX `fk_PRODUTO_SAIDA_PRODUTO1_idx` (`SAIDA_PRODUTO_idENTRADA_PRODUTO` ASC),
  INDEX `fk_PRODUTO_TIPO_PRODUTO1_idx` (`TIPO_PRODUTO_idTIPO_PRODUTO` ASC),
  CONSTRAINT `fk_PRODUTO_ENTRADA_PRODUTO1`
    FOREIGN KEY (`ENTRADA_PRODUTO_idENTRADA_PRODUTO`)
    REFERENCES `db_over_system`.`ENTRADA_PRODUTO` (`idENTRADA_PRODUTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_SAIDA_PRODUTO1`
    FOREIGN KEY (`SAIDA_PRODUTO_idENTRADA_PRODUTO`)
    REFERENCES `db_over_system`.`SAIDA_PRODUTO` (`idENTRADA_PRODUTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_TIPO_PRODUTO1`
    FOREIGN KEY (`TIPO_PRODUTO_idTIPO_PRODUTO`)
    REFERENCES `db_over_system`.`TIPO_PRODUTO` (`idTIPO_PRODUTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`ESTOQUE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`ESTOQUE` (
  `idESTOQUE` INT NOT NULL AUTO_INCREMENT,
  `QUANT` INT(11) NOT NULL,
  `VALOR_UNIT` DECIMAL(9,2) NOT NULL DEFAULT 0.00,
  `PRODUTO_idPRODUTO` INT NOT NULL,
  PRIMARY KEY (`idESTOQUE`),
  UNIQUE INDEX `idESTOQUE_UNIQUE` (`idESTOQUE` ASC),
  INDEX `fk_ESTOQUE_PRODUTO1_idx` (`PRODUTO_idPRODUTO` ASC),
  CONSTRAINT `fk_ESTOQUE_PRODUTO1`
    FOREIGN KEY (`PRODUTO_idPRODUTO`)
    REFERENCES `db_over_system`.`PRODUTO` (`idPRODUTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_over_system`.`ENDERECO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_over_system`.`ENDERECO` (
  `idENDERECO` INT NOT NULL,
  `CEP` VARCHAR(45) NOT NULL,
  `ENDERECO` VARCHAR(45) NOT NULL,
  `UF` VARCHAR(45) NOT NULL,
  `COMPLEMENTO` VARCHAR(45) NULL,
  `CLIENTE_idCLIENTE` INT NOT NULL,
  `FUNCIONARIO_idCADSATRO DE FUNCIONARIO` INT NOT NULL,
  PRIMARY KEY (`idENDERECO`),
  INDEX `fk_ENDERECO_ CLIENTE1_idx` (`CLIENTE_idCLIENTE` ASC),
  INDEX `fk_ENDERECO_FUNCIONARIO1_idx` (`FUNCIONARIO_idCADSATRO DE FUNCIONARIO` ASC),
  CONSTRAINT `fk_ENDERECO_ CLIENTE1`
    FOREIGN KEY (`CLIENTE_idCLIENTE`)
    REFERENCES `db_over_system`.` CLIENTE` (`idCLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ENDERECO_FUNCIONARIO1`
    FOREIGN KEY (`FUNCIONARIO_idCADSATRO DE FUNCIONARIO`)
    REFERENCES `db_over_system`.`FUNCIONARIO` (`idCADSATRO DE FUNCIONARIO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;