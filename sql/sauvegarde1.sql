-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gestionprojet
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Activite`
--

DROP TABLE IF EXISTS `Activite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Activite` (
  `id_activite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utilisateur` int(10) unsigned DEFAULT NULL,
  `projet` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_activite`),
  KEY `fk_utilisateur_Activite_User` (`utilisateur`),
  KEY `fk_projet_Activite_Projet` (`projet`),
  CONSTRAINT `fk_projet_Activite_Projet` FOREIGN KEY (`projet`) REFERENCES `Projet` (`id_projet`),
  CONSTRAINT `fk_utilisateur_Activite_User` FOREIGN KEY (`utilisateur`) REFERENCES `User` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activite`
--

LOCK TABLES `Activite` WRITE;
/*!40000 ALTER TABLE `Activite` DISABLE KEYS */;
INSERT INTO `Activite` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `Activite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Division`
--

DROP TABLE IF EXISTS `Division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Division` (
  `id_division` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_division`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Division`
--

LOCK TABLES `Division` WRITE;
/*!40000 ALTER TABLE `Division` DISABLE KEYS */;
INSERT INTO `Division` VALUES (1,'Promoteur'),(2,'Chef de projet');
/*!40000 ALTER TABLE `Division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projet`
--

DROP TABLE IF EXISTS `Projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Projet` (
  `id_projet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `denomination` varchar(50) NOT NULL,
  `responsable` int(10) unsigned DEFAULT NULL,
  `secteur` int(10) unsigned DEFAULT NULL,
  `but` text,
  `lieu` varchar(50) DEFAULT NULL,
  `commentaire` text,
  PRIMARY KEY (`id_projet`),
  KEY `fk_responsable_Projet_User` (`responsable`),
  KEY `fk_secteur_Projet_Secteur` (`secteur`),
  CONSTRAINT `fk_secteur_Projet_Secteur` FOREIGN KEY (`secteur`) REFERENCES `Secteur` (`id_secteur`),
  CONSTRAINT `fk_responsable_Projet_User` FOREIGN KEY (`responsable`) REFERENCES `User` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projet`
--

LOCK TABLES `Projet` WRITE;
/*!40000 ALTER TABLE `Projet` DISABLE KEYS */;
INSERT INTO `Projet` VALUES (1,'Le Gabon en main',1,1,NULL,'Libreville',NULL),(2,'Vers un Gabon Moderne',2,2,NULL,'Libreville',NULL);
/*!40000 ALTER TABLE `Projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Secteur`
--

DROP TABLE IF EXISTS `Secteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Secteur` (
  `id_secteur` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_secteur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Secteur`
--

LOCK TABLES `Secteur` WRITE;
/*!40000 ALTER TABLE `Secteur` DISABLE KEYS */;
INSERT INTO `Secteur` VALUES (1,'Tourisme'),(2,'Service');
/*!40000 ALTER TABLE `Secteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `tel` int(10) unsigned DEFAULT NULL,
  `situation` varchar(50) DEFAULT NULL,
  `division` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `fk_division_User_Division` (`division`),
  CONSTRAINT `fk_division_User_Division` FOREIGN KEY (`division`) REFERENCES `Division` (`id_division`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'TSAMBA','Gatien',NULL,2271116,'Celibataire',1),(2,'BABK','Rivelnet','1992-09-25 21:30:00',2222937,'Celibataire',2);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-12 15:42:03
