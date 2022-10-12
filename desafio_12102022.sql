-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: desafio
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-1:10.6.7+maria~focal-log

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activations`
--

LOCK TABLES `admin_activations` WRITE;
/*!40000 ALTER TABLE `admin_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Administrator','Administrator','administrator@brackets.sk','$2y$10$l7KsrkH3gG3nhDLcS45tg.SMgbXf9sDnsES8uKhQrD4YLGJl8eJEO','Io1JDJxyn9I8beEf1XQ5fueP4MRPPK5F3Br4P2iEp6xHMX0BgBhHkTFdvHZ1',1,0,'en',NULL,'2022-10-12 15:52:02','2022-10-12 16:02:13','2022-10-12 16:02:13'),(2,'Andrés','Ortega','andres.mza25@gmail.com','$2y$10$8F4ZtA4cdRhMFSX2HJ5y/.CJPG4Kqer4QVoS3pXcphFFrCZUEVceO','oVobZmdwYKWIUw7zZ9ozvxGB5qf5ld3055l5xEoarH2bbscSGAC6VleLHIKx',1,0,'en',NULL,'2022-10-12 16:02:59','2022-10-12 16:03:06','2022-10-12 16:03:06');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table',1),(11,'2022_10_12_155200_create_media_table',1),(12,'2022_10_12_155200_create_permission_tables',1),(13,'2022_10_12_155205_fill_default_admin_user_and_permissions',1),(14,'2022_10_12_155200_create_translations_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1),(1,'Brackets\\AdminAuth\\Models\\AdminUser',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(2,'admin.translation.index','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(3,'admin.translation.edit','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(4,'admin.translation.rescan','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(5,'admin.admin-user.index','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(6,'admin.admin-user.create','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(7,'admin.admin-user.edit','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(8,'admin.admin-user.delete','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(9,'admin.upload','admin','2022-10-12 15:52:02','2022-10-12 15:52:02'),(10,'admin.admin-user.impersonal-login','admin','2022-10-12 15:52:02','2022-10-12 15:52:02');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','admin','2022-10-12 15:52:02','2022-10-12 15:52:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`text`)),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(4,'*','admin','admin-user.columns.first_name','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(5,'*','admin','admin-user.columns.last_name','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(6,'*','admin','admin-user.columns.email','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(7,'*','admin','admin-user.columns.password','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(8,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2022-10-12 16:00:01','2022-10-12 16:00:01',NULL),(9,'*','admin','admin-user.columns.activated','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(10,'*','admin','admin-user.columns.forbidden','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(11,'*','admin','admin-user.columns.language','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(12,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2022-10-12 16:00:02','2022-10-12 16:00:02',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(22,'*','admin','admin-user.columns.last_login_at','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(23,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(24,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(25,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(26,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(27,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(28,'brackets/admin-ui','admin','btn.new','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(29,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(30,'brackets/admin-auth','admin','profile_dropdown.profile','[]',NULL,'2022-10-12 16:00:03','2022-10-12 16:00:03',NULL),(31,'brackets/admin-auth','admin','profile_dropdown.password','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(32,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(33,'brackets/admin-ui','admin','sidebar.content','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(34,'brackets/admin-ui','admin','sidebar.settings','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(35,'*','admin','admin-user.actions.edit_password','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(36,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(37,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(38,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(39,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(40,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(41,'brackets/admin-auth','admin','login.title','[]',NULL,'2022-10-12 16:00:04','2022-10-12 16:00:04',NULL),(42,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(43,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(44,'brackets/admin-auth','admin','login.button','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(45,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(46,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(47,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(48,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(49,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(50,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(51,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(52,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2022-10-12 16:00:05','2022-10-12 16:00:05',NULL),(53,'brackets/admin-auth','activations','email.line','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(54,'brackets/admin-auth','activations','email.action','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(55,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(56,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(57,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(58,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(59,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(60,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(61,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(62,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(63,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2022-10-12 16:00:06','2022-10-12 16:00:06',NULL),(64,'brackets/admin-auth','admin','passwords.invalid_password','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(65,'brackets/admin-auth','resets','email.line','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(66,'brackets/admin-auth','resets','email.action','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(67,'brackets/admin-auth','resets','email.notRequested','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(68,'*','auth','failed','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(69,'*','auth','throttle','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(70,'*','*','Manage access','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(71,'*','*','Translations','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL),(72,'*','*','Configuration','[]',NULL,'2022-10-12 16:00:07','2022-10-12 16:00:07',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysiwyg_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int(10) unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wysiwyg_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-12 16:06:56
