-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: django_webshop
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `accounts_profile`
--

DROP TABLE IF EXISTS `accounts_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `location` varchar(63) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (1,'images/accounts/profiles/admin.jpg','+201176498236','Beni Suef','',1);
/*!40000 ALTER TABLE `accounts_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add cart',9,'add_cart'),(34,'Can change cart',9,'change_cart'),(35,'Can delete cart',9,'delete_cart'),(36,'Can view cart',9,'view_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$RnroVDBoo3dTwGowJCfJHy$td6l7hPKqkhUhIQg8BWdlxw99N7OyCzCwZGHFTmxtfU=','2021-11-26 11:25:25.386116',1,'admin','Mohammed','Mamdouh','admin@webshop.com',1,1,'2021-11-23 18:54:08.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_id` bigint NOT NULL,
  `owner_id` int NOT NULL,
  `added_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cart_item_id_c66662e3_fk_product_product_id` (`item_id`),
  KEY `cart_cart_owner_id_324de279_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `cart_cart_item_id_c66662e3_fk_product_product_id` FOREIGN KEY (`item_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `cart_cart_owner_id_324de279_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-23 21:59:12.349654','1','admin',2,'[]',4,1),(2,'2021-11-23 22:03:16.787634','1','admin',1,'[{\"added\": {}}]',7,1),(3,'2021-11-23 22:04:06.965490','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(4,'2021-11-23 22:04:47.416003','1','admin',2,'[{\"changed\": {\"fields\": [\"Phone number\"]}}]',7,1),(5,'2021-11-24 15:07:13.545670','1','oppo',1,'[{\"added\": {}}]',8,1),(6,'2021-11-24 15:24:17.499116','2','xiaomi',1,'[{\"added\": {}}]',8,1),(7,'2021-11-24 15:27:31.948786','2','xiaomi',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(8,'2021-11-24 15:38:42.250966','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(9,'2021-11-24 15:39:06.186211','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(10,'2021-11-24 15:43:07.512707','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(11,'2021-11-24 15:49:32.990412','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(12,'2021-11-24 15:55:48.325694','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(13,'2021-11-24 15:56:18.386429','1','oppoproduct_imageproduct_imageproduct_image',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(14,'2021-11-24 15:59:39.260525','1','oppoproduct_imageproduct_imagepro',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(15,'2021-11-24 16:01:19.182348','1','oppo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(16,'2021-11-24 16:01:59.296498','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(17,'2021-11-24 16:02:16.522234','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(18,'2021-11-24 17:27:11.400084','3','acer',1,'[{\"added\": {}}]',8,1),(19,'2021-11-24 17:28:16.939579','4','gaming mouse',1,'[{\"added\": {}}]',8,1),(20,'2021-11-24 17:30:09.576711','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(21,'2021-11-24 17:30:56.241251','1','oppo',2,'[{\"changed\": {\"fields\": [\"Product code\"]}}]',8,1),(22,'2021-11-24 21:37:03.536429','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(23,'2021-11-24 21:39:07.855943','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(24,'2021-11-24 21:42:05.145591','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(25,'2021-11-24 21:44:14.957685','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(26,'2021-11-24 21:49:11.157118','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(27,'2021-11-24 22:07:46.038806','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(28,'2021-11-25 12:59:16.456130','1','Cart object (1)',1,'[{\"added\": {}}]',9,1),(29,'2021-11-25 12:59:23.836695','2','Cart object (2)',1,'[{\"added\": {}}]',9,1),(30,'2021-11-25 12:59:35.385109','3','Cart object (3)',1,'[{\"added\": {}}]',9,1),(31,'2021-11-25 17:42:35.762071','6','admin',3,'',9,1),(32,'2021-11-25 17:42:35.774045','5','admin',3,'',9,1),(33,'2021-11-25 17:42:35.780043','4','admin',3,'',9,1),(34,'2021-11-25 17:42:35.786039','3','admin',3,'',9,1),(35,'2021-11-25 17:42:35.793053','2','admin',3,'',9,1),(36,'2021-11-25 17:42:35.801030','1','admin',3,'',9,1),(37,'2021-11-25 18:20:25.267400','13','admin',3,'',9,1),(38,'2021-11-25 18:20:25.273395','12','admin',3,'',9,1),(39,'2021-11-25 18:20:25.278404','11','admin',3,'',9,1),(40,'2021-11-25 18:20:25.283372','10','admin',3,'',9,1),(41,'2021-11-25 18:20:25.288370','9','admin',3,'',9,1),(42,'2021-11-25 18:20:25.293368','8','admin',3,'',9,1),(43,'2021-11-25 18:20:25.298367','7','admin',3,'',9,1),(44,'2021-11-25 18:26:12.002449','20','admin',3,'',9,1),(45,'2021-11-25 18:26:12.014272','19','admin',3,'',9,1),(46,'2021-11-25 18:26:12.020246','18','admin',3,'',9,1),(47,'2021-11-25 18:26:12.026281','17','admin',3,'',9,1),(48,'2021-11-25 18:26:12.031316','16','admin',3,'',9,1),(49,'2021-11-25 18:26:12.036238','15','admin',3,'',9,1),(50,'2021-11-25 18:26:12.041236','14','admin',3,'',9,1),(51,'2021-11-25 18:42:09.826812','26','admin',3,'',9,1),(52,'2021-11-25 18:42:09.834787','25','admin',3,'',9,1),(53,'2021-11-25 18:42:09.840802','24','admin',3,'',9,1),(54,'2021-11-25 18:42:09.848781','23','admin',3,'',9,1),(55,'2021-11-25 18:42:09.854775','22','admin',3,'',9,1),(56,'2021-11-25 18:42:09.860773','21','admin',3,'',9,1),(57,'2021-11-25 18:55:51.628896','35','admin',3,'',9,1),(58,'2021-11-25 18:55:51.637011','34','admin',3,'',9,1),(59,'2021-11-25 18:55:51.643005','33','admin',3,'',9,1),(60,'2021-11-25 18:55:51.648004','32','admin',3,'',9,1),(61,'2021-11-25 18:55:51.655001','31','admin',3,'',9,1),(62,'2021-11-25 18:55:51.661995','30','admin',3,'',9,1),(63,'2021-11-25 18:55:51.667992','29','admin',3,'',9,1),(64,'2021-11-25 18:55:51.673991','28','admin',3,'',9,1),(65,'2021-11-25 18:55:51.679995','27','admin',3,'',9,1),(66,'2021-11-25 20:11:03.627077','40','admin',3,'',9,1),(67,'2021-11-25 20:11:03.634468','39','admin',3,'',9,1),(68,'2021-11-25 20:11:03.640481','38','admin',3,'',9,1),(69,'2021-11-25 20:11:03.646479','37','admin',3,'',9,1),(70,'2021-11-25 20:11:03.652496','36','admin',3,'',9,1),(71,'2021-11-25 20:12:06.111395','44','admin',3,'',9,1),(72,'2021-11-25 20:12:06.118367','43','admin',3,'',9,1),(73,'2021-11-25 20:12:06.124364','42','admin',3,'',9,1),(74,'2021-11-25 20:12:06.129362','41','admin',3,'',9,1),(75,'2021-11-25 20:23:53.122904','52','admin',3,'',9,1),(76,'2021-11-25 20:23:53.131895','51','admin',3,'',9,1),(77,'2021-11-25 20:23:53.136876','50','admin',3,'',9,1),(78,'2021-11-25 20:23:53.146870','49','admin',3,'',9,1),(79,'2021-11-25 20:23:53.157937','48','admin',3,'',9,1),(80,'2021-11-25 20:23:53.163863','47','admin',3,'',9,1),(81,'2021-11-25 20:23:53.169887','46','admin',3,'',9,1),(82,'2021-11-25 20:23:53.176853','45','admin',3,'',9,1),(83,'2021-11-25 22:29:07.638936','9','xiaomi tablet',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(84,'2021-11-25 22:38:36.204609','2','xiaomi',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(85,'2021-11-25 22:42:12.096909','1','oppo',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(86,'2021-11-25 22:54:08.616401','63','admin',3,'',9,1),(87,'2021-11-25 22:54:08.622396','62','admin',3,'',9,1),(88,'2021-11-25 22:54:08.633391','61','admin',3,'',9,1),(89,'2021-11-25 22:54:08.642385','60','admin',3,'',9,1),(90,'2021-11-25 23:17:07.116271','67','admin',3,'',9,1),(91,'2021-11-25 23:17:07.122307','66','admin',3,'',9,1),(92,'2021-11-25 23:17:07.127283','65','admin',3,'',9,1),(93,'2021-11-25 23:17:07.133279','64','admin',3,'',9,1),(94,'2021-11-26 00:51:20.377730','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(95,'2021-11-26 00:54:00.256222','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(96,'2021-11-26 01:12:27.155282','78','admin',3,'',9,1),(97,'2021-11-26 01:12:27.163295','77','admin',3,'',9,1),(98,'2021-11-26 01:12:27.171318','76','admin',3,'',9,1),(99,'2021-11-26 01:12:27.177282','72','admin',3,'',9,1),(100,'2021-11-26 10:54:36.153008','81','admin',3,'',9,1),(101,'2021-11-26 10:54:36.158006','80','admin',3,'',9,1),(102,'2021-11-26 10:54:36.162003','79','admin',3,'',9,1),(103,'2021-11-26 10:54:36.167000','75','admin',3,'',9,1),(104,'2021-11-26 10:59:48.134271','83','admin',3,'',9,1),(105,'2021-11-26 10:59:48.141264','82','admin',3,'',9,1),(106,'2021-11-26 11:00:02.309629','87','admin',3,'',9,1),(107,'2021-11-26 11:00:02.315623','86','admin',3,'',9,1),(108,'2021-11-26 11:00:02.321620','85','admin',3,'',9,1),(109,'2021-11-26 11:00:02.326617','84','admin',3,'',9,1),(110,'2021-11-26 11:07:49.415363','91','admin',3,'',9,1),(111,'2021-11-26 11:07:49.423915','90','admin',3,'',9,1),(112,'2021-11-26 11:07:49.428916','89','admin',3,'',9,1),(113,'2021-11-26 11:07:49.435910','88','admin',3,'',9,1),(114,'2021-11-26 11:10:40.493161','97','admin',3,'',9,1),(115,'2021-11-26 11:10:40.501159','96','admin',3,'',9,1),(116,'2021-11-26 11:10:40.507173','95','admin',3,'',9,1),(117,'2021-11-26 11:10:40.512174','94','admin',3,'',9,1),(118,'2021-11-26 11:10:40.518149','93','admin',3,'',9,1),(119,'2021-11-26 11:10:40.524160','92','admin',3,'',9,1),(120,'2021-11-26 11:17:39.769214','102','admin',3,'',9,1),(121,'2021-11-26 11:17:39.777209','101','admin',3,'',9,1),(122,'2021-11-26 11:17:39.784205','100','admin',3,'',9,1),(123,'2021-11-26 11:17:39.790201','99','admin',3,'',9,1),(124,'2021-11-26 11:17:39.800195','98','admin',3,'',9,1),(125,'2021-11-26 11:21:08.434635','108','admin',3,'',9,1),(126,'2021-11-26 11:21:08.443612','107','admin',3,'',9,1),(127,'2021-11-26 11:21:08.450609','106','admin',3,'',9,1),(128,'2021-11-26 11:21:08.456634','105','admin',3,'',9,1),(129,'2021-11-26 11:21:08.464598','104','admin',3,'',9,1),(130,'2021-11-26 11:21:08.484620','103','admin',3,'',9,1),(131,'2021-11-26 11:28:09.940578','117','admin',3,'',9,1),(132,'2021-11-26 11:28:33.371768','116','admin',3,'',9,1),(133,'2021-11-26 11:28:33.378789','115','admin',3,'',9,1),(134,'2021-11-26 11:28:33.384759','114','admin',3,'',9,1),(135,'2021-11-26 11:28:33.390811','113','admin',3,'',9,1),(136,'2021-11-26 11:28:33.397808','112','admin',3,'',9,1),(137,'2021-11-26 11:28:33.407726','111','admin',3,'',9,1),(138,'2021-11-26 11:28:33.417721','110','admin',3,'',9,1),(139,'2021-11-26 11:28:33.423718','109','admin',3,'',9,1),(140,'2021-11-26 11:53:31.583344','154','admin',3,'',9,1),(141,'2021-11-26 11:53:31.589347','153','admin',3,'',9,1),(142,'2021-11-26 11:53:31.594345','152','admin',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','profile'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'cart','cart'),(5,'contenttypes','contenttype'),(8,'product','product'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-23 18:49:01.597402'),(2,'auth','0001_initial','2021-11-23 18:49:02.827694'),(3,'admin','0001_initial','2021-11-23 18:49:03.220469'),(4,'admin','0002_logentry_remove_auto_add','2021-11-23 18:49:03.236461'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-23 18:49:03.252451'),(6,'contenttypes','0002_remove_content_type_name','2021-11-23 18:49:03.435345'),(7,'auth','0002_alter_permission_name_max_length','2021-11-23 18:49:03.546281'),(8,'auth','0003_alter_user_email_max_length','2021-11-23 18:49:03.591258'),(9,'auth','0004_alter_user_username_opts','2021-11-23 18:49:03.607269'),(10,'auth','0005_alter_user_last_login_null','2021-11-23 18:49:03.713203'),(11,'auth','0006_require_contenttypes_0002','2021-11-23 18:49:03.721202'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-23 18:49:03.738173'),(13,'auth','0008_alter_user_username_max_length','2021-11-23 18:49:03.888088'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-23 18:49:04.311844'),(15,'auth','0010_alter_group_name_max_length','2021-11-23 18:49:04.358817'),(16,'auth','0011_update_proxy_permissions','2021-11-23 18:49:04.383802'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-23 18:49:04.535726'),(18,'sessions','0001_initial','2021-11-23 18:49:04.609671'),(19,'accounts','0001_initial','2021-11-23 21:50:42.756470'),(20,'product','0001_initial','2021-11-24 13:57:18.447071'),(21,'product','0002_auto_20211124_1948','2021-11-24 17:48:51.264479'),(22,'cart','0001_initial','2021-11-25 12:52:08.572037'),(23,'cart','0002_cart_added_at','2021-11-25 13:08:59.922076'),(24,'product','0003_auto_20211126_0221','2021-11-26 00:21:16.810802');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hoewdx8w9f8xn1twa9uii8dzz24ia4as','.eJxVjDsOwjAQRO_iGlk2mOClpM8ZrP0ZB5AjxUmFuDuJlAI03bw38zYJl7mkpemUBjFX483htyPkp9YNyAPrfbQ81nkayG6K3Wmz_Sj6uu3u30HBVtY1RnZEOWin-ezBe8eK2hEAOGQ6qXLMjAGZs2C8rDkGYRDM0QOQ-XwBJ4E5wQ:1mqZM5:dP2wHCa-xzgibBfuJYnHTGrCqjpznTzXspQ0GyobUW4','2021-12-10 11:25:25.394093');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext,
  `posted_on` datetime(6) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `trader_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_product_product_code_a51619e7_uniq` (`product_code`),
  KEY `product_product_slug_76cde0ae` (`slug`),
  KEY `product_product_trader_id_298d294b_fk_auth_user_id` (`trader_id`),
  CONSTRAINT `product_product_trader_id_298d294b_fk_auth_user_id` FOREIGN KEY (`trader_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` VALUES (1,'oppo','images/products/1.jpg','this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description.','2021-11-25 22:42:12.093914',199.99,'23432xd','oppo',1),(2,'xiaomi','images/products/2.jpg','this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description. this is a description.','2021-11-25 22:38:36.200613',799.99,'qwe232','xiaomi',1),(3,'acer','images/products/None_JFaIc8j.jpg','acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description. acer description.','2021-11-24 17:27:11.394068',999.99,'dqw23edwdq','acer',1),(4,'gaming mouse','images/products/None_36r1Nnb.jpg','mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description. mouse description.','2021-11-24 17:28:16.935581',89.99,'ef232r','gaming-mouse',1),(5,'gaming keyboard','images/products/None_jjJb6c3.jpg','keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description. keyboard description.','2021-11-24 18:00:07.093786',94.99,'23rewd','gaming-keyboard',1),(6,'hp','images/products/None_Sgqm7fb.jpg','hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description. hp description.','2021-11-24 20:57:44.238016',499.99,'dwee14fd','hp',1),(7,'apple macbook','images/products/None_zwtiYHG.jpg','apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description. apple macbook description.','2021-11-24 20:59:19.409331',1999.99,'21ed32d32','apple-macbook',1),(8,'apple imac','images/products/None_UQUgMo0.jpg','apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description. apple imac description.','2021-11-24 21:00:33.956575',3999.99,'qw2r3ref','apple-imac',1),(9,'xiaomi tablet','images/products/9.jpg','xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description. xiaomi tablet description.','2021-11-25 22:29:07.632939',399.99,'wqeg2323','xiaomi-tablet',1);
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 14:04:04
