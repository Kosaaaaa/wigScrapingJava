-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: wig_stocks
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `changePercent` float DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,'XTB','XTB',17.15,-0.87,189000,'2021-03-23 14:12:31'),(2,'ACP','ASSECOPOL',68.7,1.33,16700,'2021-03-23 14:15:53'),(3,'ALE','ALLEGRO',57.04,-2.99,2270000,'2021-03-23 14:15:53'),(4,'ALR','ALIOR',23.43,0.47,112000,'2021-03-23 14:15:53'),(5,'ATT','GRUPAAZOTY',29.5,-0.34,42000,'2021-03-23 14:15:53'),(6,'CCC','CCC',92,-0.82,36600,'2021-03-23 14:15:53'),(7,'CDR','CDPROJEKT',214,-1.38,348000,'2021-03-23 14:15:53'),(8,'CPS','CYFRPLSAT',28.82,-0.07,58900,'2021-03-23 14:15:53'),(9,'DNP','DINOPL',252,-1.56,50500,'2021-03-23 14:15:53'),(10,'EAT','AMREST',32.1,-2.28,44300,'2021-03-23 14:15:53'),(11,'ENA','ENEA',6.185,-2.14,96000,'2021-03-23 14:15:53'),(12,'EUR','EUROCASH',14.45,3.29,631000,'2021-03-23 14:15:53'),(13,'JSW','JSW',31.31,-5.12,1180000,'2021-03-23 14:15:53'),(14,'KGH','KGHM',178.6,-1.33,170000,'2021-03-23 14:15:53'),(15,'KRU','KRUK',190.3,-0.1,4760,'2021-03-23 14:15:53'),(16,'LPP','LPP',7965,-1.06,0,'2021-03-23 14:15:53'),(17,'LTS','LOTOS',42.82,-2.99,386000,'2021-03-23 14:15:53'),(18,'MBK','MBANK',221.2,0.09,6310,'2021-03-23 14:15:53'),(19,'MIL','MILLENNIUM',3.754,-1.37,451000,'2021-03-23 14:15:53'),(20,'MRC','MERCATOR',339,0.3,101000,'2021-03-23 14:15:53'),(21,'OPL','ORANGEPL',6.425,-1.15,161000,'2021-03-23 14:15:53'),(22,'PEO','PEKAO',70.86,1.08,384000,'2021-03-23 14:15:53'),(23,'PGE','PGE',6.5,-0.61,580000,'2021-03-23 14:15:53'),(24,'PGN','PGNIG',5.55,-0.54,1970000,'2021-03-23 14:15:53'),(25,'PKN','PKNORLEN',62.66,-2.22,480000,'2021-03-23 14:15:53'),(26,'PKO','PKOBP',31.75,0.67,651000,'2021-03-23 14:15:53'),(27,'PZU','PZU',33.16,-1.69,841000,'2021-03-23 14:15:53'),(28,'SPL','SANPL',209,0.1,11700,'2021-03-23 14:15:53'),(29,'TEN','TSGAMES',487,1.04,26000,'2021-03-23 14:15:53'),(30,'TPE','TAURONPE',2.574,-0.62,943000,'2021-03-23 14:15:53'),(31,'XTB','XTB',17.15,-0.87,189000,'2021-03-23 14:15:53'),(32,'ACP','ASSECOPOL',68.7,1.33,16800,'2021-03-23 14:17:59'),(33,'ALE','ALLEGRO',57.01,-3.04,2280000,'2021-03-23 14:17:59'),(34,'ALR','ALIOR',23.43,0.47,113000,'2021-03-23 14:17:59'),(35,'ATT','GRUPAAZOTY',29.45,-0.51,42200,'2021-03-23 14:17:59'),(36,'CCC','CCC',92,-0.82,36600,'2021-03-23 14:17:59'),(37,'CDR','CDPROJEKT',214,-1.38,348000,'2021-03-23 14:17:59'),(38,'CPS','CYFRPLSAT',28.82,-0.07,58900,'2021-03-23 14:17:59'),(39,'DNP','DINOPL',252,-1.56,50600,'2021-03-23 14:17:59'),(40,'EAT','AMREST',32.1,-2.28,44900,'2021-03-23 14:17:59'),(41,'ENA','ENEA',6.175,-2.29,98000,'2021-03-23 14:17:59'),(42,'EUR','EUROCASH',14.46,3.36,631000,'2021-03-23 14:17:59'),(43,'JSW','JSW',31.3,-5.15,1190000,'2021-03-23 14:17:59'),(44,'KGH','KGHM',178.7,-1.27,170000,'2021-03-23 14:17:59'),(45,'KRU','KRUK',190.3,-0.1,4760,'2021-03-23 14:17:59'),(46,'LPP','LPP',7965,-1.06,0,'2021-03-23 14:17:59'),(47,'LTS','LOTOS',42.85,-2.92,396000,'2021-03-23 14:17:59'),(48,'MBK','MBANK',221.2,0.09,6310,'2021-03-23 14:17:59'),(49,'MIL','MILLENNIUM',3.754,-1.37,453000,'2021-03-23 14:17:59'),(50,'MRC','MERCATOR',339,0.3,101000,'2021-03-23 14:17:59'),(51,'OPL','ORANGEPL',6.425,-1.15,161000,'2021-03-23 14:17:59'),(52,'PEO','PEKAO',70.86,1.08,384000,'2021-03-23 14:17:59'),(53,'PGE','PGE',6.5,-0.61,580000,'2021-03-23 14:17:59'),(54,'PGN','PGNIG',5.548,-0.57,2050000,'2021-03-23 14:17:59'),(55,'PKN','PKNORLEN',62.66,-2.22,480000,'2021-03-23 14:17:59'),(56,'PKO','PKOBP',31.75,0.67,651000,'2021-03-23 14:17:59'),(57,'PZU','PZU',33.15,-1.72,842000,'2021-03-23 14:17:59'),(58,'SPL','SANPL',209.2,0.19,12000,'2021-03-23 14:17:59'),(59,'TEN','TSGAMES',487,1.04,26000,'2021-03-23 14:17:59'),(60,'TPE','TAURONPE',2.574,-0.62,943000,'2021-03-23 14:17:59'),(61,'XTB','XTB',17.1,-1.16,190000,'2021-03-23 14:17:59'),(62,'ACP','ASSECOPOL',68.7,1.33,16800,'2021-03-23 14:25:30'),(63,'ALE','ALLEGRO',57.03,-3.01,2300000,'2021-03-23 14:25:30'),(64,'ALR','ALIOR',23.43,0.47,113000,'2021-03-23 14:25:30'),(65,'ATT','GRUPAAZOTY',29.5,-0.34,42300,'2021-03-23 14:25:30'),(66,'CCC','CCC',92.18,-0.63,37000,'2021-03-23 14:25:30'),(67,'CDR','CDPROJEKT',214.1,-1.34,351000,'2021-03-23 14:25:30'),(68,'CPS','CYFRPLSAT',28.8,-0.14,60100,'2021-03-23 14:25:30'),(69,'DNP','DINOPL',252,-1.56,50700,'2021-03-23 14:25:30'),(70,'EAT','AMREST',32.35,-1.52,46600,'2021-03-23 14:25:30'),(71,'ENA','ENEA',6.18,-2.22,98400,'2021-03-23 14:25:30'),(72,'EUR','EUROCASH',14.43,3.15,635000,'2021-03-23 14:25:30'),(73,'JSW','JSW',31.31,-5.12,1200000,'2021-03-23 14:25:30'),(74,'KGH','KGHM',178.55,-1.35,171000,'2021-03-23 14:25:30'),(75,'KRU','KRUK',190.3,-0.1,4760,'2021-03-23 14:25:30'),(76,'LPP','LPP',7965,-1.06,0,'2021-03-23 14:25:30'),(77,'LTS','LOTOS',42.91,-2.79,397000,'2021-03-23 14:25:30'),(78,'MBK','MBANK',220.2,-0.36,6390,'2021-03-23 14:25:30'),(79,'MIL','MILLENNIUM',3.75,-1.47,463000,'2021-03-23 14:25:30'),(80,'MRC','MERCATOR',340,0.59,101000,'2021-03-23 14:25:30'),(81,'OPL','ORANGEPL',6.425,-1.15,165000,'2021-03-23 14:25:30'),(82,'PEO','PEKAO',70.64,0.77,389000,'2021-03-23 14:25:30'),(83,'PGE','PGE',6.49,-0.76,583000,'2021-03-23 14:25:30'),(84,'PGN','PGNIG',5.542,-0.68,2120000,'2021-03-23 14:25:30'),(85,'PKN','PKNORLEN',62.62,-2.28,480000,'2021-03-23 14:25:30'),(86,'PKO','PKOBP',31.79,0.79,656000,'2021-03-23 14:25:30'),(87,'PZU','PZU',33.12,-1.81,854000,'2021-03-23 14:25:30'),(88,'SPL','SANPL',209.2,0.19,12000,'2021-03-23 14:25:30'),(89,'TEN','TSGAMES',491,1.87,27100,'2021-03-23 14:25:30'),(90,'TPE','TAURONPE',2.576,-0.54,944000,'2021-03-23 14:25:30'),(91,'XTB','XTB',17.1,-1.16,191000,'2021-03-23 14:25:30'),(92,'ACP','ASSECOPOL',68.6,1.18,17800,'2021-03-23 14:53:19'),(93,'ALE','ALLEGRO',56.92,-3.2,2470000,'2021-03-23 14:53:19'),(94,'ALR','ALIOR',23.42,0.43,118000,'2021-03-23 14:53:19'),(95,'ATT','GRUPAAZOTY',29.45,-0.51,43700,'2021-03-23 14:53:19'),(96,'CCC','CCC',92.08,-0.73,40100,'2021-03-23 14:53:19'),(97,'CDR','CDPROJEKT',215,-0.92,384000,'2021-03-23 14:53:19'),(98,'CPS','CYFRPLSAT',28.8,-0.14,63000,'2021-03-23 14:53:19'),(99,'DNP','DINOPL',252,-1.56,54900,'2021-03-23 14:53:19'),(100,'EAT','AMREST',32.4,-1.37,52400,'2021-03-23 14:53:19'),(101,'ENA','ENEA',6.195,-1.98,100000,'2021-03-23 14:53:19'),(102,'EUR','EUROCASH',14.45,3.29,648000,'2021-03-23 14:53:19'),(103,'JSW','JSW',31.3,-5.15,1230000,'2021-03-23 14:53:19'),(104,'KGH','KGHM',178.6,-1.33,209000,'2021-03-23 14:53:19'),(105,'KRU','KRUK',189.7,-0.42,6600,'2021-03-23 14:53:19'),(106,'LPP','LPP',7995,-0.68,0,'2021-03-23 14:53:19'),(107,'LTS','LOTOS',42.93,-2.74,413000,'2021-03-23 14:53:19'),(108,'MBK','MBANK',220.8,-0.09,6690,'2021-03-23 14:53:19'),(109,'MIL','MILLENNIUM',3.75,-1.47,485000,'2021-03-23 14:53:19'),(110,'MRC','MERCATOR',339,0.3,103000,'2021-03-23 14:53:19'),(111,'OPL','ORANGEPL',6.425,-1.15,182000,'2021-03-23 14:53:19'),(112,'PEO','PEKAO',70.8,1,420000,'2021-03-23 14:53:19'),(113,'PGE','PGE',6.508,-0.49,617000,'2021-03-23 14:53:19'),(114,'PGN','PGNIG',5.548,-0.57,2240000,'2021-03-23 14:53:19'),(115,'PKN','PKNORLEN',62.62,-2.28,505000,'2021-03-23 14:53:19'),(116,'PKO','PKOBP',31.9,1.14,781000,'2021-03-23 14:53:19'),(117,'PZU','PZU',33.14,-1.75,928000,'2021-03-23 14:53:19'),(118,'SPL','SANPL',210,0.57,13600,'2021-03-23 14:53:19'),(119,'TEN','TSGAMES',497,3.11,30200,'2021-03-23 14:53:19'),(120,'TPE','TAURONPE',2.584,-0.23,1140000,'2021-03-23 14:53:19'),(121,'XTB','XTB',17.1,-1.16,207000,'2021-03-23 14:53:19'),(122,'ACP','ASSECOPOL',68.6,1.18,17800,'2021-03-23 14:53:30'),(123,'ALE','ALLEGRO',56.92,-3.2,2470000,'2021-03-23 14:53:30'),(124,'ALR','ALIOR',23.47,0.64,118000,'2021-03-23 14:53:30'),(125,'ATT','GRUPAAZOTY',29.5,-0.34,44100,'2021-03-23 14:53:30'),(126,'CCC','CCC',92.08,-0.73,40100,'2021-03-23 14:53:30'),(127,'CDR','CDPROJEKT',215,-0.92,384000,'2021-03-23 14:53:30'),(128,'CPS','CYFRPLSAT',28.8,-0.14,63000,'2021-03-23 14:53:30'),(129,'DNP','DINOPL',252,-1.56,54900,'2021-03-23 14:53:30'),(130,'EAT','AMREST',32.4,-1.37,52400,'2021-03-23 14:53:30'),(131,'ENA','ENEA',6.195,-1.98,100000,'2021-03-23 14:53:30'),(132,'EUR','EUROCASH',14.43,3.15,649000,'2021-03-23 14:53:30'),(133,'JSW','JSW',31.31,-5.12,1230000,'2021-03-23 14:53:30'),(134,'KGH','KGHM',178.6,-1.33,209000,'2021-03-23 14:53:30'),(135,'KRU','KRUK',189.7,-0.42,6600,'2021-03-23 14:53:30'),(136,'LPP','LPP',7995,-0.68,0,'2021-03-23 14:53:30'),(137,'LTS','LOTOS',42.93,-2.74,413000,'2021-03-23 14:53:30'),(138,'MBK','MBANK',220.8,-0.09,6690,'2021-03-23 14:53:30'),(139,'MIL','MILLENNIUM',3.75,-1.47,485000,'2021-03-23 14:53:30'),(140,'MRC','MERCATOR',339,0.3,103000,'2021-03-23 14:53:30'),(141,'OPL','ORANGEPL',6.425,-1.15,182000,'2021-03-23 14:53:30'),(142,'PEO','PEKAO',70.8,1,421000,'2021-03-23 14:53:30'),(143,'PGE','PGE',6.508,-0.49,617000,'2021-03-23 14:53:30'),(144,'PGN','PGNIG',5.548,-0.57,2240000,'2021-03-23 14:53:30'),(145,'PKN','PKNORLEN',62.62,-2.28,505000,'2021-03-23 14:53:30'),(146,'PKO','PKOBP',31.9,1.14,781000,'2021-03-23 14:53:30'),(147,'PZU','PZU',33.14,-1.75,928000,'2021-03-23 14:53:30'),(148,'SPL','SANPL',210,0.57,13600,'2021-03-23 14:53:30'),(149,'TEN','TSGAMES',497,3.11,30200,'2021-03-23 14:53:30'),(150,'TPE','TAURONPE',2.584,-0.23,1140000,'2021-03-23 14:53:30'),(151,'XTB','XTB',17.1,-1.16,207000,'2021-03-23 14:53:30'),(152,'ACP','ASSECOPOL',68.6,1.18,17800,'2021-03-23 14:54:50'),(153,'ALE','ALLEGRO',56.78,-3.44,2470000,'2021-03-23 14:54:50'),(154,'ALR','ALIOR',23.45,0.56,119000,'2021-03-23 14:54:50'),(155,'ATT','GRUPAAZOTY',29.5,-0.34,44100,'2021-03-23 14:54:50'),(156,'CCC','CCC',92.08,-0.73,40100,'2021-03-23 14:54:50'),(157,'CDR','CDPROJEKT',214.7,-1.06,385000,'2021-03-23 14:54:50'),(158,'CPS','CYFRPLSAT',28.8,-0.14,63000,'2021-03-23 14:54:50'),(159,'DNP','DINOPL',252,-1.56,54900,'2021-03-23 14:54:50'),(160,'EAT','AMREST',32.4,-1.37,52400,'2021-03-23 14:54:50'),(161,'ENA','ENEA',6.195,-1.98,103000,'2021-03-23 14:54:50'),(162,'EUR','EUROCASH',14.44,3.22,649000,'2021-03-23 14:54:50'),(163,'JSW','JSW',31.22,-5.39,1230000,'2021-03-23 14:54:50'),(164,'KGH','KGHM',178.6,-1.33,209000,'2021-03-23 14:54:50'),(165,'KRU','KRUK',189.7,-0.42,6600,'2021-03-23 14:54:50'),(166,'LPP','LPP',7995,-0.68,0,'2021-03-23 14:54:50'),(167,'LTS','LOTOS',42.9,-2.81,414000,'2021-03-23 14:54:50'),(168,'MBK','MBANK',220.8,-0.09,6700,'2021-03-23 14:54:50'),(169,'MIL','MILLENNIUM',3.75,-1.47,485000,'2021-03-23 14:54:50'),(170,'MRC','MERCATOR',339,0.3,103000,'2021-03-23 14:54:50'),(171,'OPL','ORANGEPL',6.425,-1.15,182000,'2021-03-23 14:54:50'),(172,'PEO','PEKAO',70.74,0.91,425000,'2021-03-23 14:54:50'),(173,'PGE','PGE',6.5,-0.61,617000,'2021-03-23 14:54:50'),(174,'PGN','PGNIG',5.544,-0.65,2240000,'2021-03-23 14:54:50'),(175,'PKN','PKNORLEN',62.54,-2.4,506000,'2021-03-23 14:54:50'),(176,'PKO','PKOBP',31.87,1.05,784000,'2021-03-23 14:54:50'),(177,'PZU','PZU',33.11,-1.84,931000,'2021-03-23 14:54:50'),(178,'SPL','SANPL',209.8,0.48,13900,'2021-03-23 14:54:50'),(179,'TEN','TSGAMES',496,2.9,30400,'2021-03-23 14:54:50'),(180,'TPE','TAURONPE',2.584,-0.23,1140000,'2021-03-23 14:54:50'),(181,'XTB','XTB',17.1,-1.16,207000,'2021-03-23 14:54:50');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_uindex` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','pass1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 14:56:40
