SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8 ;
USE mydb ;

CREATE TABLE IF NOT EXISTS mydb.acaoaventura (
  idacao INT NOT NULL,
  PRIMARY KEY (idacao))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mydb.terror (
  idacao INT NOT NULL,
  PRIMARY KEY (idacao))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mydb.drama (
  idacao INT NOT NULL,
  PRIMARY KEY (idacao))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mydb.comedia (
  idacao INT NOT NULL,
  PRIMARY KEY (idacao))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mydb.tema (
  idtema INT NOT NULL,
  acaoaventura_idacao INT NOT NULL,
  terror_idacao INT NOT NULL,
  comedia_idacao INT NOT NULL,
  drama_idacao INT NOT NULL,
  PRIMARY KEY (idtema),
  INDEX fk_tema_acaoaventura_idx (acaoaventura_idacao ) ,
  INDEX fk_tema_terror1_idx (terror_idacao ) ,
  INDEX fk_tema_comedia1_idx (comedia_idacao ) ,
  INDEX fk_tema_drama1_idx (drama_idacao ) ,
  CONSTRAINT fk_tema_acaoaventura
    FOREIGN KEY (acaoaventura_idacao)
    REFERENCES mydb.acaoaventura (idacao)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_tema_terror1
    FOREIGN KEY (terror_idacao)
    REFERENCES mydb.terror (idacao)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_tema_comedia1
    FOREIGN KEY (comedia_idacao)
    REFERENCES mydb.comedia (idacao)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_tema_drama1
    FOREIGN KEY (drama_idacao)
    REFERENCES mydb.drama (idacao)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
