-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: iotsensor
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `api_devicedata`
--

DROP TABLE IF EXISTS `api_devicedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_devicedata` (
  `devicedataId` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `deviceId` varchar(50) NOT NULL,
  `porcentage` varchar(20) NOT NULL,
  `distance` varchar(20) NOT NULL,
  `latitude` varchar(20),
  `longitude` varchar(20),
  `sensor` varchar(20) NOT NULL,
  `time` varchar(50),
  PRIMARY KEY (`devicedataId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_devicedata`
--

LOCK TABLES `api_devicedata` WRITE;
/*!40000 ALTER TABLE `api_devicedata` DISABLE KEYS */;
INSERT INTO `api_devicedata` VALUES (1,'2019-09-17 18:36:55.871149','Oxxo_003','31.11111','31','','','',''),(2,'2019-09-17 18:36:58.688622','Oxxo_003','31.11111','31','','','',''),(3,'2019-09-17 18:37:08.916575','Oxxo_003','80','9','','','',''),(4,'2019-09-17 18:37:11.758098','Oxxo_003','20','36','','','',''),(5,'2019-09-17 18:37:21.748757','Oxxo_003','20','36','','','',''),(6,'2019-09-17 18:37:42.482434','Oxxo_003','17.77778','37','','','',''),(7,'2019-09-17 18:37:53.414030','Oxxo_003','20','36','','','',''),(8,'2019-09-17 18:38:13.604944','Oxxo_003','17.77778','37','','','',''),(9,'2019-09-17 18:38:34.467058','Oxxo_003','15.55556','38','','','',''),(10,'2019-09-17 18:38:45.675843','Oxxo_003','20','36','','','',''),(11,'2019-09-17 18:39:05.766559','Oxxo_003','17.77778','37','','','',''),(12,'2019-09-17 18:39:16.796380','Oxxo_003','20','36','','','',''),(13,'2019-09-17 18:39:45.478972','Oxxo_003','17.77778','37','','','',''),(14,'2019-09-17 18:39:56.473457','Oxxo_003','20','36','','','',''),(15,'2019-09-17 18:40:07.786533','Oxxo_003','17.77778','37','','','',''),(16,'2019-09-17 18:40:36.652848','Oxxo_003','20','36','','','',''),(17,'2019-09-17 18:40:56.515888','Oxxo_003','15.55556','38','','','',''),(18,'2019-09-17 18:41:07.440373','Oxxo_003','20','36','','','',''),(19,'2019-09-17 18:41:27.682703','Oxxo_003','17.77778','37','','','',''),(20,'2019-09-17 18:41:47.478773','Oxxo_003','20','36','','','','');
/*!40000 ALTER TABLE `api_devicedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'administracion',7,'pueden_ver_administracion'),(30,'dispositivos',7,'pueden_ver_dispositivos'),(31,'reportes',7,'pueden_ver_reportes'),(32,'Can add device',8,'add_device'),(33,'Can change device',8,'change_device'),(34,'Can delete device',8,'delete_device'),(35,'Can view device',8,'view_device'),(36,'Can add menu',9,'add_menu'),(37,'Can change menu',9,'change_menu'),(38,'Can delete menu',9,'delete_menu'),(39,'Can view menu',9,'view_menu'),(40,'Can add usuario',10,'add_usuario'),(41,'Can change usuario',10,'change_usuario'),(42,'Can delete usuario',10,'delete_usuario'),(43,'Can view usuario',10,'view_usuario'),(44,'Can add usuario permisos',11,'add_usuariopermisos'),(45,'Can change usuario permisos',11,'change_usuariopermisos'),(46,'Can delete usuario permisos',11,'delete_usuariopermisos'),(47,'Can view usuario permisos',11,'view_usuariopermisos'),(48,'Can add device data',12,'add_devicedata'),(49,'Can change device data',12,'change_devicedata'),(50,'Can delete device data',12,'delete_devicedata'),(51,'Can view device data',12,'view_devicedata');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$R4aRGnhnewSo$aouP0PjdM2beegdiOzc5sQl+28F99Tz8LBqQxficas4=','2019-09-17 18:10:59.054964',1,'admin','','','admin@admin.com',1,1,'2019-09-17 18:10:47.952965'),(2,'pbkdf2_sha256$150000$rPN6qql36Eq5$x6nXPNj4ZNfTSy4CTRFPfzOxnL3/p+oHPb4OIV4RIYY=','2019-09-17 18:14:02.869156',0,'yan','','','',0,1,'2019-09-17 18:11:21.566430');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `azureCosmos_device`
--

LOCK TABLES `azureCosmos_device` WRITE;
/*!40000 ALTER TABLE `azureCosmos_device` DISABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-17 18:11:21.687673','2','yan',1,'[{\"added\": {}}]',4,1),(2,'2019-09-17 18:13:22.623330','1','Reportes',1,'[{\"added\": {}}]',9,1),(3,'2019-09-17 18:13:29.980272','1','yan',1,'[{\"added\": {}}]',7,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'api','devicedata'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'azureCosmos','device'),(5,'contenttypes','contenttype'),(7,'loginapp','profile'),(9,'menus2','menu'),(10,'menus2','usuario'),(11,'menus2','usuariopermisos'),(6,'sessions','session');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-17 18:10:16.211265'),(2,'auth','0001_initial','2019-09-17 18:10:16.617412'),(3,'admin','0001_initial','2019-09-17 18:10:18.194252'),(4,'admin','0002_logentry_remove_auto_add','2019-09-17 18:10:18.547711'),(5,'admin','0003_logentry_add_action_flag_choices','2019-09-17 18:10:18.557543'),(6,'api','0001_initial','2019-09-17 18:10:18.624176'),(7,'api','0002_devicedata_deviceid','2019-09-17 18:10:18.749698'),(8,'api','0003_devicedata_porcentage','2019-09-17 18:10:18.875360'),(9,'api','0004_auto_20190912_2055','2019-09-17 18:10:19.241674'),(10,'api','0005_auto_20190912_2331','2019-09-17 18:10:19.483034'),(11,'contenttypes','0002_remove_content_type_name','2019-09-17 18:10:19.728957'),(12,'auth','0002_alter_permission_name_max_length','2019-09-17 18:10:19.755396'),(13,'auth','0003_alter_user_email_max_length','2019-09-17 18:10:19.782144'),(14,'auth','0004_alter_user_username_opts','2019-09-17 18:10:19.798319'),(15,'auth','0005_alter_user_last_login_null','2019-09-17 18:10:19.918613'),(16,'auth','0006_require_contenttypes_0002','2019-09-17 18:10:19.927161'),(17,'auth','0007_alter_validators_add_error_messages','2019-09-17 18:10:19.943432'),(18,'auth','0008_alter_user_username_max_length','2019-09-17 18:10:19.965579'),(19,'auth','0009_alter_user_last_name_max_length','2019-09-17 18:10:19.992516'),(20,'auth','0010_alter_group_name_max_length','2019-09-17 18:10:20.019393'),(21,'auth','0011_update_proxy_permissions','2019-09-17 18:10:20.036323'),(22,'azureCosmos','0001_initial','2019-09-17 18:10:20.104198'),(23,'menus2','0001_initial','2019-09-17 18:10:20.177076'),(24,'menus2','0002_auto_20190905_1541','2019-09-17 18:10:20.183527'),(25,'menus2','0003_auto_20190909_1246','2019-09-17 18:10:20.319333'),(26,'menus2','0004_auto_20190909_1350','2019-09-17 18:10:20.329690'),(27,'menus2','0002_auto_20190904_1637','2019-09-17 18:10:20.334873'),(28,'menus2','0003_merge_20190906_1926','2019-09-17 18:10:20.341463'),(29,'menus2','0005_merge_20190910_2001','2019-09-17 18:10:20.350354'),(30,'menus2','0006_auto_20190912_1300','2019-09-17 18:10:20.432778'),(31,'menus2','0007_auto_20190912_1304','2019-09-17 18:10:20.888434'),(32,'loginapp','0001_initial','2019-09-17 18:10:20.963946'),(33,'loginapp','0002_profile_menusparausuario','2019-09-17 18:10:21.217896'),(34,'loginapp','0003_auto_20190912_1522','2019-09-17 18:10:21.675681'),(35,'menus2','0006_auto_20190912_1843','2019-09-17 18:10:21.690790'),(36,'menus2','0008_merge_20190912_2017','2019-09-17 18:10:21.693117'),(37,'menus2','0009_auto_20190912_2018','2019-09-17 18:10:21.714835'),(38,'menus2','0010_auto_20190912_2024','2019-09-17 18:10:21.731369'),(39,'menus2','0011_auto_20190912_2027','2019-09-17 18:10:21.746072'),(40,'menus2','0012_auto_20190912_2031','2019-09-17 18:10:21.760695'),(41,'menus2','0013_auto_20190912_2053','2019-09-17 18:10:21.775385'),(42,'menus2','0014_auto_20190912_2053','2019-09-17 18:10:21.790219'),(43,'menus2','0015_auto_20190912_2054','2019-09-17 18:10:21.806590'),(44,'menus2','0016_auto_20190912_2055','2019-09-17 18:10:21.821145'),(45,'menus2','0017_auto_20190912_2148','2019-09-17 18:10:21.836103'),(46,'menus2','0008_merge_20190912_1517','2019-09-17 18:10:21.838410'),(47,'menus2','0009_auto_20190912_1522','2019-09-17 18:10:21.859575'),(48,'menus2','0018_merge_20190912_2154','2019-09-17 18:10:21.861922'),(49,'menus2','0019_auto_20190912_2331','2019-09-17 18:10:21.883309'),(50,'menus2','0020_auto_20190912_2332','2019-09-17 18:10:21.921665'),(51,'menus2','0021_auto_20190912_2337','2019-09-17 18:10:21.936845'),(52,'menus2','0022_auto_20190917_1208','2019-09-17 18:10:21.951640'),(53,'menus2','0023_auto_20190917_1810','2019-09-17 18:10:21.966248'),(54,'sessions','0001_initial','2019-09-17 18:10:22.034312');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3v7mf96bz1hdy17qby2iwu89oxdcgt3b','MDUxNzQ1ZGJlZjJjYTdiMmI4YjQyMjJmOTY3NGQ5MGFjZGU2ZDEyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MWJjNzE2YThjZGFlYmRiNWZkNjE0ZDViZmVjN2NlYjc1ZDA5ZDlhIn0=','2019-10-01 18:14:02.871613');
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
  `phoneNumber` varchar(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `loginapp_profile_user_id_239364ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginapp_profile`
--

LOCK TABLES `loginapp_profile` WRITE;
/*!40000 ALTER TABLE `loginapp_profile` DISABLE KEYS */;
INSERT INTO `loginapp_profile` VALUES (1,'','2019-09-17 18:13:29.976767',2);
/*!40000 ALTER TABLE `loginapp_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginapp_profile_MenusParaUsuario`
--

DROP TABLE IF EXISTS `loginapp_profile_MenusParaUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginapp_profile_MenusParaUsuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginapp_profile_MenusPa_profile_id_menu_id_0e9e6ba3_uniq` (`profile_id`,`menu_id`),
  KEY `loginapp_profile_Men_menu_id_c5c6cbeb_fk_menus2_me` (`menu_id`),
  CONSTRAINT `loginapp_profile_Men_menu_id_c5c6cbeb_fk_menus2_me` FOREIGN KEY (`menu_id`) REFERENCES `menus2_menu` (`id`),
  CONSTRAINT `loginapp_profile_Men_profile_id_c8f2bf3f_fk_loginapp_` FOREIGN KEY (`profile_id`) REFERENCES `loginapp_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginapp_profile_MenusParaUsuario`
--

LOCK TABLES `loginapp_profile_MenusParaUsuario` WRITE;
/*!40000 ALTER TABLE `loginapp_profile_MenusParaUsuario` DISABLE KEYS */;
INSERT INTO `loginapp_profile_MenusParaUsuario` VALUES (1,1,1);
/*!40000 ALTER TABLE `loginapp_profile_MenusParaUsuario` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus2_menu`
--

LOCK TABLES `menus2_menu` WRITE;
/*!40000 ALTER TABLE `menus2_menu` DISABLE KEYS */;
INSERT INTO `menus2_menu` VALUES (1,'Reportes','No','Busqueda','Si','Reportes url2',2,'2019-09-17 18:10:50.000000','jlvaldespino','menu-icon fa fa-calendar',2);
/*!40000 ALTER TABLE `menus2_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus2_usuario`
--

DROP TABLE IF EXISTS `menus2_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus2_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `id_men` int(11) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `usuario_modifico` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus2_usuario`
--

LOCK TABLES `menus2_usuario` WRITE;
/*!40000 ALTER TABLE `menus2_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus2_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus2_usuario_MenusParaUsuario`
--

DROP TABLE IF EXISTS `menus2_usuario_MenusParaUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus2_usuario_MenusParaUsuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus2_usuario_MenusParaUsuario_usuario_id_menu_id_a03b690b_uniq` (`usuario_id`,`menu_id`),
  KEY `menus2_usuario_Menus_menu_id_9d7b1565_fk_menus2_me` (`menu_id`),
  CONSTRAINT `menus2_usuario_Menus_menu_id_9d7b1565_fk_menus2_me` FOREIGN KEY (`menu_id`) REFERENCES `menus2_menu` (`id`),
  CONSTRAINT `menus2_usuario_Menus_usuario_id_a3f7fc88_fk_menus2_us` FOREIGN KEY (`usuario_id`) REFERENCES `menus2_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus2_usuario_MenusParaUsuario`
--

LOCK TABLES `menus2_usuario_MenusParaUsuario` WRITE;
/*!40000 ALTER TABLE `menus2_usuario_MenusParaUsuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus2_usuario_MenusParaUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus2_usuariopermisos`
--

DROP TABLE IF EXISTS `menus2_usuariopermisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus2_usuariopermisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuperUsuario` varchar(100) NOT NULL,
  `usuperPermiso` varchar(50) NOT NULL,
  `usuperCreaUsuario` varchar(50) NOT NULL,
  `usuperFechaCreacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus2_usuariopermisos`
--

LOCK TABLES `menus2_usuariopermisos` WRITE;
/*!40000 ALTER TABLE `menus2_usuariopermisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus2_usuariopermisos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 22:46:15
