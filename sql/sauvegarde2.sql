-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gestionprojet2
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
-- Table structure for table `Planif`
--

DROP TABLE IF EXISTS `Planif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Planif` (
  `id_planif` int(10) unsigned NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `heured` int(11) DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `heuref` int(11) DEFAULT NULL,
  `nomc` varchar(50) DEFAULT NULL,
  `pnomc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_planif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Planif`
--

LOCK TABLES `Planif` WRITE;
/*!40000 ALTER TABLE `Planif` DISABLE KEYS */;
INSERT INTO `Planif` VALUES (1,'Tourisme','2014-11-25',15,'2015-01-29',14,'SAMBA','Divin');
/*!40000 ALTER TABLE `Planif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projet`
--

DROP TABLE IF EXISTS `Projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Projet` (
  `id_projet` int(10) unsigned NOT NULL,
  `nompro` varchar(50) DEFAULT NULL,
  `but` text,
  `lieu` varchar(50) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `nec` int(11) DEFAULT NULL,
  `secteur` varchar(50) DEFAULT NULL,
  `ca` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projet`
--

LOCK TABLES `Projet` WRITE;
/*!40000 ALTER TABLE `Projet` DISABLE KEYS */;
INSERT INTO `Projet` VALUES (1,'le Gabon en main','decouvrir le Gabon...','Libreville','SARL',12,'Tourisme',1000000);
/*!40000 ALTER TABLE `Projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id_user` int(10) unsigned NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `tel` int(10) unsigned DEFAULT NULL,
  `situation` varchar(50) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bp` int(10) unsigned DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `pays` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'TSAMBA','Gatien',2271116,'Celibataire',25,'gatien@yahoo.fr',2536,'Libreville','Gabon');
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

-- Dump completed on 2015-01-10 17:48:39
