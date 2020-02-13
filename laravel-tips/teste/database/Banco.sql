-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clientes
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nasc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plano1` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plano2` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plano3` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientes_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (3,'Claudianus Boast','cboast0@fastcompany.com','(19) 957645371','São Paulo','Araraquara','07/06/1993','Basic','Plus',NULL),(4,'Loni Jennions','ljennions1@va.gov','(19) 905613161','São Paulo','Limeira','09/05/1985','Free','Plus',NULL),(5,'Margi Gilhouley','mgilhouley2@telegraph.co.uk','(19) 966290104','São Paulo','Araraquara','13/09/1984','Free','Plus',NULL),(6,'Lexy Sprulls','lsprulls3@moonfruit.com','(19) 976121601','São Paulo','Rio Claro','19/10/1999','Free','Basic','Plus'),(7,'Marie Shatliff','mshatliff4@cbslocal.com','(19) 991376354','São Paulo','Rio Claro','20/07/1990','Free','Basic','Plus'),(8,'Graig Mouncey','gmouncey5@so-net.ne.jp','(19) 941806149','São Paulo','Araraquara','27/03/1990','Free','Basic','Plus'),(9,'Laurice Liger','lliger0@php.net','(35) 971740954','Minas Gerais','Areado','25/10/1992','Basic',NULL,NULL),(10,'Kendrick Sooper','ksooper1@slate.com','(31) 944324086','Minas Gerais','Belo Horizonte','02/06/1981','Basic',NULL,NULL),(11,'Gordon Levington','glevington2@hpost.com','(31) 922405868','Minas Gerais','Belo Horizonte','25/11/1993','Basic',NULL,NULL),(12,'Noam Scolland','nscolland3@mozilla.org','(35) 996817669','Minas Gerais','Areado','31/12/1999','Basic',NULL,NULL),(13,'Lindon Skehens','lskehens4@npr.org','(35) 967671104','Minas Gerais','Areado','10/01/1985','Basic',NULL,NULL),(14,'Kimbra Rase','krase5@topsy.com','(35) 999428030','Minas Gerais','Areado','05/05/1999','Plus',NULL,NULL),(15,'Lorenzo Fisk','lfisk6@businessweek.com','(31) 912695467','Minas Gerais','Belo Horizonte','22/12/1985','Plus',NULL,NULL),(16,'Bourke Flavelle','bflavelle7@fc2.com','(35) 959386145','Minas Gerais','Itapeva','10/04/1984','Plus',NULL,NULL),(17,'Curran McSharry','cmcsharry8@webeden.co.uk','(35) 902916131','Minas Gerais','Itapeva','15/01/1983','Free',NULL,NULL),(18,'Aveline Dowtry','adowtry9@miibeian.gov.cn','(31) 945227500','Minas Gerais','Belo Horizonte','23/12/1994','Free',NULL,NULL),(19,'John Sebastian','jsebastiana@cbslocal.com','(31) 907366740','Minas Gerais','Belo Horizonte','06/04/1998','Free',NULL,NULL),(20,'Reynolds Greenan','rgreenanb@bloomberg.com','(35) 923551410','Minas Gerais','Itapeva','19/07/1985','Free',NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_02_12_202152_create_clientes_table',1),(4,'2020_02_13_134134_create_planos_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planos`
--

DROP TABLE IF EXISTS `planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plano` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planos`
--

LOCK TABLES `planos` WRITE;
/*!40000 ALTER TABLE `planos` DISABLE KEYS */;
INSERT INTO `planos` VALUES (1,'Free','R$ 0,00'),(2,'Basic','R$ 100,00'),(3,'Plus','R$ 187,00');
/*!40000 ALTER TABLE `planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clientes'
--

--
-- Dumping routines for database 'clientes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-13 11:43:01
