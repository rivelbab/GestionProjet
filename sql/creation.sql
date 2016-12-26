-- ----------------------------------------------------------------------------------
--	creation de la base de donnees pour la gestion de projet   --
--  	dbname: gestionprojet / par rivelnet					--
-- 	creation.sql										--
-------------------------------------------------------------------------------------

-- CREATE DATABASE gestionprojet CHARACTER SET 'utf8';

-- USE gestionprojet;

--  creation des tables

CREATE TABLE User(
	id_user		INT		UNSIGNED	NOT	NULL	AUTO_INCREMENT,
	nom		VARCHAR(50),
	prenom		VARCHAR(50),
	date_naissance DATETIME,
	tel			INT		UNSIGNED,
	situation		VARCHAR(50),
	division		INT		UNSIGNED,
	PRIMARY KEY(id_user)
)ENGINE=InnoDB;

CREATE TABLE Projet(
	id_projet		INT		UNSIGNED	NOT	NULL	AUTO_INCREMENT,
	denomination VARCHAR(50)		NOT	NULL,
	responsable	INT		UNSIGNED,
	secteur		INT		UNSIGNED,
	but			TEXT,
	lieu			VARCHAR(50),
	commentaire	TEXT,
	PRIMARY KEY(id_projet)	
)ENGINE=InnoDB;

CREATE TABLE Activite(
	id_activite	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	utilisateur	INT	UNSIGNED,
	projet		INT UNSIGNED,
	PRIMARY KEY(id_activite)
)ENGINE=InnoDB;

CREATE TABLE Division(
	id_division	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	libelle		VARCHAR(50) NOT NULL,
	PRIMARY KEY(id_division)
)ENGINE = InnoDB;

CREATE TABLE Secteur(
	id_secteur	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	libelle		VARCHAR(50) NOT NULL,
	PRIMARY KEY(id_secteur)
)ENGINE=InnoDB;

SHOW TABLES;

DESCRIBE User;
DESCRIBE Projet;
DESCRIBE Activite;
DESCRIBE Division;
DESCRIBE Secteur;
