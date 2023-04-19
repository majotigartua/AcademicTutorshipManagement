-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: academictutorshipmanagement
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academicoffering`
--

DROP TABLE IF EXISTS `academicoffering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicoffering` (
  `idAcademicOffering` int NOT NULL AUTO_INCREMENT,
  `nrc` int NOT NULL,
  `idEducationalExperience` int NOT NULL,
  `idAcademicPersonnel` int NOT NULL,
  `idSchoolPeriod` int NOT NULL,
  PRIMARY KEY (`idAcademicOffering`),
  KEY `FK_AcademicOfferings_EducationalExperience_idx` (`idEducationalExperience`),
  KEY `FK_AcademicOfferings_AcademicPersonnel_idx` (`idAcademicPersonnel`),
  KEY `FK_AcademicOfferings_SchoolPeriod_idx` (`idSchoolPeriod`),
  CONSTRAINT `FK_AcademicOfferings_AcademicPersonnel` FOREIGN KEY (`idAcademicPersonnel`) REFERENCES `academicpersonnel` (`idAcademicPersonnel`),
  CONSTRAINT `FK_AcademicOfferings_EducationalExperience` FOREIGN KEY (`idEducationalExperience`) REFERENCES `educationalexperience` (`idEducationalExperience`),
  CONSTRAINT `FK_AcademicOfferings_SchoolPeriod` FOREIGN KEY (`idSchoolPeriod`) REFERENCES `schoolperiod` (`idSchoolPeriod`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicoffering`
--

LOCK TABLES `academicoffering` WRITE;
/*!40000 ALTER TABLE `academicoffering` DISABLE KEYS */;
INSERT INTO `academicoffering` VALUES (1,81756,10,1,1),(2,81761,11,2,1),(3,81764,12,3,1),(4,81767,13,4,1),(5,81744,8,5,1),(6,81752,9,6,1),(7,81768,5,7,1),(8,81851,4,8,1),(9,86634,7,9,1),(10,81774,10,10,1),(11,81778,11,2,1),(12,81779,12,11,1),(13,81781,13,12,1),(14,81771,8,1,1),(15,86525,20,12,1),(16,86530,21,16,1),(17,86536,22,13,1),(18,86547,23,3,1),(19,86567,24,17,1),(20,89510,15,4,1),(21,86527,20,18,1),(22,86532,21,14,1),(23,86551,23,1,1),(24,86579,24,16,1),(25,90614,20,19,1),(26,90631,21,16,1),(27,90640,24,20,1),(28,89513,30,18,1),(29,89515,31,21,1),(30,89520,32,22,1),(31,89521,33,19,1),(32,89522,34,12,1),(33,89505,28,19,1),(34,90018,30,20,1),(35,89532,31,14,1),(36,89545,32,23,1),(37,94045,33,20,1),(38,89550,34,18,1),(39,94018,39,4,1),(40,93958,35,24,1),(41,94028,36,25,1),(42,12157,35,24,1),(43,12231,39,26,1),(44,17386,35,24,1),(45,17391,35,24,1),(46,69377,61,27,1),(47,74415,63,28,1),(48,69380,62,29,1),(49,69387,64,2,1),(50,69393,66,30,1),(51,69389,65,31,1),(52,71936,57,32,1),(53,70171,55,33,1),(54,13915,60,34,1),(55,69402,61,35,1),(56,69405,63,36,1),(57,69403,62,37,1),(58,69407,64,30,1),(59,69409,66,38,1),(60,69408,65,39,1),(61,78263,62,37,1),(62,78270,65,40,1),(63,78278,66,38,1),(64,74282,73,94,1),(65,74284,73,41,1),(66,72486,74,42,1),(67,74465,75,43,1),(68,74289,76,44,1),(69,74467,68,41,1),(70,93069,67,45,1),(71,74290,73,46,1),(72,74291,72,58,1),(73,74293,74,71,1),(74,74470,75,69,1),(75,74298,76,95,1),(76,78280,82,47,1),(77,78288,83,28,1),(78,78485,84,48,1),(79,78489,85,49,1),(80,78490,94,50,1),(81,78492,77,51,1),(82,78493,79,42,1),(83,85106,93,52,1),(84,78494,82,53,1),(85,78495,83,49,1),(86,78496,84,54,1),(87,78497,85,48,1),(88,11710,101,55,1),(89,84264,92,13,1),(90,84183,90,56,1),(91,81357,86,45,1),(92,85103,87,56,1),(93,81219,88,49,1),(94,93071,99,57,1),(95,85103,87,48,1),(96,84184,91,58,1),(97,89689,89,59,1),(98,74381,63,28,1),(99,69489,105,60,1),(100,69482,61,61,1),(101,69486,64,26,1),(102,69487,71,62,1),(103,69485,66,38,1),(104,71928,57,63,1),(105,69495,63,64,1),(106,74691,105,60,1),(107,69490,61,65,1),(108,69493,64,66,1),(109,69492,66,67,1),(110,70139,59,68,1),(111,74258,108,69,1),(112,74265,110,70,1),(113,74370,65,31,1),(114,74269,93,71,1),(115,89696,68,72,1),(116,78950,108,73,1),(117,74272,109,74,1),(118,74275,110,70,1),(119,74414,65,74,1),(120,74280,93,71,1),(121,78286,117,70,1),(122,78297,118,43,1),(123,78300,96,75,1),(124,78710,120,72,1),(125,78714,121,75,1),(126,84401,99,64,1),(127,81267,117,58,1),(128,81270,96,75,1),(129,81271,120,74,1),(130,81272,121,75,1),(131,84198,91,64,1),(132,81275,97,64,1),(133,84200,90,74,1),(134,94404,128,76,1),(135,87359,91,55,1),(136,87363,122,43,1),(137,69425,60,77,1),(138,69412,61,33,1),(139,69413,107,78,1),(140,69416,64,26,1),(141,69421,71,26,1),(142,69429,63,79,1),(143,70151,56,80,1),(144,78954,57,81,1),(145,69479,60,82,1),(146,69475,61,65,1),(147,69476,107,63,1),(148,69477,64,83,1),(149,69478,71,66,1),(150,69486,63,78,1),(151,70156,56,80,1),(152,70159,107,84,1),(153,78779,71,85,1),(154,78952,63,38,1),(155,78953,64,86,1),(156,74235,133,87,1),(157,74236,134,60,1),(158,74237,136,38,1),(159,74238,75,72,1),(160,74242,135,85,1),(161,74472,69,55,1),(162,74244,133,55,1),(163,74246,134,45,1),(164,74249,136,54,1),(165,74250,35,43,1),(166,16876,135,88,1),(167,87452,135,22,1),(168,78783,83,89,1),(169,78785,145,89,1),(170,78925,142,89,1),(171,78927,144,90,1),(172,78928,143,90,1),(173,78929,83,91,1),(174,78930,145,41,1),(175,78933,142,85,1),(176,78935,144,90,1),(177,78938,143,92,1),(178,84191,91,78,1),(179,81252,78,45,1),(180,84196,90,89,1),(181,85292,147,93,1),(182,84194,91,86,1),(183,81255,149,86,1);
/*!40000 ALTER TABLE `academicoffering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicpersonnel`
--

DROP TABLE IF EXISTS `academicpersonnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicpersonnel` (
  `idAcademicPersonnel` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `paternalSurname` varchar(150) NOT NULL,
  `maternalSurname` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `emailAddress` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `idContractType` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idAcademicPersonnel`,`name`,`paternalSurname`,`maternalSurname`),
  KEY `FK_AcademicPersonnel_ContractType_idx` (`idContractType`),
  KEY `FK_AcademicPersonnel_User_idx` (`username`),
  CONSTRAINT `FK_AcademicPersonnel_ContractType` FOREIGN KEY (`idContractType`) REFERENCES `contracttype` (`idContractType`),
  CONSTRAINT `FK_AcademicPersonnel_User` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicpersonnel`
--

LOCK TABLES `academicpersonnel` WRITE;
/*!40000 ALTER TABLE `academicpersonnel` DISABLE KEYS */;
INSERT INTO `academicpersonnel` VALUES (1,'José Fabián','Muñóz','Portilla','fmunoz@uv.mx',1,'fmunoz'),(2,'José Juan','Muñóz','León','juanmunoz@uv.mx',1,'juanmunoz'),(3,'Miguel','Alonso','López','malonso@uv.mx',1,NULL),(4,'Víctor Manuel','Méndez','Sánchez','vmendez@uv.mx',1,'vmendez'),(5,'Javier Ignacio','Romo','Encinas','jromo@uv.mx',2,NULL),(6,'Omar','Hernández','Báez','amhernandez@uv.mx',2,NULL),(7,'Minerva','Reyes','Félix','minreyes@uv.mx',2,NULL),(8,'Ángel','Miñón','Pérez','aminon@uv.mx',2,NULL),(9,'Eduardo','Díaz','Camacho','eddiaz@uv.mx',2,NULL),(10,'María Yesenia','Zavaleta','Sánchez','yzavaleta@uv.mx',2,NULL),(11,'Eliseo','Gabriel','Argüelles','egabriel@uv.mx',2,NULL),(12,'Mario Miguel','Ojeda','Ramírez','mojeda@uv.mx',1,NULL),(13,'Lorena','Alonso','Ramírez','lalonso@uv.mx',2,'lalonso'),(14,'Judith Guadalupe','Montero','Mora','jmontero@uv.mx',1,NULL),(15,'Briseida','Jiménez','Velázquez','brjimenez@uv.mx',2,NULL),(16,'Jesús','Hernández','Suárez','jeshernandez@uv.mx',1,NULL),(17,'Juan','Ruíz','Ramírez','jruiz@uv.mx',1,NULL),(18,'Claudio Rafael','Castro','López','ccastro@uv.mx',1,NULL),(19,'Julia Aurora','Montano','Rivas','julmontano@uv.mx',1,NULL),(20,'Zoylo','Morales','Romero','zmorales@uv.mx',1,NULL),(21,'Cecilia','Cruz','López','ceccruz@uv.mx',2,NULL),(22,'Niels','Martínez','Guevara','niemartinez@uv.mx',2,NULL),(23,'Jazmín Josefina','García','Méndez','jazgarcia@uv.mx',2,NULL),(24,'Julián Felipe','Díaz','Camacho','judiaz@uv.mx',1,NULL),(25,'María de Lourdes','Velasco','Vázquez','lovelasco@uv.mx',1,NULL),(26,'Maribel','Carmona','García','maribelcarmona@uv.mx',2,NULL),(27,'Dolores','Carrillo','Coto','dcarrillo@uv.mx',2,NULL),(28,'María de los Ángeles','Arenas','Valdés','aarenas@uv.mx',1,'aarenas'),(29,'Erika','Meneses','Rico','ermeneses@uv.mx',2,NULL),(30,'Víctor Manuel','Tlapa','Carrera','vtlapa@uv.mx',2,NULL),(31,'Aquiles','Orduña','González','aorduna@uv.mx',2,NULL),(32,'Christian','Pérez','Salazar','chperez@uv.mx',1,NULL),(33,'Olga Irene','Zitácuaro','Ameca','ozitacuaro@uv.mx',2,NULL),(34,'Juan Carlos','García','Rodríguez','juangarcia06@uv.mx',2,NULL),(35,'Edna Lilliam','Mendoza','Solís','edmendoza@uv.mx',2,NULL),(36,'Adriana','Cervantes','Castillo','adcervantes@uv.mx',2,NULL),(37,'Virgina','Lagunes','Barradas','vlagunes@uv.mx',2,NULL),(38,'Ulises','Marinero','Aguilar','umarinero@uv.mx',2,NULL),(39,'Irma Elizabeth','Romero','Arrioja','iromero@uv.mx',2,NULL),(40,'Alba Cristina','Garza','Cayetano','agarza@uv.mx',2,NULL),(41,'Itzel Alessadra','Reyes','Flores','itreyes@uv.mx',2,NULL),(42,'Ramón','Gómez','Romero','ramongomez@uv.mx',2,NULL),(43,'Martha Elizabet','Domínguez','Bárcenas','eldominguez@uv.mx',1,NULL),(44,'Esmeralda Yamileth','Hernández','González','esmhernandez@uv.mx',2,NULL),(45,'María de Lourdes','Hernández','Rodríguez','lourhernandez@uv.mx',2,NULL),(46,'Óscar','Alonso','Ramírez','oalonso@uv.mx',2,NULL),(47,'Elizabeth','Murrieta','Sangabriel','elmurrieta@uv.mx',2,NULL),(48,'Saúl','Domínguez','Isidro','sauldominguez@uv.mx',2,'sauldominguez'),(49,'Mario Alberto','Hernández','Pérez','mariohernandez02@uv.mx',2,NULL),(50,'David','Martínez','Galicia','dmartinez@uv.mx',2,NULL),(51,'Ana Luz','Polo','Estrella','apolo@uv.mx',1,NULL),(52,'Max William','Millán','Martínez','mmillan@uv.mx',2,'mmillan'),(53,'María','Angélica','Cerdán','acerdan@uv.mx',2,NULL),(54,'Juan Luis','López','Herrera','julopez@uv.mx',2,NULL),(55,'María Dolores','Vargas','Cerdán','dvargas@uv.mx',1,NULL),(56,'Ángel Juan','Sánchez','García','angesanchez@uv.mx',1,'angesanchez'),(57,'Urbano Francisco','Ortega','Rivera','uortega@uv.mx',2,NULL),(58,'Jorge Octavio','Ocharán','Hernández','jocharan@uv.mx',1,'jocharan'),(59,'Donají','Callejas','del Callejo','ddelcallejo@uv.mx',1,NULL),(60,'Gustavo Manuel','Balderas','Rosas','gbalderas@uv.mx',2,NULL),(61,'Arminda','Barradas','Sánchez','armbarradas@uv.mx',2,NULL),(62,'Aureliano','Aguilar','Bonilla','auraguilar@uv.mx',2,NULL),(63,'Willian','Zárate','Navarro','wzarate@uv.mx',2,NULL),(64,'Héctor Xavier','Limón','Riaño','hlimon@uv.mx',1,NULL),(65,'Cruz Enrique','Ortega','Ramírez','cortega@uv.mx',2,NULL),(66,'Diana Elizabeth','Valderrábano','Pedraza','dvalderrabano@uv.mx',1,NULL),(67,'Everardo','García','Menie','evgarcia@uv.mx',1,NULL),(68,'Carlos','Illescas','Sánchez','cillescas@uv.mx',2,NULL),(69,'Angélica','Pérez','Hernández','angelperez@uv.mx',1,NULL),(70,'Jesús Roberto','Méndez','Ortiz','jmendez@uv.mx',1,NULL),(71,'Juan Carlos','Pérez','Arriaga','juaperez@uv.mx',1,NULL),(72,'Carlos Alberto','Ochoa','Rivera','cochoa@uv.mx',2,NULL),(73,'Javier','Sánchez','Acosta','javsanchez@uv.mx',2,NULL),(74,'Alberto Jair','Cruz','Landa','albecruz@uv.mx',2,NULL),(75,'Gerardo','Contreras','Vega','gcontreras@uv.mx',1,NULL),(76,'Héctor','Bonola','Virues','hbonola@uv.mx',2,NULL),(77,'María','García','Araujo','marigarcia@uv.mx',2,NULL),(78,'Luis Gerardo','Montané','Jiménez','lmontane@uv.mx',2,NULL),(79,'María del Carmen','Mezura','Godoy','cmezura@uv.mx',1,NULL),(80,'María Silva','García','Ramírez','sgarcia@uv.mx',2,NULL),(81,'Verónica Elizabeth','Orozco','Ríoz','vorozco@uv.mx',2,NULL),(82,'Paola del Carmen','Cordero','Román','pcordero@uv.mx',2,NULL),(83,'Atanasio Hermilo','Delgado','Ramírez','hdelgado@uv.mx',1,NULL),(84,'María Eugenia','Barradas','García','mbarradas@uv.mx',2,NULL),(85,'Candy Obdulia','Sosa','Jiménez','cansosa@uv.mx',2,NULL),(86,'Juana Elisa','Escalante','Vega','jescalante@uv.mx',1,NULL),(87,'Edgard Iván','Benítez','Guerrero','edbenitez@uv.mx',1,NULL),(88,'Virginia Angélica','García','Vega','angegarcia@uv.mx',1,NULL),(89,'Fredy','Castañeda','Sánchez','fcastaneda@uv.mx',1,NULL),(90,'José Rafael','Rojano','Cáceres','rrojano@uv.mx',1,NULL),(91,'José Guillermo','Hernández','Calderón','guillermohernandez02@uv.mx',1,NULL),(92,'Ramón David','Sarmiento','Cervantes','rsarmiento@uv.mx',2,NULL),(93,'Margarita Edith','Canal','Martínez','mcanal@uv.mx',2,NULL),(94,'Jenny Betsabé','Vázquez','Aguirre','jaguirre@uv.mx',2,NULL),(95,'María de los Ángeles','Navarro','Guerrero','lonarro@uv.mx',2,NULL);
/*!40000 ALTER TABLE `academicpersonnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicproblem`
--

DROP TABLE IF EXISTS `academicproblem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicproblem` (
  `idAcademicProblem` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `numberOfStudents` int NOT NULL,
  `idAcademicOffering` int NOT NULL,
  `idAcademicTutorshipReport` int NOT NULL,
  PRIMARY KEY (`idAcademicProblem`),
  KEY `FK_AcademicProblem_AcademicTutorshipReport_idx` (`idAcademicTutorshipReport`),
  KEY `FK_AcademicProblem_AcademicOfferings_idx` (`idAcademicOffering`),
  CONSTRAINT `FK_AcademicProblem_AcademicOfferings` FOREIGN KEY (`idAcademicOffering`) REFERENCES `academicoffering` (`idAcademicOffering`),
  CONSTRAINT `FK_AcademicProblem_AcademicTutorshipReport` FOREIGN KEY (`idAcademicTutorshipReport`) REFERENCES `academictutorshipreport` (`idAcademicTutorshipReport`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicproblem`
--

LOCK TABLES `academicproblem` WRITE;
/*!40000 ALTER TABLE `academicproblem` DISABLE KEYS */;
INSERT INTO `academicproblem` VALUES (1,'No imparte clases presenciales','Solo imparte sesiones de clase a través de herramientas de videoconferencia en línea; por ejemplo, Zoom o Microsoft Teams, ocasionando que los estudiantes no aprendan correctamente los saberes teóricos de la experiencia educativa.',3,101,1),(2,'No sigue el plan de estudios de la experiencia educativa','No imparte los saberes teóricos de la experiencia educativa ni brinda las herramientas educativas necesarias para el desarrollo del proyecto final, ocasionando que los estudiantes tengan conflictos académicos con otras experiencias educativas; por ejemplo, Desarrollo de Software y Desarrollo de Aplicaciones ',4,87,1),(3,'No imparte clases presenciales','Prueba',8,87,1);
/*!40000 ALTER TABLE `academicproblem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicproblemfollowup`
--

DROP TABLE IF EXISTS `academicproblemfollowup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicproblemfollowup` (
  `idAcademicProblemFollowUp` int NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `idAcademicProblem` int DEFAULT NULL,
  PRIMARY KEY (`idAcademicProblemFollowUp`),
  KEY `FK_AcademicProblem_idx` (`idAcademicProblem`),
  CONSTRAINT `FK_AcademicProblem` FOREIGN KEY (`idAcademicProblem`) REFERENCES `academicproblem` (`idAcademicProblem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicproblemfollowup`
--

LOCK TABLES `academicproblemfollowup` WRITE;
/*!40000 ALTER TABLE `academicproblemfollowup` DISABLE KEYS */;
INSERT INTO `academicproblemfollowup` VALUES (1,'Hola','2023-03-22',1);
/*!40000 ALTER TABLE `academicproblemfollowup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academictutorship`
--

DROP TABLE IF EXISTS `academictutorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academictutorship` (
  `idAcademicTutorship` int NOT NULL AUTO_INCREMENT,
  `idEducationalProgram` int NOT NULL,
  `idAcademicTutorshipSession` int NOT NULL,
  PRIMARY KEY (`idAcademicTutorship`),
  KEY `FK_AcademicTutorship_AcademicTutorshipSession_idx` (`idAcademicTutorshipSession`),
  KEY `FK_AcademicTutorship_EducationalProgram_idx` (`idEducationalProgram`),
  CONSTRAINT `FK_AcademicTutorship_AcademicTutorshipSession` FOREIGN KEY (`idAcademicTutorshipSession`) REFERENCES `academictutorshipsession` (`idAcademicTutorshipSession`),
  CONSTRAINT `FK_AcademicTutorship_EducationalProgram` FOREIGN KEY (`idEducationalProgram`) REFERENCES `educationalprogram` (`idEducationalProgram`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academictutorship`
--

LOCK TABLES `academictutorship` WRITE;
/*!40000 ALTER TABLE `academictutorship` DISABLE KEYS */;
INSERT INTO `academictutorship` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3);
/*!40000 ALTER TABLE `academictutorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academictutorshipreport`
--

DROP TABLE IF EXISTS `academictutorshipreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academictutorshipreport` (
  `idAcademicTutorshipReport` int NOT NULL AUTO_INCREMENT,
  `generalComment` text,
  `numberOfStudentsAttending` int NOT NULL,
  `numberOfStudentsAtRisk` int NOT NULL,
  `idAcademicPersonnel` int NOT NULL,
  `idAcademicTutorship` int NOT NULL,
  PRIMARY KEY (`idAcademicTutorshipReport`),
  KEY `FK_AcademicTutorshipReport_AcademicTutorship_idx` (`idAcademicTutorship`),
  KEY `FK_AcademicTutorshipReport_AcademicPersonnel_idx` (`idAcademicPersonnel`),
  CONSTRAINT `FK_AcademicTutorshipReport_AcademicPersonnel` FOREIGN KEY (`idAcademicPersonnel`) REFERENCES `academicpersonnel` (`idAcademicPersonnel`),
  CONSTRAINT `FK_AcademicTutorshipReport_AcademicTutorship` FOREIGN KEY (`idAcademicTutorship`) REFERENCES `academictutorship` (`idAcademicTutorship`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academictutorshipreport`
--

LOCK TABLES `academictutorshipreport` WRITE;
/*!40000 ALTER TABLE `academictutorshipreport` DISABLE KEYS */;
INSERT INTO `academictutorshipreport` VALUES (1,'Es conveniente que se implementen asesorías académicas para la experiencia educativa de Estructuras de Datos',11,3,28,4),(2,'La red de la facultad presenta fallos constantemente.',6,1,56,4);
/*!40000 ALTER TABLE `academictutorshipreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academictutorshipreportstudent`
--

DROP TABLE IF EXISTS `academictutorshipreportstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academictutorshipreportstudent` (
  `idAcademicTutorshipReportStudent` int NOT NULL AUTO_INCREMENT,
  `attendedBy` bit(1) NOT NULL,
  `atRisk` bit(1) NOT NULL,
  `idAcademicTutorshipReport` int NOT NULL,
  `registrationNumber` varchar(10) NOT NULL,
  PRIMARY KEY (`idAcademicTutorshipReportStudent`),
  KEY `FK_AcademicTutorshipReportStudent_AcademicTutorshipReport_idx` (`idAcademicTutorshipReport`),
  KEY `FK_AcademicTutorshipReportStudent_Student_idx` (`registrationNumber`),
  CONSTRAINT `FK_AcademicTutorshipReportStudent_AcademicTutorshipReport` FOREIGN KEY (`idAcademicTutorshipReport`) REFERENCES `academictutorshipreport` (`idAcademicTutorshipReport`),
  CONSTRAINT `FK_AcademicTutorshipReportStudent_Student` FOREIGN KEY (`registrationNumber`) REFERENCES `student` (`registrationNumber`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academictutorshipreportstudent`
--

LOCK TABLES `academictutorshipreportstudent` WRITE;
/*!40000 ALTER TABLE `academictutorshipreportstudent` DISABLE KEYS */;
INSERT INTO `academictutorshipreportstudent` VALUES (1,_binary '',_binary '\0',1,'S20015700'),(2,_binary '',_binary '\0',1,'S21013898'),(3,_binary '',_binary '\0',1,'S19014017'),(4,_binary '\0',_binary '',1,'S20015717'),(5,_binary '\0',_binary '\0',1,'S21013877'),(6,_binary '',_binary '\0',1,'S20015718'),(7,_binary '',_binary '\0',1,'S20015742'),(8,_binary '',_binary '\0',1,'S19014045'),(9,_binary '\0',_binary '\0',1,'S20015757'),(10,_binary '\0',_binary '',1,'S20015699'),(11,_binary '',_binary '\0',1,'S21013906'),(12,_binary '\0',_binary '\0',1,'S21021431'),(13,_binary '\0',_binary '\0',1,'S20015744'),(14,_binary '',_binary '\0',1,'S21013852'),(15,_binary '',_binary '',1,'S21013872'),(16,_binary '',_binary '\0',1,'S21013884'),(17,_binary '',_binary '\0',1,'S19014012');
/*!40000 ALTER TABLE `academictutorshipreportstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academictutorshipsession`
--

DROP TABLE IF EXISTS `academictutorshipsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academictutorshipsession` (
  `idAcademicTutorshipSession` int NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `closingDateReportSubmission` date NOT NULL,
  `sessionNumber` int NOT NULL,
  `idSchoolPeriod` int NOT NULL,
  PRIMARY KEY (`idAcademicTutorshipSession`),
  KEY `FK_AcademicTutorshipSession_SchoolPeriod_idx` (`idSchoolPeriod`),
  CONSTRAINT `FK_AcademicTutorshipSession_SchoolPeriod` FOREIGN KEY (`idSchoolPeriod`) REFERENCES `schoolperiod` (`idSchoolPeriod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academictutorshipsession`
--

LOCK TABLES `academictutorshipsession` WRITE;
/*!40000 ALTER TABLE `academictutorshipsession` DISABLE KEYS */;
INSERT INTO `academictutorshipsession` VALUES (1,'2023-02-25','2023-03-25','2023-03-31',1,1),(2,'2023-03-25','2023-04-25','2023-04-30',2,1),(3,'2023-04-25','2023-05-25','2024-05-31',3,1);
/*!40000 ALTER TABLE `academictutorshipsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracttype`
--

DROP TABLE IF EXISTS `contracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracttype` (
  `idContractType` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idContractType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracttype`
--

LOCK TABLES `contracttype` WRITE;
/*!40000 ALTER TABLE `contracttype` DISABLE KEYS */;
INSERT INTO `contracttype` VALUES (1,'Tiempo completo'),(2,'Por asignatura');
/*!40000 ALTER TABLE `contracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalexperience`
--

DROP TABLE IF EXISTS `educationalexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationalexperience` (
  `idEducationalExperience` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`idEducationalExperience`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalexperience`
--

LOCK TABLES `educationalexperience` WRITE;
/*!40000 ALTER TABLE `educationalexperience` DISABLE KEYS */;
INSERT INTO `educationalexperience` VALUES (1,'Lectura y Escritura de Textos Académicos',_binary ''),(2,'Lengua I',_binary ''),(3,'Literacidad Digital',_binary ''),(4,'Álgebra Lineal Aplicada a la Estadística I',_binary ''),(5,'Cálculo Aplicado a la Estadística I',_binary ''),(6,'Metodología Estadística para la Investigación',_binary ''),(7,'Estadística Descriptiva y Exploratoria',_binary ''),(8,'Pensamiento Crítico para la Solución de Problemas',_binary ''),(9,'Lengua II',_binary ''),(10,'Introducción a la Programación Estadística',_binary ''),(11,'Álgebra Lineal Aplicada a la Estadística II',_binary ''),(12,'Cálculo Aplicado a la Estadística II',_binary ''),(13,'Pensamiento y Cultura Estadística',_binary ''),(14,'Muestreo',_binary ''),(15,'Modelos de Regresión Lineal y No Lineal',_binary ''),(16,'Programación Estadística',_binary ''),(17,'Probabilidad I',_binary ''),(18,'Instrumento de Capacitación y Análisis de Datos',_binary ''),(19,'Seminario de Aplicaciones Estadísticas',_binary ''),(20,'Estadística Multivariada',_binary ''),(21,'Modelos Lineales Generalizados',_binary ''),(22,'Manejadores de Bases de Datos',_binary ''),(23,'Probabilidad II',_binary ''),(24,'Diseño y Análisis de Experimentos',_binary ''),(25,'Modelos Espacio-Temporales',_binary ''),(26,'Modelos de Regresión No Paramétrica y Semiparamétrica',_binary ''),(27,'Minería de Datos y Aprendizaje Máquina',_binary ''),(28,'Teoría Estadística',_binary ''),(29,'Consultoría Estadística',_binary ''),(30,'Análisis Cuantitativo para Datos Cualitativos',_binary ''),(31,'Control Estadístico de la Calidad',_binary ''),(32,'Big Data',_binary ''),(33,'Estadística Bayesiana',_binary ''),(34,'Práctica de Consultoría Estadística',_binary ''),(35,'Servicio Social I',_binary ''),(36,'Experiencia Recepcional I',_binary ''),(37,'Bootstrap y Pruebas de Permutación',_binary ''),(38,'Servicio Social II',_binary ''),(39,'Experiencia Recepcional II',_binary ''),(40,'Acreditación del Idioma Inglés',_binary ''),(41,'Cálculo Avanzado Aplicado a la Estadística',_binary ''),(42,'Estadística Espacial',_binary ''),(43,'Visualización de Datos',_binary ''),(44,'Bioestadística',_binary ''),(45,'Educación Estadística',_binary ''),(46,'Estadística Industrial',_binary ''),(47,'Vinculación a Través de la Consultoría Estadística',_binary ''),(48,'Álgebra Lineal Avanzada Aplicada a la Estadística',_binary ''),(49,'Geoestadística',_binary ''),(50,'Introducción a la Minería de Textos',_binary ''),(51,'Estadística en la Salud',_binary ''),(52,'Didáctica de la Estadística',_binary ''),(53,'Estadística Empresarial',_binary ''),(54,'Tópicos de Estadística',_binary ''),(55,'Inglés I',_binary ''),(56,'Computación Básica',_binary ''),(57,'Introducción a la Programación',_binary ''),(58,'Fundamentos de Matemáticas',_binary ''),(59,'Habilidades del Pensamiento Crítico y Creativo',_binary ''),(60,'Lectura y Redacción a Través del Análisis del Mundo Contemporáneo',_binary ''),(61,'Inglés II',_binary ''),(62,'Laboratorio de Resolución de Problemas',_binary ''),(63,'Programación',_binary ''),(64,'Álgebra Lineal para Computación',_binary ''),(65,'Habilidades de Comunicación',_binary ''),(66,'Matemáticas Discretas',_binary ''),(67,'Requerimientos de Software',_binary ''),(68,'Estructuras de Datos',_binary ''),(69,'Bases de Datos',_binary ''),(70,'Sistemas Operativos',_binary ''),(71,'Probabilidad y Estadística para Computación',_binary ''),(72,'Principios de Diseño de Software',_binary ''),(73,'Paradigmas de Programación',_binary ''),(74,'Principios de Construcción de Software',_binary ''),(75,'Redes',_binary ''),(76,'Procesos para Ingeniería de Software',_binary ''),(77,'Diseño de Software',_binary ''),(78,'Administración de Proyectos de Software',_binary ''),(79,'Tecnologías para la Construcción de Software',_binary ''),(80,'Prueba de Software',_binary ''),(81,'Derecho de las Tecnologías de Información y Comunicación',_binary ''),(82,'Verificación y Validación de Software',_binary ''),(83,'Desarrollo de Software',_binary '\0'),(84,'Desarrollo de Aplicaciones',_binary ''),(85,'Desarrollo de Sistemas en Red',_binary ''),(86,'Proyecto Guiado',_binary ''),(87,'Prácticas de Ingeniería de Software',_binary ''),(88,'Desarrollo de Sistemas Web',_binary ''),(89,'Economía para Toma de Decisiones',_binary ''),(90,'Servicio Social',_binary ''),(91,'Experiencia Recepcional',_binary ''),(92,'Bases de Datos No Convencionales',_binary ''),(93,'Administración de Bases de Datos',_binary ''),(94,'Inteligencia Artificial Aplicada a la Ingeniería de Software',_binary ''),(95,'Medición de Software',_binary ''),(96,'Administración Avanzada de Servicios',_binary ''),(97,'Programación Segura',_binary ''),(98,'Sistemas Operativos Móviles',_binary ''),(99,'Pruebas de Penetración',_binary ''),(100,'Programación Multinúcleo',_binary ''),(101,'Diseño de Interfaces de Usuario',_binary ''),(102,'Proyectos de Software',_binary ''),(103,'Reingeniería de Software',_binary ''),(104,'Arquitectura de Dispositivos de Red',_binary ''),(105,'Principios de Telecomunicaciones',_binary ''),(106,'Programación de Sistemas',_binary ''),(107,'Metodología de la Investigación',_binary ''),(108,'Enrutamiento Básico',_binary ''),(109,'Arquitecturas en Red',_binary ''),(110,'Mantenimiento de Equipo de Cómputo',_binary ''),(111,'Enrutamiento Avanzado',_binary ''),(112,'Ética y Normatividades en Comunicaciones y Redes',_binary ''),(113,'Administración de Servidores',_binary ''),(114,'Análisis de Protocolos',_binary ''),(115,'Programación en la Administración de Redes',_binary ''),(116,'Sistemas Operativos Aplicados',_binary ''),(117,'Redes Inalámbricas',_binary ''),(118,'Acceso WAN',_binary ''),(120,'Conmutación con Redes LAN',_binary ''),(121,'Seguridad',_binary ''),(122,'Prácticas de Redes',_binary ''),(123,'Administración de Proyectos de Red',_binary ''),(124,'Cibercrimen y Herramientas Digital Forenses',_binary ''),(125,'Recolección y Preservación de Evidencias',_binary ''),(126,'Seguridad Móvil',_binary ''),(127,'Análisis Forense para Sistemas de Escritorio',_binary ''),(128,'Servicios de Virtualización',_binary ''),(129,'Cómputo Sustentable',_binary ''),(130,'Criptografía',_binary ''),(131,'Tecnologías de Información para la Innovación',_binary ''),(132,'Organización de Computadoras',_binary ''),(133,'Bases de Datos Avanzadas',_binary ''),(134,'Ingeniería de Software',_binary ''),(135,'Sistemas Inteligentes',_binary ''),(136,'Programación Avanzada',_binary ''),(137,'Sistema Web',_binary ''),(138,'Metodología de Desarrollo',_binary ''),(139,'Habilidades Directivas',_binary ''),(140,'Interacción Humano Computadora',_binary ''),(141,'Ética y Legislación Informática',_binary ''),(142,'Gestión de Proyectos de Tecnologías de Información',_binary ''),(143,'Tecnologías Web',_binary ''),(144,'Tecnologías para la Integración de Soluciones',_binary ''),(145,'Desarrollo Móvil',_binary ''),(146,'Integración de Soluciones',_binary ''),(147,'Proyecto Integrador',_binary ''),(148,'Servicio de Virtualización',_binary ''),(149,'Graficación',_binary ''),(150,'Diseño de Interacciones',_binary ''),(151,'Ingeniería de Software Emergente',_binary ''),(152,'Interfaces de Usuario Avanzadas',_binary '');
/*!40000 ALTER TABLE `educationalexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalprogram`
--

DROP TABLE IF EXISTS `educationalprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationalprogram` (
  `idEducationalProgram` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`idEducationalProgram`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalprogram`
--

LOCK TABLES `educationalprogram` WRITE;
/*!40000 ALTER TABLE `educationalprogram` DISABLE KEYS */;
INSERT INTO `educationalprogram` VALUES (1,'Estadística'),(2,'Ingeniería de Software'),(3,'Redes y Servicios de Cómputo'),(4,'Tecnologías Computacionales');
/*!40000 ALTER TABLE `educationalprogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalprogramrole`
--

DROP TABLE IF EXISTS `educationalprogramrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationalprogramrole` (
  `idEducationalProgramRole` int NOT NULL AUTO_INCREMENT,
  `idEducationalProgram` int NOT NULL,
  `idRole` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`idEducationalProgramRole`,`idEducationalProgram`,`idRole`,`username`),
  KEY `FK_EducationalProgramRole_User_idx` (`username`),
  KEY `FK_EducationalProgramRole_EducationalProgram_idx` (`idEducationalProgram`),
  KEY `FK_EducationalProgramRole_Role_idx` (`idRole`),
  CONSTRAINT `FK_EducationalProgramRole_EducationalProgram` FOREIGN KEY (`idEducationalProgram`) REFERENCES `educationalprogram` (`idEducationalProgram`),
  CONSTRAINT `FK_EducationalProgramRole_Role` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`),
  CONSTRAINT `FK_EducationalProgramRole_User` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalprogramrole`
--

LOCK TABLES `educationalprogramrole` WRITE;
/*!40000 ALTER TABLE `educationalprogramrole` DISABLE KEYS */;
INSERT INTO `educationalprogramrole` VALUES (1,2,1,'aarenas',_binary ''),(2,2,3,'aarenas',_binary ''),(3,2,3,'angesanchez',_binary ''),(4,2,2,'jocharan',_binary ''),(5,2,3,'jocharan',_binary ''),(6,2,3,'sauldominguez',_binary ''),(7,2,3,'juanmunoz',_binary ''),(8,2,4,'lalonso',_binary '');
/*!40000 ALTER TABLE `educationalprogramrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `idRole` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Coordinador de tutorías académicas'),(2,'Jefe de carrera'),(3,'Tutor académico'),(4,'Administrador');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schoolperiod`
--

DROP TABLE IF EXISTS `schoolperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schoolperiod` (
  `idSchoolPeriod` int NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`idSchoolPeriod`,`startDate`,`endDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolperiod`
--

LOCK TABLES `schoolperiod` WRITE;
/*!40000 ALTER TABLE `schoolperiod` DISABLE KEYS */;
INSERT INTO `schoolperiod` VALUES (1,'2023-02-07','2023-06-02');
/*!40000 ALTER TABLE `schoolperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `registrationNumber` varchar(10) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `paternalSurname` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `maternalSurname` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `emailAddress` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `available` bit(1) NOT NULL,
  `idEducationalProgram` int NOT NULL,
  `idAcademicPersonnel` int DEFAULT NULL,
  PRIMARY KEY (`registrationNumber`),
  KEY `FK_Student_EducationalProgram_idx` (`idEducationalProgram`),
  KEY `FK_Student_AcademicPersonnel_idx` (`idAcademicPersonnel`),
  CONSTRAINT `FK_Student_AcademicPersonnel` FOREIGN KEY (`idAcademicPersonnel`) REFERENCES `academicpersonnel` (`idAcademicPersonnel`),
  CONSTRAINT `FK_Student_EducationalProgram` FOREIGN KEY (`idEducationalProgram`) REFERENCES `educationalprogram` (`idEducationalProgram`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('S19014012','María José','Torres','Igartua','zs19014012@estudiantes.uv.mx',_binary '',2,28),('S19014017','Gustavo','Flores','Romero','zs19014017@estudiantes.uv.mx',_binary '',2,28),('S19014045','David Alexander','Mijangos','Paredes','zs19014045@estudiantes.uv.mx',_binary '',2,28),('S20015699','Armando Omar','Obando','Muñóz','zs20015699@estudiantes.uv.mx',_binary '',2,28),('S20015700','Jonatan','Alarcón','Alarcón','zs20015700@estudiantes.uv.mx',_binary '',2,28),('S20015701','Fernanda','López','Rodríguez','zs20015701@estudiantes.uv.mx',_binary '',2,48),('S20015707','María','Lozano','Cuevas','zs20015709@estudiantes.uv.mx',_binary '',2,48),('S20015709','Olivia','Galicia','Fernández','zs20015709@estudiantes.uv.mx',_binary '',2,48),('S20015717','Obet Jair','Hernández','González','zs20015717@estudiantes.uv.mx',_binary '',2,28),('S20015718','Gerardo','Herrera','Solano','zs20015718@estudiantes.uv.mx',_binary '',2,28),('S20015731','Carlos','Martínez','Barradas','zs20015731@estudiantes.uv.mx',_binary '',2,48),('S20015742','Mario Alberto','Jiménez','Jiménez','zs20015742@estudiantes.uv.mx',_binary '',2,28),('S20015744','Franz Jesús','Rivera','Alcántara','zs20015744@estudiantes.uv.mx',_binary '',2,28),('S20015757','Ricardo','Noguera','Martínez','zs20015757@estudiantes.uv.mx',_binary '',2,28),('S20015766','Daniel','Salazar','Contreras','zs20015766@estudiantes.uv.mx',_binary '',2,48),('S21013852','Ares Judda','Rivera','Soto','zs21013852@estudiantes.uv.mx',_binary '',2,28),('S21013872','Luis Alexis','Rodríguez','Medina','zs21013872@estudiantes.uv.mx',_binary '',2,28),('S21013877','Sergio de Jesús Marlon','Hernández','Pérez','zs21013877@estudiantes.uv.mx',_binary '',2,28),('S21013884','Omar Dylan','Segura','Platas','zs21013884@estudiantes.uv.mx',_binary '',2,28),('S21013898','Martin Emmanuel','Cruz','Carmona','zs21013898@estudiantes.uv.mx',_binary '',2,28),('S21013906','Xavier Arian','Olivares','Sánchez','zs21013906@estudiantes.uv.mx',_binary '',2,28),('S21013911','Héctor','González','Camarena','zs21013911@estudiantes.uv.mx',_binary '',2,58),('S21021431','Ferdy','Reyes','Viveros','zs21021431@estudiantes.uv.mx',_binary '',2,28);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `syllabus` (
  `idSyllabus` int NOT NULL AUTO_INCREMENT,
  `idEducationalProgram` int NOT NULL,
  `idEducationalExperience` int NOT NULL,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`idSyllabus`,`idEducationalProgram`,`idEducationalExperience`),
  KEY `FK_Syllabus_EducationalExperience_idx` (`idEducationalExperience`),
  KEY `FK_Syllabus_EducationalProgram_idx` (`idEducationalProgram`),
  CONSTRAINT `FK_Syllabus_EducationalExperience` FOREIGN KEY (`idEducationalExperience`) REFERENCES `educationalexperience` (`idEducationalExperience`),
  CONSTRAINT `FK_Syllabus_EducationalProgram` FOREIGN KEY (`idEducationalProgram`) REFERENCES `educationalprogram` (`idEducationalProgram`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syllabus`
--

LOCK TABLES `syllabus` WRITE;
/*!40000 ALTER TABLE `syllabus` DISABLE KEYS */;
INSERT INTO `syllabus` VALUES (1,1,1,_binary ''),(2,1,2,_binary ''),(3,1,3,_binary ''),(4,1,4,_binary ''),(5,1,5,_binary ''),(6,1,6,_binary ''),(7,1,7,_binary ''),(8,1,8,_binary ''),(9,1,9,_binary ''),(10,1,10,_binary ''),(11,1,11,_binary ''),(12,1,12,_binary ''),(13,1,13,_binary ''),(14,1,14,_binary ''),(15,1,15,_binary ''),(16,1,16,_binary ''),(17,1,17,_binary ''),(18,1,18,_binary ''),(19,1,19,_binary ''),(20,1,20,_binary ''),(21,1,21,_binary ''),(22,1,22,_binary ''),(23,1,23,_binary ''),(24,1,24,_binary ''),(25,1,25,_binary ''),(26,1,26,_binary ''),(27,1,27,_binary ''),(28,1,28,_binary ''),(29,1,29,_binary ''),(30,1,30,_binary ''),(31,1,31,_binary ''),(32,1,32,_binary ''),(33,1,33,_binary ''),(34,1,34,_binary ''),(35,1,35,_binary ''),(36,1,36,_binary ''),(37,1,37,_binary ''),(38,1,38,_binary ''),(39,1,39,_binary ''),(40,1,40,_binary ''),(41,1,41,_binary ''),(42,1,42,_binary ''),(43,1,43,_binary ''),(44,1,44,_binary ''),(45,1,45,_binary ''),(46,1,46,_binary ''),(47,1,47,_binary ''),(48,1,48,_binary ''),(49,1,49,_binary ''),(50,1,50,_binary ''),(51,1,51,_binary ''),(52,1,52,_binary ''),(53,1,53,_binary ''),(54,1,54,_binary ''),(55,2,40,_binary ''),(56,2,55,_binary ''),(57,2,56,_binary ''),(58,2,57,_binary ''),(59,2,58,_binary ''),(60,2,59,_binary ''),(61,2,60,_binary ''),(62,2,61,_binary ''),(63,2,62,_binary ''),(64,2,63,_binary ''),(65,2,64,_binary ''),(66,2,65,_binary ''),(67,2,66,_binary ''),(68,2,67,_binary ''),(69,2,68,_binary ''),(70,2,69,_binary ''),(71,2,70,_binary ''),(72,2,71,_binary ''),(73,2,72,_binary ''),(74,2,73,_binary ''),(75,2,74,_binary ''),(76,2,75,_binary ''),(77,2,76,_binary ''),(78,2,77,_binary ''),(79,2,78,_binary ''),(80,2,79,_binary ''),(81,2,80,_binary ''),(82,2,81,_binary ''),(83,2,82,_binary ''),(84,2,83,_binary ''),(85,2,84,_binary ''),(86,2,85,_binary ''),(87,2,86,_binary ''),(88,2,87,_binary ''),(89,2,88,_binary ''),(90,2,89,_binary ''),(91,2,90,_binary ''),(92,2,91,_binary ''),(93,2,92,_binary ''),(94,2,93,_binary ''),(95,2,94,_binary ''),(96,2,95,_binary ''),(97,2,96,_binary ''),(98,2,97,_binary ''),(99,2,98,_binary ''),(100,2,99,_binary ''),(101,2,100,_binary ''),(102,2,101,_binary ''),(103,2,102,_binary ''),(104,2,103,_binary ''),(105,3,40,_binary ''),(106,3,55,_binary ''),(107,3,56,_binary ''),(108,3,57,_binary ''),(109,3,58,_binary ''),(110,3,59,_binary ''),(111,3,60,_binary ''),(112,3,61,_binary ''),(113,3,63,_binary ''),(114,3,64,_binary ''),(115,3,65,_binary ''),(116,3,66,_binary ''),(117,3,68,_binary ''),(118,3,69,_binary ''),(119,3,70,_binary ''),(120,3,71,_binary ''),(121,3,75,_binary ''),(122,3,88,_binary ''),(123,3,90,_binary ''),(124,3,91,_binary ''),(125,3,93,_binary ''),(126,3,96,_binary ''),(127,3,97,_binary ''),(128,3,98,_binary ''),(129,3,99,_binary ''),(130,3,104,_binary ''),(131,3,105,_binary ''),(132,3,106,_binary ''),(133,3,107,_binary ''),(134,3,108,_binary ''),(135,3,109,_binary ''),(136,3,110,_binary ''),(137,3,111,_binary ''),(138,3,112,_binary ''),(139,3,113,_binary ''),(140,3,114,_binary ''),(141,3,115,_binary ''),(142,3,116,_binary ''),(143,3,117,_binary ''),(144,3,118,_binary ''),(146,3,120,_binary ''),(147,3,121,_binary ''),(148,3,122,_binary ''),(149,3,123,_binary ''),(150,3,124,_binary ''),(151,3,125,_binary ''),(152,3,126,_binary ''),(153,3,127,_binary ''),(154,3,128,_binary ''),(155,3,129,_binary ''),(156,3,130,_binary ''),(157,4,40,_binary ''),(158,4,55,_binary ''),(159,4,56,_binary ''),(160,4,57,_binary ''),(161,4,58,_binary ''),(162,4,59,_binary ''),(163,4,60,_binary ''),(164,4,61,_binary ''),(165,4,63,_binary ''),(166,4,64,_binary ''),(167,4,66,_binary ''),(168,4,68,_binary ''),(169,4,69,_binary ''),(170,4,70,_binary ''),(171,4,71,_binary ''),(172,4,75,_binary ''),(173,4,78,_binary ''),(174,4,83,_binary ''),(175,4,90,_binary ''),(176,4,91,_binary ''),(177,4,92,_binary ''),(178,4,93,_binary ''),(179,4,107,_binary ''),(180,4,112,_binary ''),(181,4,121,_binary ''),(182,4,131,_binary ''),(183,4,132,_binary ''),(184,4,133,_binary ''),(185,4,134,_binary ''),(186,4,135,_binary ''),(187,4,136,_binary ''),(188,4,137,_binary ''),(189,4,138,_binary ''),(190,4,139,_binary ''),(191,4,140,_binary ''),(192,4,141,_binary ''),(193,4,142,_binary ''),(194,4,143,_binary ''),(195,4,144,_binary ''),(196,4,145,_binary ''),(197,4,146,_binary ''),(198,4,147,_binary ''),(199,4,148,_binary ''),(200,4,149,_binary ''),(201,4,150,_binary ''),(202,4,151,_binary ''),(203,3,152,_binary ''),(205,4,152,_binary '');
/*!40000 ALTER TABLE `syllabus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(450) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aarenas','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('angesanchez','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('fmunoz','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('jocharan','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('jromo','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('jruiz','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('juanmunoz','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('julopez','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('lalonso','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('malonso','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('mmillan','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('sauldominguez','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4='),('vmendez','MEPIxBcHCQgt8Um3LJ0euc5Wy9ctDB82/RCKiJRe0V4=');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 14:53:52
