-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: iotsensor
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add menu',8,'add_menu'),(30,'Can change menu',8,'change_menu'),(31,'Can delete menu',8,'delete_menu'),(32,'Can view menu',8,'view_menu'),(33,'Can add menu',9,'add_menu'),(34,'Can change menu',9,'change_menu'),(35,'Can delete menu',9,'delete_menu'),(36,'Can view menu',9,'view_menu'),(37,'Can add device',10,'add_device'),(38,'Can change device',10,'change_device'),(39,'Can delete device',10,'delete_device'),(40,'Can view device',10,'view_device');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$eOYpjsVHEkWh$2mw7FO6rZbYCGbz1LYov7QAUuim1qXOVei9aAidiZ8o=','2019-08-24 19:40:14.506731',1,'jlvaldespino','','','jlvaldespino@gmail.com',1,1,'2019-08-24 15:49:50.837529'),(2,'pbkdf2_sha256$150000$6F8HFVjIlkmx$NJA1Dr99iXfEE2AlpevLOIn2ugGJVvh3fbJBRQ9qv64=','2019-09-06 16:32:37.115507',1,'admin','','','admin@gmail.com',1,1,'2019-08-30 16:50:34.185485');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `azureCosmos_device`
--

DROP TABLE IF EXISTS `azureCosmos_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `azureCosmos_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(50) NOT NULL,
  `sucursalId` varchar(50) NOT NULL,
  `fridge` varchar(50) NOT NULL,
  `fridge_door` varchar(50) NOT NULL,
  `tier` varchar(50) NOT NULL,
  `sensor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `azureCosmos_device`
--

LOCK TABLES `azureCosmos_device` WRITE;
/*!40000 ALTER TABLE `azureCosmos_device` DISABLE KEYS */;
INSERT INTO `azureCosmos_device` VALUES (11,'Oxxo_005','Palmas','5','6','1','002'),(4,'Oxxo_001','Interlomas_001','05','1','05','02'),(5,'Oxxo_002','Revolucion_001','01','1','01','01'),(6,'Oxxo_003','Tacubaya_001','05','1','05','02'),(10,'Oxxo_004','Colima','3','2','2','3');
/*!40000 ALTER TABLE `azureCosmos_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-02 16:35:23.262863','1','menu1',1,'[{\"added\": {}}]',8,2),(2,'2019-09-02 16:35:32.272139','2','menu2',1,'[{\"added\": {}}]',8,2),(3,'2019-09-02 18:22:03.968294','1','Administración',1,'[{\"added\": {}}]',9,2),(4,'2019-09-02 18:24:10.808780','2','Administración',1,'[{\"added\": {}}]',9,2),(5,'2019-09-02 18:26:14.723102','3','Dispositivos',1,'[{\"added\": {}}]',9,2),(6,'2019-09-02 18:26:56.725205','4','Reportes',1,'[{\"added\": {}}]',9,2),(7,'2019-09-02 18:27:27.997423','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"submenu\"]}}]',9,2),(8,'2019-09-04 16:22:48.261830','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"icono\"]}}]',9,2),(9,'2019-09-04 16:23:26.239714','4','Reportes',2,'[{\"changed\": {\"fields\": [\"icono\"]}}]',9,2),(10,'2019-09-04 17:04:06.668857','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(11,'2019-09-04 17:04:35.880768','3','Dispositivos',2,'[]',9,2),(12,'2019-09-04 17:06:55.839578','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(13,'2019-09-04 17:25:15.383983','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(14,'2019-09-05 18:28:15.577668','1','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(15,'2019-09-05 18:28:23.064151','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(16,'2019-09-05 18:28:31.838334','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(17,'2019-09-05 18:28:38.164634','4','Reportes',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(18,'2019-09-05 18:53:21.011108','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(19,'2019-09-05 18:53:32.932621','3','Dispositivos',2,'[]',9,2),(20,'2019-09-05 18:57:28.258650','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(21,'2019-09-05 18:57:37.046691','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(22,'2019-09-05 18:59:05.259974','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(23,'2019-09-05 18:59:12.861127','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(24,'2019-09-06 17:39:50.503295','3','no lo se',3,'',10,2),(25,'2019-09-06 17:39:50.511273','2','a',3,'',10,2),(26,'2019-09-06 17:39:50.519317','1','a',3,'',10,2),(27,'2019-09-06 17:39:59.925919','4','Oxxo_001',2,'[]',10,2),(28,'2019-09-06 18:05:52.952599','9','p',3,'',10,2),(29,'2019-09-06 18:05:52.961481','8','holis',3,'',10,2),(30,'2019-09-06 18:05:52.970215','7','holis',3,'',10,2),(31,'2019-09-06 18:35:35.461222','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(32,'2019-09-06 18:35:45.590528','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(33,'2019-09-06 18:36:52.317715','2','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(34,'2019-09-06 18:37:13.650428','2','Administración',2,'[]',9,2),(35,'2019-09-06 18:43:51.092960','2','Administración',2,'[]',9,2),(36,'2019-09-06 18:43:57.229463','4','Reportes',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(37,'2019-09-06 18:44:24.831559','1','Administración',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(38,'2019-09-06 18:44:37.641194','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(39,'2019-09-06 18:44:42.412459','2','Administración',2,'[]',9,2),(40,'2019-09-06 18:45:10.958561','3','Dispositivos',2,'[{\"changed\": {\"fields\": [\"pagina\"]}}]',9,2),(41,'2019-09-06 18:59:06.815883','3','dispositivos',2,'[{\"changed\": {\"fields\": [\"menu\"]}}]',9,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'azureCosmos','device'),(5,'contenttypes','contenttype'),(7,'loginapp','profile'),(8,'menus','menu'),(9,'menus2','menu'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-24 15:46:38.407488'),(2,'auth','0001_initial','2019-08-24 15:46:38.628809'),(3,'admin','0001_initial','2019-08-24 15:46:38.995512'),(4,'admin','0002_logentry_remove_auto_add','2019-08-24 15:46:39.066767'),(5,'admin','0003_logentry_add_action_flag_choices','2019-08-24 15:46:39.081282'),(6,'contenttypes','0002_remove_content_type_name','2019-08-24 15:46:39.141698'),(7,'auth','0002_alter_permission_name_max_length','2019-08-24 15:46:39.183398'),(8,'auth','0003_alter_user_email_max_length','2019-08-24 15:46:39.234556'),(9,'auth','0004_alter_user_username_opts','2019-08-24 15:46:39.248004'),(10,'auth','0005_alter_user_last_login_null','2019-08-24 15:46:39.268715'),(11,'auth','0006_require_contenttypes_0002','2019-08-24 15:46:39.270888'),(12,'auth','0007_alter_validators_add_error_messages','2019-08-24 15:46:39.286378'),(13,'auth','0008_alter_user_username_max_length','2019-08-24 15:46:39.341562'),(14,'auth','0009_alter_user_last_name_max_length','2019-08-24 15:46:39.383960'),(15,'auth','0010_alter_group_name_max_length','2019-08-24 15:46:39.433300'),(16,'auth','0011_update_proxy_permissions','2019-08-24 15:46:39.449032'),(17,'loginapp','0001_initial','2019-08-24 15:46:39.499992'),(18,'sessions','0001_initial','2019-08-24 15:46:39.558656'),(19,'menus','0001_initial','2019-09-02 16:22:44.263805'),(20,'menus2','0001_initial','2019-09-02 17:55:32.744722'),(21,'azureCosmos','0001_initial','2019-09-05 20:41:47.905159'),(22,'menus2','0002_auto_20190905_1541','2019-09-05 20:41:47.972727');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('kcb58a132eo84y9x0mr82emmuecec9w5','ZTU0NDRjYTFmYWMxYzIyYWI5MDdkZWRjOTM1ZjY0OTAxMzJiZmY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDg3NmI4YTYzZTQ2Nzc0YjhiMWFjY2Q1MGE5NzVmOTg5MjM0M2Y2In0=','2019-09-07 19:40:14.509243'),('wdaw7rxvxxrs2qnmw95vr7twuiit7qao','ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=','2019-09-20 16:32:37.139454');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginapp_profile`
--

DROP TABLE IF EXISTS `loginapp_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginapp_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `loginapp_profile_user_id_239364ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginapp_profile`
--

LOCK TABLES `loginapp_profile` WRITE;
/*!40000 ALTER TABLE `loginapp_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginapp_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus2_menu`
--

DROP TABLE IF EXISTS `menus2_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus2_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL,
  `submenu` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `visible` varchar(2) NOT NULL,
  `pagina` varchar(50) NOT NULL,
  `id_suc` int(11) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `usuario_modifico` varchar(45) NOT NULL,
  `icono` varchar(50) NOT NULL,
  `ic_doc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus2_menu`
--

LOCK TABLES `menus2_menu` WRITE;
/*!40000 ALTER TABLE `menus2_menu` DISABLE KEYS */;
INSERT INTO `menus2_menu` VALUES (1,'Administración','Usuarios','Busqueda','Si','usuarios url2',1,'2019-09-02 12:55:49.000000','jlvaldespino','menu-icon fa fa-desktop',0),(2,'Administración','Dispositivos','Editar','No','devicesRegister',1,'2019-09-02 12:55:49.000000','jlvaldespino','menu-icon fa fa-desktop',0),(3,'dispositivos','No','Busqueda','Si','device',1,'2019-09-02 12:55:49.000000','jlvaldespino','menu-icon fa fa-list-alt',2),(4,'Reportes','No','Busqueda','Si','Reportes url2',2,'2019-09-02 12:55:49.000000','jlvaldespino','menu-icon fa fa-calendar',2);
/*!40000 ALTER TABLE `menus2_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-06 14:25:18
