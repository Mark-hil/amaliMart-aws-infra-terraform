-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: testtrydb.cybm00umcwns.us-east-1.rds.amazonaws.com    Database: amalimart
-- ------------------------------------------------------
-- Server version	8.0.41

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'Accra','00233','Greater Accra','Ghana',1,'2024-01-15 10:30:00','2024-01-15 10:30:00'),(2,2,'Kumasi','00233','Ashanti','Ghana',1,'2024-01-16 14:20:00','2024-01-16 14:20:00'),(3,3,'Tamale','00233','Northern','Ghana',1,'2024-01-17 09:15:00','2024-01-17 09:15:00'),(4,5,'Accra','00233','Greater Accra','Ghana',1,'2024-01-12 11:45:00','2024-01-12 11:45:00'),(5,6,'Kumasi','00233','Ashanti','Ghana',1,'2024-01-13 16:30:00','2024-01-13 16:30:00'),(11,7,'Koforidua','00233','Eastern','Ghana',1,'2024-01-23 10:15:00','2024-01-23 10:15:00'),(12,8,'Techiman','00233','Bono East','Ghana',1,'2024-01-24 11:20:00','2024-01-24 11:20:00'),(13,9,'Bolgatanga','00233','Upper East','Ghana',1,'2024-01-25 09:00:00','2024-01-25 09:00:00'),(14,4,'Accra','00233','Greater Accra','Ghana',0,'2024-01-27 13:10:00','2024-01-27 13:10:00'),(15,10,'Takoradi','00233','Western','Ghana',1,'2024-02-04 12:00:00','2024-02-04 12:00:00'),(16,11,'Sunyani','00233','Bono','Ghana',1,'2024-02-05 13:00:00','2024-02-05 13:00:00'),(17,12,'Cape Coast','00233','Central','Ghana',1,'2024-02-06 14:00:00','2024-02-06 14:00:00'),(18,13,'Ho','00233','Volta','Ghana',1,'2024-02-07 15:00:00','2024-02-07 15:00:00'),(19,14,'Koforidua','00233','Eastern','Ghana',1,'2024-02-08 16:00:00','2024-02-08 16:00:00'),(20,15,'Bolgatanga','00233','Upper East','Ghana',1,'2024-02-09 17:00:00','2024-02-09 17:00:00'),(21,16,'Wa','00233','Upper West','Ghana',1,'2024-02-10 18:00:00','2024-02-10 18:00:00'),(22,17,'Accra','00233','Greater Accra','Ghana',1,'2024-02-11 08:00:00','2024-02-11 08:00:00'),(23,18,'Kumasi','00233','Ashanti','Ghana',1,'2024-02-12 09:00:00','2024-02-12 09:00:00'),(24,19,'Tamale','00233','Northern','Ghana',1,'2024-02-13 10:00:00','2024-02-13 10:00:00'),(25,20,'Takoradi','00233','Western','Ghana',1,'2024-02-14 11:00:00','2024-02-14 11:00:00'),(26,21,'Sunyani','00233','Bono','Ghana',1,'2024-02-15 12:00:00','2024-02-15 12:00:00'),(27,22,'Cape Coast','00233','Central','Ghana',1,'2024-02-16 13:00:00','2024-02-16 13:00:00'),(28,23,'Ho','00233','Volta','Ghana',1,'2024-02-17 14:00:00','2024-02-17 14:00:00'),(29,24,'Koforidua','00233','Eastern','Ghana',1,'2024-02-18 15:00:00','2024-02-18 15:00:00'),(30,25,'Bolgatanga','00233','Upper East','Ghana',1,'2024-02-19 16:00:00','2024-02-19 16:00:00'),(31,26,'Wa','00233','Upper West','Ghana',1,'2024-02-20 17:00:00','2024-02-20 17:00:00'),(32,27,'Accra','00233','Greater Accra','Ghana',1,'2024-02-21 09:00:00','2024-02-21 09:00:00'),(33,28,'Kumasi','00233','Ashanti','Ghana',1,'2024-02-22 10:00:00','2024-02-22 10:00:00'),(34,29,'Tamale','00233','Northern','Ghana',1,'2024-02-23 11:00:00','2024-02-23 11:00:00'),(35,30,'Takoradi','00233','Western','Ghana',1,'2024-02-24 12:00:00','2024-02-24 12:00:00'),(36,31,'Sunyani','00233','Bono','Ghana',1,'2024-02-25 13:00:00','2024-02-25 13:00:00'),(37,32,'Cape Coast','00233','Central','Ghana',1,'2024-02-26 14:00:00','2024-02-26 14:00:00'),(38,33,'Ho','00233','Volta','Ghana',1,'2024-02-27 15:00:00','2024-02-27 15:00:00'),(39,34,'Koforidua','00233','Eastern','Ghana',1,'2024-02-28 16:00:00','2024-02-28 16:00:00'),(40,35,'Bolgatanga','00233','Upper East','Ghana',1,'2024-03-01 17:00:00','2024-03-01 17:00:00'),(41,36,'Wa','00233','Upper West','Ghana',1,'2024-03-02 18:00:00','2024-03-02 18:00:00'),(42,37,'Accra','00233','Greater Accra','Ghana',1,'2024-03-03 09:00:00','2024-03-03 09:00:00'),(43,38,'Kumasi','00233','Ashanti','Ghana',1,'2024-03-04 10:00:00','2024-03-04 10:00:00'),(44,39,'Tamale','00233','Northern','Ghana',1,'2024-03-05 11:00:00','2024-03-05 11:00:00'),(45,40,'Takoradi','00233','Western','Ghana',1,'2024-03-06 12:00:00','2024-03-06 12:00:00'),(46,41,'Sunyani','00233','Bono','Ghana',1,'2024-03-07 13:00:00','2024-03-07 13:00:00'),(47,42,'Cape Coast','00233','Central','Ghana',1,'2024-03-08 14:00:00','2024-03-08 14:00:00'),(48,43,'Ho','00233','Volta','Ghana',1,'2024-03-09 15:00:00','2024-03-09 15:00:00'),(49,44,'Koforidua','00233','Eastern','Ghana',1,'2024-03-10 16:00:00','2024-03-10 16:00:00'),(50,45,'Bolgatanga','00233','Upper East','Ghana',1,'2024-03-11 17:00:00','2024-03-11 17:00:00'),(51,46,'Wa','00233','Upper West','Ghana',1,'2024-03-12 18:00:00','2024-03-12 18:00:00'),(52,47,'Accra','00233','Greater Accra','Ghana',1,'2024-03-13 09:00:00','2024-03-13 09:00:00'),(53,48,'Kumasi','00233','Ashanti','Ghana',1,'2024-03-14 10:00:00','2024-03-14 10:00:00'),(54,49,'Tamale','00233','Northern','Ghana',1,'2024-03-15 11:00:00','2024-03-15 11:00:00'),(55,50,'Takoradi','00233','Western','Ghana',1,'2024-03-16 12:00:00','2024-03-16 12:00:00'),(56,51,'Sunyani','00233','Bono','Ghana',1,'2024-03-17 13:00:00','2024-03-17 13:00:00'),(57,52,'Cape Coast','00233','Central','Ghana',1,'2024-03-18 14:00:00','2024-03-18 14:00:00'),(58,53,'Ho','00233','Volta','Ghana',1,'2024-03-19 15:00:00','2024-03-19 15:00:00'),(59,54,'Koforidua','00233','Eastern','Ghana',1,'2024-03-20 16:00:00','2024-03-20 16:00:00'),(60,55,'Bolgatanga','00233','Upper East','Ghana',1,'2024-03-21 17:00:00','2024-03-21 17:00:00'),(61,56,'Wa','00233','Upper West','Ghana',1,'2024-03-22 18:00:00','2024-03-22 18:00:00');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_representatives`
--

DROP TABLE IF EXISTS `business_representatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_representatives` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `business_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  CONSTRAINT `business_representatives_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_representatives`
--

LOCK TABLES `business_representatives` WRITE;
/*!40000 ALTER TABLE `business_representatives` DISABLE KEYS */;
INSERT INTO `business_representatives` VALUES (1,1,'Yaw Boateng','yaw@techhub.com','+233244567890','MALE',1,'2024-01-12 11:45:00','2024-01-12 11:45:00'),(2,2,'Ama Serwaa','ama@heritage.com','+233244678901','FEMALE',1,'2024-01-13 16:30:00','2024-01-13 16:30:00');
/*!40000 ALTER TABLE `business_representatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `businesses_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` VALUES (1,5,'TechHub Ghana','techhub@ghanashop.com','+233244567890','CERT-TECH-001','Leading technology retailer in Ghana specializing in smartphones, laptops, and electronics.','123 High Street, Accra, Ghana','retail',1,'2024-01-12 11:45:00','2024-01-12 11:45:00'),(2,6,'Ghanaian Heritage Store','heritage@ghanashop.com','+233244678901','CERT-HERITAGE-001','Authentic Ghanaian products including traditional clothing, food items, and natural beauty products.','456 Cultural Road, Kumasi, Ghana','retail',1,'2024-01-13 16:30:00','2024-01-13 16:30:00');
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_variant_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `product_id` (`product_id`),
  KEY `product_variant_id` (`product_variant_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (61,376,NULL,'2025-07-25 11:11:26','2025-07-25 11:11:27');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` bigint DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_category_id` (`parent_category_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics',NULL,'https://images.unsplash.com/photo-1498049794561-7780e7231661?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1498049794561-7780e7231661?w=800&h=400&fit=crop','electronics'),(2,'Fashion',NULL,'https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=800&h=400&fit=crop','fashion'),(3,'Home & Garden',NULL,'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&h=400&fit=crop','home-garden'),(4,'Sports & Outdoors',NULL,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=400&fit=crop','sports-outdoors'),(5,'Books & Media',NULL,'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=800&h=400&fit=crop','books-media'),(6,'Health & Beauty',NULL,'https://images.unsplash.com/photo-1556228720-195a672e8a03?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1556228720-195a672e8a03?w=800&h=400&fit=crop','health-beauty'),(7,'Automotive',NULL,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=400&fit=crop','automotive'),(8,'Food & Beverages',NULL,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800&h=400&fit=crop','food-beverages'),(9,'Smartphones',1,'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=400&fit=crop','smartphones'),(10,'Laptops',1,'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=800&h=400&fit=crop','laptops'),(11,'Men\'s Clothing',2,'https://images.unsplash.com/photo-1516826957135-700dedea698c?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1516826957135-700dedea698c?w=800&h=400&fit=crop','mens-clothing'),(12,'Women\'s Clothing',2,'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1490481651871-ab68de25d43d?w=800&h=400&fit=crop','womens-clothing'),(13,'Kitchen Appliances',3,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=400&fit=crop','kitchen-appliances'),(14,'Furniture',3,'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&h=400&fit=crop','furniture'),(15,'Fitness Equipment',4,'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1534438327276-14e5300c3a48?w=800&h=400&fit=crop','fitness-equipment'),(16,'Outdoor Gear',4,'https://images.unsplash.com/photo-1551698618-1dfe5d97d256?w=150&h=150&fit=crop','https://images.unsplash.com/photo-1551698618-1dfe5d97d256?w=800&h=400&fit=crop','outdoor-gear');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_products`
--

DROP TABLE IF EXISTS `discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_products` (
  `discount_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`),
  KEY `FK9xp4efs1yvjxo3cq42o4he5da` (`product_id`),
  CONSTRAINT `FK9xp4efs1yvjxo3cq42o4he5da` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKcmrtx6xnqwk42qb7m8flfun0q` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_products`
--

LOCK TABLES `discount_products` WRITE;
/*!40000 ALTER TABLE `discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `usage_limit` int NOT NULL,
  `type` enum('PERCENTAGE','FLAT_RATE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `created_by` (`created_by`),
  KEY `FKsbar9t4tx02catq18meh5enyi` (`created_by_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FKsbar9t4tx02catq18meh5enyi` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'WELCOME10','Welcome Discount','10% off for new customers',10.00,100,'PERCENTAGE',4,'2024-01-01','2024-12-31',1,'2024-01-01','2024-01-01',NULL),(2,'SAVE50','Flat Rate Discount','GH₵50 off on orders above GH₵500',50.00,50,'FLAT_RATE',4,'2024-01-15','2024-02-15',1,'2024-01-15','2024-01-15',NULL),(3,'SUMMER15','Summer Sale','15% off all items during summer',15.00,200,'PERCENTAGE',4,'2024-06-01','2024-08-31',1,'2025-07-24','2025-07-24',NULL),(4,'FLASH20','Flash Deal','20% off for 2 hours only',20.00,30,'PERCENTAGE',4,'2024-07-24','2024-07-24',1,'2025-07-24','2025-07-24',NULL),(5,'FIRSTBUY5','First Buy Bonus','GH₵5 off your first order',5.00,500,'FLAT_RATE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(6,'EID30','Eid Special','30% off during Eid holidays',30.00,100,'PERCENTAGE',4,'2024-04-10','2024-04-20',1,'2025-07-24','2025-07-24',NULL),(7,'XMAS25','Christmas Discount','25% off all Christmas items',25.00,300,'PERCENTAGE',4,'2024-12-01','2024-12-26',1,'2025-07-24','2025-07-24',NULL),(8,'BLACK100','Black Friday Deal','GH₵100 off purchases above GH₵1000',100.00,100,'FLAT_RATE',4,'2024-11-29','2024-11-29',1,'2025-07-24','2025-07-24',NULL),(9,'NY10','New Year Offer','10% off for New Year shopping',10.00,150,'PERCENTAGE',4,'2025-01-01','2025-01-10',1,'2025-07-24','2025-07-24',NULL),(10,'STUDENT5','Student Discount','GH₵5 off for students with ID',5.00,500,'FLAT_RATE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(11,'BULK20','Bulk Purchase','20% off on bulk orders above GH₵1000',20.00,70,'PERCENTAGE',4,'2024-03-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(12,'LOYALTY15','Loyalty Program','15% off for returning customers',15.00,250,'PERCENTAGE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(13,'AFRICANDAY','African Union Day','10% off African print items',10.00,100,'PERCENTAGE',4,'2024-05-25','2024-05-26',1,'2025-07-24','2025-07-24',NULL),(14,'WOMENSDAY','International Women\'s Day','GH₵20 off for all women',20.00,150,'FLAT_RATE',4,'2024-03-08','2024-03-08',1,'2025-07-24','2025-07-24',NULL),(15,'FREESHIP','Free Shipping Discount','GH₵30 off to cover delivery',30.00,200,'FLAT_RATE',4,'2024-04-01','2024-09-30',1,'2025-07-24','2025-07-24',NULL),(16,'REFER25','Referral Bonus','25% off when referred by a friend',25.00,300,'PERCENTAGE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(17,'BACK2SCHOOL','Back to School','10% off for school supplies',10.00,120,'PERCENTAGE',4,'2024-08-15','2024-09-15',1,'2025-07-24','2025-07-24',NULL),(18,'WEEKEND10','Weekend Offer','10% off every weekend',10.00,400,'PERCENTAGE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(19,'TECHWEEK','Tech Week Discount','GH₵75 off on electronics',75.00,50,'FLAT_RATE',4,'2024-10-01','2024-10-07',1,'2025-07-24','2025-07-24',NULL),(20,'BIRTHDAY','Birthday Special','15% off on your birthday',15.00,1000,'PERCENTAGE',4,'2024-01-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(21,'FLASH30','Flash Sale 30%','30% discount on selected items',30.00,60,'PERCENTAGE',4,'2024-07-30','2024-07-30',1,'2025-07-24','2025-07-24',NULL),(22,'BUY1GET1','Buy 1 Get 1','GH₵50 off second item',50.00,80,'FLAT_RATE',4,'2024-05-01','2024-05-07',1,'2025-07-24','2025-07-24',NULL),(23,'WOMENLOVE','Ladies Promo','GH₵25 off female category',25.00,100,'FLAT_RATE',4,'2024-03-01','2024-03-31',1,'2025-07-24','2025-07-24',NULL),(24,'MENSDEAL','Men\'s Month Deal','20% off male fashion',20.00,90,'PERCENTAGE',4,'2024-06-01','2024-06-30',1,'2025-07-24','2025-07-24',NULL),(25,'TEACHERSDAY','Teachers Day Offer','15% off for all teachers',15.00,70,'PERCENTAGE',4,'2024-10-05','2024-10-05',1,'2025-07-24','2025-07-24',NULL),(26,'RANDOM40','Mystery Discount','Random 40% off for lucky users',40.00,20,'PERCENTAGE',4,'2024-09-01','2024-09-15',1,'2025-07-24','2025-07-24',NULL),(27,'HAPPYHOUR','Happy Hour Discount','GH₵10 off between 12–2PM',10.00,300,'FLAT_RATE',4,'2024-07-01','2024-08-01',1,'2025-07-24','2025-07-24',NULL),(28,'VOTER10','Voter Reward','10% off for registered voters',10.00,200,'PERCENTAGE',4,'2024-08-01','2024-12-31',1,'2025-07-24','2025-07-24',NULL),(29,'RAINYDAY','Rainy Day Promo','GH₵15 off on rainy days',15.00,150,'FLAT_RATE',4,'2024-05-01','2024-08-31',1,'2025-07-24','2025-07-24',NULL),(30,'FRIEND15','Friend Deal','15% off when shopping with a friend',15.00,250,'PERCENTAGE',4,'2024-03-01','2024-09-01',1,'2025-07-24','2025-07-24',NULL),(31,'MOTHERSDAY','Mother’s Day Offer','25% off gifts for moms',25.00,150,'PERCENTAGE',4,'2024-05-10','2024-05-14',1,'2025-07-24','2025-07-24',NULL),(32,'FATHERSDAY','Father’s Day Deal','GH₵20 off gifts for dads',20.00,150,'FLAT_RATE',4,'2024-06-14','2024-06-18',1,'2025-07-24','2025-07-24',NULL),(33,'EASTER25','Easter Promo','25% off during Easter',25.00,120,'PERCENTAGE',4,'2024-03-29','2024-04-02',1,'2025-07-24','2025-07-24',NULL),(34,'INDEP50','Independence Day Offer','GH₵50 off orders above GH₵300',50.00,80,'FLAT_RATE',4,'2024-03-06','2024-03-06',1,'2025-07-24','2025-07-24',NULL),(35,'NURSE10','Nurse Appreciation','10% off for all nurses',10.00,100,'PERCENTAGE',4,'2024-05-12','2024-05-15',1,'2025-07-24','2025-07-24',NULL),(36,'YOUTH15','Youth Month Discount','15% off for young customers',15.00,90,'PERCENTAGE',4,'2024-08-01','2024-08-31',1,'2025-07-24','2025-07-24',NULL),(37,'NIGHTOWL','Night Shopper','GH₵10 off after 10PM',10.00,200,'FLAT_RATE',4,'2024-07-01','2024-09-01',1,'2025-07-24','2025-07-24',NULL),(38,'FLASH5','Quick Deal','5% off during flash sales',5.00,150,'PERCENTAGE',4,'2024-07-24','2024-07-24',1,'2025-07-24','2025-07-24',NULL),(39,'GREEN15','Go Green Discount','15% off eco-friendly products',15.00,120,'PERCENTAGE',4,'2024-04-01','2024-10-01',1,'2025-07-24','2025-07-24',NULL),(40,'VALENTINE','Valentine\'s Day','GH₵30 off for couples',30.00,150,'FLAT_RATE',4,'2024-02-10','2024-02-15',1,'2025-07-24','2025-07-24',NULL),(41,'ANNIVERSARY','Anniversary Offer','20% off storewide',20.00,100,'PERCENTAGE',4,'2024-09-01','2024-09-05',1,'2025-07-24','2025-07-24',NULL),(42,'TRAVEL10','Travel Discount','10% off on travel gear',10.00,100,'PERCENTAGE',4,'2024-07-01','2024-08-31',1,'2025-07-24','2025-07-24',NULL),(43,'HEALTHDAY','World Health Day','GH₵20 off on health products',20.00,80,'FLAT_RATE',4,'2024-04-07','2024-04-07',1,'2025-07-24','2025-07-24',NULL),(44,'RAMADAN','Ramadan Promo','15% off during Ramadan',15.00,150,'PERCENTAGE',4,'2024-03-10','2024-04-10',1,'2025-07-24','2025-07-24',NULL),(45,'SURPRISE10','Surprise Deal','10% off for surprise day',10.00,90,'PERCENTAGE',4,'2024-07-27','2024-07-28',1,'2025-07-24','2025-07-24',NULL),(46,'MIDYEAR20','Mid-Year Promo','20% off mid-year shopping',20.00,80,'PERCENTAGE',4,'2024-06-15','2024-07-15',1,'2025-07-24','2025-07-24',NULL);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sender_id` bigint DEFAULT NULL,
  `receiver_id` bigint DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,4,'Hi, I have a question about my order',0,'2024-01-25 09:00:00'),(2,4,1,'Hello! How can I help you with your order?',1,'2024-01-25 09:30:00'),(3,2,5,'Do you have the iPhone 15 in stock?',0,'2024-01-26 11:00:00'),(4,5,2,'Yes, we have the iPhone 15 Pro Max in stock. Would you like to place an order?',1,'2024-01-26 11:15:00'),(5,3,6,'Do you have the Samsung Galaxy S24 in stock?',0,'2024-01-27 14:00:00'),(6,6,3,'Yes, we have the Samsung Galaxy S24 Ultra available. Would you like to order?',1,'2024-01-27 14:15:00'),(7,5,1,'Delivery to Accra takes 1-2 business days for express shipping.',1,'2024-01-28 10:30:00'),(8,2,6,'Do you offer international shipping?',0,'2024-01-29 16:00:00'),(9,3,4,'Can I get a discount for bulk purchase?',0,'2024-01-30 12:00:00'),(10,4,3,'Yes, we offer bulk discounts. Please contact our sales team for details.',1,'2024-01-30 12:30:00'),(11,1,6,'Do you have warranty for electronics?',0,'2024-01-31 15:00:00'),(12,6,1,'Yes, all electronics come with manufacturer warranty. Details are on the product page.',1,'2024-01-31 15:30:00'),(13,2,5,'What payment methods do you accept?',0,'2024-02-01 11:00:00'),(14,5,2,'We accept Mobile Money, Credit Cards, and Bank Transfers.',1,'2024-02-01 11:30:00');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `product_variant_id` bigint DEFAULT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `product_variant_id` (`product_variant_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,1,8999.99,8999.99,1,5),(2,1,3,2,45.99,91.98,6,6),(3,2,2,1,12999.99,12999.99,4,5),(4,3,4,3,299.99,899.97,9,6),(5,3,6,1,89.99,89.99,13,5),(6,4,5,1,299.99,299.99,11,6),(7,4,7,1,3999.99,3999.99,16,5),(8,5,8,2,129.99,259.98,18,6),(9,5,9,1,15999.99,15999.99,20,5),(10,6,10,1,79.99,79.99,22,6),(11,6,11,1,11999.99,11999.99,24,5),(12,7,12,1,899.99,899.99,NULL,6),(13,7,13,1,1299.99,1299.99,NULL,5),(14,8,14,1,2499.99,2499.99,NULL,6),(15,8,15,1,3999.99,3999.99,NULL,5),(16,9,16,1,18999.99,18999.99,NULL,6),(17,9,17,1,15999.99,15999.99,NULL,5),(18,10,18,1,8999.99,8999.99,NULL,6),(19,10,19,1,4999.99,4999.99,NULL,5),(20,1,1,1,8499.99,99.99,1,0),(21,1,3,2,45.80,911.98,6,0),(22,18,106,5,690.80,3454.00,32,6),(23,27,130,3,9681.67,29045.01,33,5),(24,39,119,4,4491.23,17964.92,24,6),(25,47,107,2,9529.84,19059.68,32,5),(26,1,143,5,7382.76,36913.80,38,6),(27,18,44,1,6153.05,6153.05,49,5),(28,8,21,5,8508.56,42542.80,42,5),(29,37,80,5,4285.00,21425.00,28,6),(30,36,86,5,7755.34,38776.70,16,5),(31,41,117,3,6016.03,18048.09,20,6),(32,37,44,2,1255.12,2510.24,15,6),(33,20,72,2,5718.19,11436.38,31,5),(34,1,24,3,1865.93,5597.79,6,5),(35,33,71,4,3565.05,14260.20,19,6),(36,48,102,3,343.95,1031.85,46,6),(37,34,153,2,7135.26,14270.52,37,6),(38,47,131,4,4812.34,19249.36,45,6),(39,49,38,1,2216.92,2216.92,5,5),(40,26,140,1,6298.57,6298.57,24,6),(41,16,80,2,8099.61,16199.22,19,5),(42,6,117,4,3401.63,13606.52,11,6),(43,26,46,5,5988.25,29941.25,41,5),(44,49,81,4,9603.69,38414.76,25,5),(45,3,51,2,1885.30,3770.60,21,5),(46,16,101,1,517.63,517.63,23,5),(47,10,150,4,8393.33,33573.32,23,6),(48,27,134,2,7906.53,15813.06,16,5),(49,14,108,2,4278.19,8556.38,31,5),(50,36,64,1,1849.76,1849.76,19,5),(51,13,126,2,3813.74,7627.48,25,5),(52,22,56,3,6539.08,19617.24,44,6),(53,25,4,1,5341.82,5341.82,4,6),(54,34,17,4,8722.65,34890.60,9,5),(55,11,114,3,4020.43,12061.29,34,5),(56,30,58,4,4052.93,16211.72,11,6),(57,13,117,5,884.98,4424.90,27,5),(58,16,71,3,9893.53,29680.59,38,6),(59,33,45,1,8764.30,8764.30,42,5),(60,14,124,3,3226.05,9678.15,31,5),(61,45,145,3,8038.43,24115.29,12,5),(62,19,158,1,9611.32,9611.32,31,5),(63,47,97,4,7635.58,30542.32,16,6),(64,13,59,5,4146.02,20730.10,47,5),(65,12,149,1,2201.99,2201.99,10,6),(66,9,57,4,3580.11,14320.44,19,6),(67,33,152,4,6187.41,24749.64,32,6),(68,31,103,5,1512.94,7564.70,34,5),(69,36,101,3,6346.04,19038.12,40,6),(70,22,86,1,6164.21,6164.21,14,5),(71,25,144,1,9803.70,9803.70,27,5),(72,5,90,2,1281.84,2563.68,43,5),(73,15,43,2,3040.60,6081.20,24,6),(74,19,76,5,317.86,1589.30,40,6),(75,43,61,3,1570.36,4711.08,2,6),(76,3,130,2,8245.64,16491.28,46,5),(77,16,150,3,2032.84,6098.52,49,5),(78,10,153,5,404.98,2024.90,43,6),(79,32,94,4,1355.09,5420.36,18,5),(80,16,82,5,3888.79,19443.95,12,5),(81,20,13,2,670.05,1340.10,22,5),(82,45,78,2,1395.81,2791.62,28,6),(83,19,107,1,9311.11,9311.11,46,5),(84,47,8,3,4862.68,14588.04,35,6),(85,47,52,5,5102.52,25512.60,46,6),(86,25,130,2,6754.24,13508.48,36,6),(87,31,109,4,7022.55,28090.20,17,5),(88,40,3,2,7396.56,14793.12,36,5),(89,32,56,3,3643.89,10931.67,16,5),(90,11,88,2,9677.99,19355.98,9,5),(91,39,137,5,1090.67,5453.35,12,5),(92,39,107,5,1371.93,6859.65,37,6),(93,12,74,4,2270.60,9082.40,41,5),(94,30,122,3,9066.70,27200.10,35,5),(95,5,67,4,2354.77,9419.08,18,6),(96,3,9,2,5675.94,11351.88,17,5),(97,8,62,4,3892.39,15569.56,24,6),(98,12,8,1,5905.94,5905.94,17,5),(99,24,43,4,3006.16,12024.64,5,5),(100,28,74,2,3128.40,6256.80,38,6),(101,4,22,3,9861.40,29584.20,6,5),(102,17,26,5,9387.21,46936.05,23,6),(103,3,152,1,1947.20,1947.20,19,5),(104,50,115,2,6743.97,13487.94,45,6),(105,41,129,4,8423.84,33695.36,29,6),(106,15,126,2,2640.04,5280.08,8,5),(107,13,9,3,3585.78,10757.34,15,6),(108,37,17,4,1378.59,5514.36,24,5),(109,4,42,5,2642.13,13210.65,35,5),(110,19,125,4,9956.19,39824.76,50,5),(111,30,48,1,8523.35,8523.35,5,6),(112,11,2,1,8770.15,8770.15,5,5),(113,8,133,2,5042.32,10084.64,20,5),(114,14,125,2,6558.64,13117.28,40,6),(115,3,68,4,2253.93,9015.72,16,5),(116,47,127,2,7151.24,14302.48,4,5),(117,33,97,4,4550.67,18202.68,46,6),(118,31,82,1,3663.17,3663.17,33,6),(119,18,1,4,694.21,2776.84,31,5),(120,2,51,4,3356.00,13424.00,39,6),(121,29,9,5,5290.77,26453.85,41,5),(137,54,160,3,199.99,599.97,NULL,6),(138,54,158,2,7999.99,15999.98,NULL,6),(139,54,22,1,5999.99,5999.99,2,5),(140,54,41,1,12999.99,12999.99,5,5),(141,54,153,1,2499999.99,2499999.99,NULL,5),(152,57,160,1,199.99,199.99,NULL,6),(153,57,159,1,2999.99,2999.99,NULL,6),(154,58,5,80,89.99,7199.20,NULL,6),(155,59,5,80,89.99,7199.20,NULL,1);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_history`
--

DROP TABLE IF EXISTS `order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `previous_status` enum('CANCELLED','CONFIRMED','DELIVERED','DISPATCHED','PENDING','REJECTED','RETURNED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_status` enum('CANCELLED','CONFIRMED','DELIVERED','DISPATCHED','PENDING','REJECTED','RETURNED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_status_history_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_history`
--

LOCK TABLES `order_status_history` WRITE;
/*!40000 ALTER TABLE `order_status_history` DISABLE KEYS */;
INSERT INTO `order_status_history` VALUES (1,1,NULL,'PENDING','2024-01-20 15:30:00'),(2,1,'PENDING','CONFIRMED','2024-01-20 16:00:00'),(3,1,'CONFIRMED','DISPATCHED','2024-01-21 09:00:00'),(4,1,'DISPATCHED','DELIVERED','2024-01-22 14:30:00'),(5,2,NULL,'PENDING','2024-01-22 12:45:00'),(6,2,'PENDING','CONFIRMED','2024-01-22 13:15:00'),(7,3,NULL,'PENDING','2024-01-23 16:20:00'),(8,4,NULL,'PENDING','2024-01-24 10:15:00'),(9,4,'PENDING','CONFIRMED','2024-01-24 11:00:00'),(10,4,'CONFIRMED','DISPATCHED','2024-01-25 08:00:00'),(11,5,NULL,'PENDING','2024-01-25 14:30:00'),(12,5,'PENDING','CONFIRMED','2024-01-25 15:00:00'),(13,6,NULL,'PENDING','2024-01-26 09:45:00'),(14,7,NULL,'PENDING','2024-01-27 16:20:00'),(15,7,'PENDING','CONFIRMED','2024-01-27 17:00:00'),(16,7,'CONFIRMED','DISPATCHED','2024-01-28 10:00:00'),(17,7,'DISPATCHED','DELIVERED','2024-01-29 14:00:00'),(18,8,NULL,'PENDING','2024-01-28 11:00:00'),(19,8,'PENDING','CONFIRMED','2024-01-28 11:30:00'),(20,9,NULL,'PENDING','2024-01-29 13:15:00'),(21,10,NULL,'PENDING','2024-01-30 08:30:00'),(22,10,'PENDING','CONFIRMED','2024-01-30 09:00:00'),(23,10,'CONFIRMED','DISPATCHED','2024-01-31 09:00:00'),(27,54,NULL,'PENDING','2025-07-25 00:31:18'),(30,57,NULL,'PENDING','2025-07-25 00:32:01'),(31,58,NULL,'PENDING','2025-07-25 11:52:00'),(32,58,'PENDING','CONFIRMED','2025-07-25 11:52:01'),(33,59,NULL,'PENDING','2025-07-25 13:23:51'),(34,59,'PENDING','CONFIRMED','2025-07-25 13:23:52');
/*!40000 ALTER TABLE `order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `order_date` timestamp NOT NULL,
  `total_amount` double NOT NULL,
  `status` enum('CANCELLED','CONFIRMED','DELIVERED','DISPATCHED','PENDING','REJECTED','RETURNED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dispatch_date` timestamp NULL DEFAULT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdhk2umg8ijjkg4njg6891trit` (`order_code`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Customer orders with status tracking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-01-20 15:30:00',9599.97,'DELIVERED','TRK001234','2024-01-21 09:00:00',NULL),(2,2,'2024-01-22 12:45:00',12999.99,'CONFIRMED','TRK001235',NULL,NULL),(3,3,'2024-01-23 16:20:00',225.97,'PENDING',NULL,NULL,NULL),(4,1,'2024-01-24 10:15:00',4299.98,'DISPATCHED','TRK001236','2024-01-25 08:00:00',NULL),(5,2,'2024-01-25 14:30:00',16129.98,'CONFIRMED','TRK001237',NULL,NULL),(6,3,'2024-01-26 09:45:00',12079.98,'PENDING',NULL,NULL,NULL),(7,1,'2024-01-27 16:20:00',6499.98,'DELIVERED','TRK001238','2024-01-28 10:00:00',NULL),(8,2,'2024-01-28 11:00:00',2199.98,'CONFIRMED','TRK001239',NULL,NULL),(9,3,'2024-01-29 13:15:00',899.99,'PENDING',NULL,NULL,NULL),(10,1,'2024-01-30 08:30:00',18999.99,'DISPATCHED','TRK001240','2024-01-31 09:00:00',NULL),(11,3,'2024-02-01 13:07:00',1376.12,'CONFIRMED','TRK001241',NULL,NULL),(12,7,'2024-02-02 12:22:00',16936.3,'PENDING',NULL,NULL,NULL),(13,7,'2024-02-03 11:41:00',16359.66,'PENDING',NULL,NULL,NULL),(14,9,'2024-02-04 11:16:00',10184.28,'DELIVERED','TRK001244','2024-02-05 11:16:00',NULL),(15,2,'2024-02-05 11:49:00',9976.25,'CONFIRMED','TRK001245',NULL,NULL),(16,1,'2024-02-06 14:32:00',7873.78,'DISPATCHED','TRK001246','2024-02-07 14:32:00',NULL),(17,3,'2024-02-07 08:13:00',12388.16,'PENDING',NULL,NULL,NULL),(18,9,'2024-02-08 12:19:00',9964.13,'DELIVERED','TRK001248','2024-02-09 12:19:00',NULL),(19,3,'2024-02-09 13:20:00',11279.17,'DELIVERED','TRK001249','2024-02-10 13:20:00',NULL),(20,1,'2024-02-10 15:38:00',12846.83,'PENDING',NULL,NULL,NULL),(21,7,'2024-02-11 14:42:00',13837.68,'PENDING',NULL,NULL,NULL),(22,1,'2024-02-12 13:45:00',4561.13,'DELIVERED','TRK001252','2024-02-13 13:45:00',NULL),(23,2,'2024-02-13 15:48:00',11212.96,'CONFIRMED','TRK001253',NULL,NULL),(24,3,'2024-02-14 14:28:00',19382.45,'CONFIRMED','TRK001254',NULL,NULL),(25,8,'2024-02-15 14:14:00',15084.43,'DELIVERED','TRK001255','2024-02-16 14:14:00',NULL),(26,8,'2024-02-16 08:36:00',9642.87,'DELIVERED','TRK001256','2024-02-17 08:36:00',NULL),(27,2,'2024-02-17 12:44:00',18971.44,'DELIVERED','TRK001257','2024-02-18 12:44:00',NULL),(28,7,'2024-02-18 09:28:00',15269.48,'DELIVERED','TRK001258','2024-02-19 09:28:00',NULL),(29,8,'2024-02-19 13:20:00',1356.43,'DELIVERED','TRK001259','2024-02-20 13:20:00',NULL),(30,1,'2024-02-20 12:18:00',17406.21,'DISPATCHED','TRK001260','2024-02-21 12:18:00',NULL),(31,2,'2024-02-21 14:00:00',16445.65,'DISPATCHED','TRK001261','2024-02-22 14:00:00',NULL),(32,7,'2024-02-22 09:25:00',12965.78,'CONFIRMED','TRK001262',NULL,NULL),(33,9,'2024-02-23 13:50:00',1739.25,'CONFIRMED','TRK001263',NULL,NULL),(34,2,'2024-02-24 09:31:00',15889.84,'PENDING',NULL,NULL,NULL),(35,9,'2024-02-25 11:59:00',18755.85,'CONFIRMED','TRK001265',NULL,NULL),(36,3,'2024-02-26 10:12:00',3476.24,'DELIVERED','TRK001266','2024-02-27 10:12:00',NULL),(37,7,'2024-02-27 15:30:00',1303.85,'DISPATCHED','TRK001267','2024-02-28 15:30:00',NULL),(38,9,'2024-02-28 08:05:00',10883.84,'PENDING',NULL,NULL,NULL),(39,7,'2024-02-29 14:12:00',13483.21,'DELIVERED','TRK001269','2024-03-01 14:12:00',NULL),(40,2,'2024-03-01 13:33:00',17311.79,'DISPATCHED','TRK001270','2024-03-02 13:33:00',NULL),(41,8,'2024-03-02 15:15:00',16997.65,'DISPATCHED','TRK001271','2024-03-03 15:15:00',NULL),(42,9,'2024-03-03 08:36:00',10063.04,'CONFIRMED','TRK001272',NULL,NULL),(43,1,'2024-03-04 10:54:00',4297.16,'DELIVERED','TRK001273','2024-03-05 10:54:00',NULL),(44,8,'2024-03-05 08:58:00',16770.75,'DISPATCHED','TRK001274','2024-03-06 08:58:00',NULL),(45,7,'2024-03-06 08:46:00',3454.14,'CONFIRMED','TRK001275',NULL,NULL),(46,3,'2024-03-07 13:14:00',14891.45,'PENDING',NULL,NULL,NULL),(47,2,'2024-03-08 13:00:00',8881.24,'DELIVERED','TRK001277','2024-03-09 13:00:00',NULL),(48,1,'2024-03-09 11:40:00',10810.07,'CONFIRMED','TRK001278',NULL,NULL),(49,1,'2024-03-10 08:55:00',12922.34,'CONFIRMED','TRK001279',NULL,NULL),(50,3,'2024-03-11 12:07:00',9725.27,'DELIVERED','TRK001280','2024-03-12 12:07:00',NULL),(54,10,'2025-07-25 00:31:18',2535599.92,'PENDING',NULL,NULL,'#MZ8066050'),(57,10,'2025-07-25 00:32:01',3199.98,'PENDING',NULL,NULL,'#LY5262464'),(58,376,'2025-07-25 11:52:00',7199.2,'CONFIRMED',NULL,NULL,'#FE5774366'),(59,376,'2025-07-25 13:23:51',7199.2,'CONFIRMED',NULL,NULL,'#UA9616724');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `FKd1qot1f3alweegm6ledjow6nj` (`customer_id`),
  CONSTRAINT `FKd1qot1f3alweegm6ledjow6nj` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Payment transactions for orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'MOBILE_MONEY','TXN001234',9599.97,'COMPLETED','2024-01-20 15:35:00',NULL),(2,2,'CREDIT_CARD','TXN001235',12999.99,'COMPLETED','2024-01-22 12:50:00',NULL),(3,3,'BANK_TRANSFER','TXN001236',225.97,'PENDING',NULL,NULL),(4,4,'MOBILE_MONEY','TXN001237',4299.98,'COMPLETED','2024-01-24 10:20:00',NULL),(5,5,'CREDIT_CARD','TXN001238',16129.98,'COMPLETED','2024-01-25 14:35:00',NULL),(6,6,'BANK_TRANSFER','TXN001239',12079.98,'PENDING',NULL,NULL),(7,7,'MOBILE_MONEY','TXN001240',6499.98,'COMPLETED','2024-01-27 16:25:00',NULL),(8,8,'CREDIT_CARD','TXN001241',2199.98,'COMPLETED','2024-01-28 11:05:00',NULL),(9,9,'BANK_TRANSFER','TXN001242',899.99,'PENDING',NULL,NULL),(10,10,'MOBILE_MONEY','TXN001243',18999.99,'COMPLETED','2024-01-30 08:35:00',NULL),(11,11,'MOBILE_MONEY','TXN001244',1200.00,'COMPLETED','2024-02-01 10:00:00',NULL),(12,12,'CREDIT_CARD','TXN001245',3000.50,'COMPLETED','2024-02-02 12:30:00',NULL),(13,13,'BANK_TRANSFER','TXN001246',500.75,'PENDING',NULL,NULL),(14,14,'MOBILE_MONEY','TXN001247',750.00,'FAILED',NULL,NULL),(15,15,'CREDIT_CARD','TXN001248',1550.30,'COMPLETED','2024-02-03 14:00:00',NULL),(16,16,'BANK_TRANSFER','TXN001249',850.99,'COMPLETED','2024-02-03 17:25:00',NULL),(17,17,'MOBILE_MONEY','TXN001250',999.00,'PENDING',NULL,NULL),(18,18,'CREDIT_CARD','TXN001251',2100.40,'COMPLETED','2024-02-04 09:15:00',NULL),(19,19,'BANK_TRANSFER','TXN001252',1250.25,'COMPLETED','2024-02-04 13:45:00',NULL),(20,20,'MOBILE_MONEY','TXN001253',675.60,'FAILED',NULL,NULL),(21,21,'CREDIT_CARD','TXN001254',1089.90,'COMPLETED','2024-02-05 16:30:00',NULL),(22,22,'BANK_TRANSFER','TXN001255',780.00,'PENDING',NULL,NULL),(23,23,'MOBILE_MONEY','TXN001256',2400.00,'COMPLETED','2024-02-06 11:45:00',NULL),(24,24,'CREDIT_CARD','TXN001257',3100.90,'COMPLETED','2024-02-06 14:10:00',NULL),(25,25,'BANK_TRANSFER','TXN001258',1425.99,'COMPLETED','2024-02-06 18:20:00',NULL),(26,26,'MOBILE_MONEY','TXN001259',950.75,'FAILED',NULL,NULL),(27,27,'CREDIT_CARD','TXN001260',2150.45,'COMPLETED','2024-02-07 08:35:00',NULL),(28,28,'BANK_TRANSFER','TXN001261',875.55,'COMPLETED','2024-02-07 13:55:00',NULL),(29,29,'MOBILE_MONEY','TXN001262',999.99,'PENDING',NULL,NULL),(30,30,'CREDIT_CARD','TXN001263',1675.80,'COMPLETED','2024-02-08 10:00:00',NULL),(31,31,'BANK_TRANSFER','TXN001264',430.45,'COMPLETED','2024-02-08 15:30:00',NULL),(32,32,'MOBILE_MONEY','TXN001265',999.99,'COMPLETED','2024-02-09 11:25:00',NULL),(33,33,'CREDIT_CARD','TXN001266',1340.20,'COMPLETED','2024-02-09 14:10:00',NULL),(34,34,'BANK_TRANSFER','TXN001267',2200.00,'PENDING',NULL,NULL),(35,35,'MOBILE_MONEY','TXN001268',1675.50,'FAILED',NULL,NULL),(36,36,'CREDIT_CARD','TXN001269',2899.00,'COMPLETED','2024-02-10 09:50:00',NULL),(37,37,'BANK_TRANSFER','TXN001270',1760.80,'COMPLETED','2024-02-10 13:15:00',NULL),(38,38,'MOBILE_MONEY','TXN001271',800.60,'COMPLETED','2024-02-11 08:40:00',NULL),(39,39,'CREDIT_CARD','TXN001272',3100.25,'COMPLETED','2024-02-11 12:00:00',NULL),(40,40,'BANK_TRANSFER','TXN001273',605.45,'PENDING',NULL,NULL),(41,41,'MOBILE_MONEY','TXN001274',1290.70,'FAILED',NULL,NULL),(42,42,'CREDIT_CARD','TXN001275',1999.90,'COMPLETED','2024-02-12 10:10:00',NULL),(43,43,'BANK_TRANSFER','TXN001276',980.00,'COMPLETED','2024-02-12 15:20:00',NULL),(44,44,'MOBILE_MONEY','TXN001277',730.30,'COMPLETED','2024-02-13 11:00:00',NULL),(45,45,'CREDIT_CARD','TXN001278',2145.65,'COMPLETED','2024-02-13 14:40:00',NULL),(46,46,'BANK_TRANSFER','TXN001279',1500.00,'COMPLETED','2024-02-13 17:30:00',NULL),(47,47,'MOBILE_MONEY','TXN001280',625.00,'FAILED',NULL,NULL),(48,48,'CREDIT_CARD','TXN001281',990.99,'COMPLETED','2024-02-14 09:25:00',NULL),(49,49,'BANK_TRANSFER','TXN001282',1100.00,'PENDING',NULL,NULL),(50,50,'MOBILE_MONEY','TXN001283',870.75,'COMPLETED','2024-02-14 12:30:00',NULL),(51,1,'CREDIT_CARD','TXN001284',2200.00,'COMPLETED','2024-02-15 10:15:00',NULL),(52,2,'BANK_TRANSFER','TXN001285',1900.00,'COMPLETED','2024-02-15 13:10:00',NULL),(53,3,'MOBILE_MONEY','TXN001286',1000.00,'PENDING',NULL,NULL),(54,4,'CREDIT_CARD','TXN001287',3100.00,'COMPLETED','2024-02-16 09:50:00',NULL),(55,5,'BANK_TRANSFER','TXN001288',899.99,'COMPLETED','2024-02-16 14:00:00',NULL),(56,6,'MOBILE_MONEY','TXN001289',1050.75,'COMPLETED','2024-02-17 08:20:00',NULL),(57,7,'CREDIT_CARD','TXN001290',2500.00,'COMPLETED','2024-02-17 13:40:00',NULL),(58,8,'BANK_TRANSFER','TXN001291',1450.00,'PENDING',NULL,NULL),(59,9,'MOBILE_MONEY','TXN001292',960.00,'COMPLETED','2024-02-18 10:00:00',NULL),(60,10,'CREDIT_CARD','TXN001293',1300.00,'COMPLETED','2024-02-18 12:50:00',NULL),(61,NULL,NULL,'fee3647f-abca-4d24-a1bc-39fe66a39b0d',4500.00,'PENDING',NULL,376),(62,58,'MOBILE_MONEY','55cdc1fe-6fed-4887-92bb-fc243dead13a',4500.00,'SUCCESS','2025-07-25 11:51:57',376),(63,NULL,NULL,'2e24419c-b625-4851-b8bd-5a1a3b246007',4500.00,'PENDING',NULL,376),(64,59,'MOBILE_MONEY','e20c4752-2e70-49ab-a0b1-6208d5b57fe1',4500.00,'SUCCESS','2025-07-25 13:23:50',376);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `FKdswxvx2nl2032yjv609r29sdr` (`category_id`),
  CONSTRAINT `FK5w81wp3eyugvi2lii94iao3fm` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKdswxvx2nl2032yjv609r29sdr` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint NOT NULL,
  `image_order` int NOT NULL,
  `is_main` bit(1) NOT NULL,
  `object_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1n91c4vdhw8pa4frngs4qbbvs` (`product_id`),
  CONSTRAINT `FK1n91c4vdhw8pa4frngs4qbbvs` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `FKgp9r9cogdtnjbwn6rw2dv0o00` (`tag_id`),
  CONSTRAINT `FKeybx0aj781vhg3j2wn8utdfvv` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKgp9r9cogdtnjbwn6rw2dv0o00` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,'Flash Sales','Limited-time offers and discounted products for quick purchases with special pricing','flash-sales'),(2,'New Arrivals','Recently added products and latest releases from top brands and manufacturers','new-arrivals'),(3,'Free Delivery','Products eligible for free shipping and delivery with no additional charges','free-delivery'),(4,'Top Deals','Best value products and special offers with maximum savings and benefits','top-deals'),(5,'Best Sellers','Most popular and highly-rated products that customers love and recommend','best-sellers');
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `variant_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (1,1,'color','Titanium',10),(2,1,'color','Gold',8),(3,1,'color','Silver',7),(4,2,'storage','256GB',8),(5,2,'storage','512GB',7),(6,3,'size','Small',20),(7,3,'size','Medium',15),(8,3,'size','Large',15),(9,4,'flavor','Original',50),(10,4,'flavor','Spicy',50),(11,5,'color','Black',20),(12,5,'color','White',20),(13,6,'size','100g',25),(14,6,'size','250g',25),(15,6,'size','500g',25),(16,7,'size','55\"',6),(17,7,'size','65\"',6),(18,8,'roast','Medium',30),(19,8,'roast','Dark',30),(20,9,'ram','16GB',4),(21,9,'ram','32GB',4),(22,10,'type','Dark Chocolate',15),(23,10,'type','Milk Chocolate',15),(24,10,'type','White Chocolate',15),(25,61,'color','Black',10),(26,61,'color','White',8),(27,62,'color','Blue',12),(28,62,'color','Red',10),(29,63,'size','S',15),(30,63,'size','M',15),(31,63,'size','L',15),(32,64,'material','Cotton',20),(33,64,'material','Polyester',15),(34,65,'size','XS',25),(35,65,'size','S',25),(36,65,'size','M',25),(37,66,'color','Brown',8),(38,66,'color','Black',8),(39,67,'color','Silver',6),(40,67,'color','Gold',6),(41,68,'color','White',10),(42,68,'color','Black',10),(43,69,'color','Red',15),(44,69,'color','Blue',15),(45,70,'color','Green',12),(46,70,'color','Yellow',12),(47,71,'size','Small',8),(48,71,'size','Medium',8),(49,71,'size','Large',8),(50,72,'color','Pink',10),(51,72,'color','Purple',10),(52,73,'color','Orange',8),(53,73,'color','Gray',8),(54,74,'size','One Size',20),(55,75,'color','Navy',12),(56,75,'color','Gray',12),(57,76,'color','Beige',10),(58,76,'color','Brown',10),(59,77,'color','Cream',15),(60,77,'color','White',15),(61,78,'color','Maroon',8),(62,78,'color','Burgundy',8),(63,79,'color','Teal',10),(64,79,'color','Turquoise',10),(65,80,'color','Lavender',12),(66,80,'color','Mint',12),(67,81,'color','Coral',10),(68,81,'color','Peach',10),(69,82,'color','Indigo',8),(70,82,'color','Violet',8),(71,83,'color','Olive',10),(72,83,'color','Khaki',10),(73,84,'color','Charcoal',12),(74,84,'color','Slate',12),(75,85,'color','Rust',8),(76,85,'color','Terracotta',8),(77,86,'color','Sage',10),(78,86,'color','Forest',10),(79,87,'color','Dusty Rose',12),(80,87,'color','Blush',12),(81,88,'color','Mustard',8),(82,88,'color','Amber',8),(83,89,'color','Emerald',10),(84,89,'color','Jade',10),(85,90,'color','Crimson',12),(86,90,'color','Ruby',12);
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL,
  `weight` decimal(38,2) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DRAFT') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `vendor_id` bigint NOT NULL,
  `low_stock_threshold` int DEFAULT '5',
  `min_order_quantity` int DEFAULT '1',
  `average_rating` decimal(38,2) DEFAULT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_urls` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount_value` decimal(10,2) DEFAULT NULL,
  `total_reviews` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product catalog with inventory management';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'iPhone 15 Pro Max','Latest iPhone with A17 Pro chip, 48MP camera, and titanium design. Perfect for photography and gaming.','IPH15PM-001',8999.99,25,0.22,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop',1,'2024-01-20 10:00:00','2024-01-20 10:00:00',NULL,NULL),(2,'MacBook Air M2','Ultra-thin laptop with M2 chip, 13.6-inch Liquid Retina display, and all-day battery life.','MBA-M2-001',12999.99,15,1.29,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-20 11:00:00','2024-01-20 11:00:00',NULL,NULL),(3,'Ghanaian Jollof Rice Mix','Premium Jollof rice seasoning mix with authentic Ghanaian spices. Makes perfect Jollof rice every time.','JOLLOF-001',45.99,100,0.25,'ACTIVE',6,20,1,4.60,'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-20 13:00:00','2024-01-20 13:00:00',NULL,NULL),(4,'Wireless Bluetooth Headphones','High-quality wireless headphones with noise cancellation and 30-hour battery life.','WH-001',299.99,40,0.30,'ACTIVE',5,8,1,4.50,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-20 14:00:00','2024-01-20 14:00:00',NULL,NULL),(5,'Ghanaian Shea Butter','Pure natural shea butter from Northern Ghana. Perfect for skin and hair care.','SHEA-001',89.99,75,0.50,'ACTIVE',1,15,1,4.80,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1588359348347-9bc6cbbb689e?w=800&h=600&fit=crop',1,'2024-01-20 15:00:00','2025-07-25 12:16:15',NULL,NULL),(6,'Smart LED TV 55\"','4K Ultra HD Smart TV with built-in streaming apps and voice control.','TV-55-001',3999.99,12,15.50,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-20 16:00:00','2024-01-20 16:00:00',NULL,NULL),(7,'Ghanaian Coffee Beans','Premium Arabica coffee beans from the Volta region. Rich flavor with notes of chocolate and citrus.','COFFEE-001',129.99,60,0.50,'ACTIVE',6,12,1,4.90,'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop',1,'2024-01-20 17:00:00','2024-01-20 17:00:00',NULL,NULL),(8,'Gaming Laptop RTX 4060','High-performance gaming laptop with RTX 4060 graphics, 16GB RAM, and 512GB SSD.','GL-RTX-001',15999.99,8,2.50,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-20 18:00:00','2024-01-20 18:00:00',NULL,NULL),(9,'Ghanaian Chocolate Bars','Artisanal chocolate bars made with Ghanaian cocoa beans. Available in dark, milk, and white chocolate varieties.','CHOCO-001',79.99,45,0.10,'ACTIVE',6,10,1,4.60,'https://images.unsplash.com/photo-1481391319762-47dff72954d9?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1481391319762-47dff72954d9?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1511381939415-e44015466834?w=800&h=600&fit=crop',1,'2024-01-20 19:00:00','2024-01-20 19:00:00',NULL,NULL),(10,'Samsung Galaxy S24 Ultra','Latest Samsung flagship with S Pen, 200MP camera, and AI features. Perfect for productivity and photography.','SAMS24U-001',11999.99,18,0.23,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop',1,'2024-01-21 09:00:00','2024-01-21 09:00:00',NULL,NULL),(11,'Nike Air Max 270','Comfortable running shoes with Air Max technology. Perfect for daily wear and athletic activities.','NIKE270-001',899.99,35,0.80,'ACTIVE',5,8,1,4.50,'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop',1,'2024-01-21 10:00:00','2024-01-21 10:00:00',NULL,NULL),(12,'Adidas Ultraboost 22','Premium running shoes with responsive cushioning and energy return. Ideal for long-distance running.','ADIDAS-UB-001',1299.99,25,0.75,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop',1,'2024-01-21 11:00:00','2024-01-21 11:00:00',NULL,NULL),(13,'Sony WH-1000XM5 Headphones','Industry-leading noise cancellation with exceptional sound quality. Perfect for travel and work.','SONY-XM5-001',2499.99,20,0.25,'ACTIVE',5,5,1,4.90,'https://images.unsplash.com/photo-1484704849700-f032a568e944?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop',1,'2024-01-21 12:00:00','2024-01-21 12:00:00',NULL,NULL),(14,'Apple Watch Series 9','Latest smartwatch with health monitoring, GPS, and cellular connectivity. Stainless steel case.','AW-S9-001',3999.99,15,0.30,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544117519-31a4b719223d?w=800&h=600&fit=crop',1,'2024-01-21 13:00:00','2024-01-21 13:00:00',NULL,NULL),(15,'Canon EOS R6 Mark II','Full-frame mirrorless camera with 24.2MP sensor and 4K video recording. Professional photography.','CANON-R6-001',18999.99,8,1.20,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop',1,'2024-01-21 14:00:00','2024-01-21 14:00:00',NULL,NULL),(16,'Dell XPS 13 Plus','Ultra-thin laptop with 13th Gen Intel processor and OLED display. Premium build quality.','DELL-XPS-001',15999.99,12,1.20,'ACTIVE',5,3,1,4.60,'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-21 15:00:00','2024-01-21 15:00:00',NULL,NULL),(17,'Samsung 65\" QLED 4K TV','Quantum dot technology with HDR10+ and smart TV features. Immersive viewing experience.','SAMSUNG-TV-001',8999.99,10,25.00,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop',1,'2024-01-21 16:00:00','2024-01-21 16:00:00',NULL,NULL),(18,'PlayStation 5 Console','Next-gen gaming console with 4K graphics and ultra-high speed SSD. Includes DualSense controller.','PS5-001',4999.99,15,4.50,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542751371-adc38448a05e?w=800&h=600&fit=crop',1,'2024-01-21 17:00:00','2024-01-21 17:00:00',NULL,NULL),(19,'Xbox Series X','Most powerful Xbox ever with 4K gaming and backward compatibility. Includes wireless controller.','XBOX-X-001',4499.99,12,4.45,'ACTIVE',5,3,1,4.80,'https://images.unsplash.com/photo-1542751371-adc38448a05e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542751371-adc38448a05e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=800&h=600&fit=crop',1,'2024-01-21 18:00:00','2024-01-21 18:00:00',NULL,NULL),(20,'Nintendo Switch OLED','7-inch OLED screen with enhanced audio and improved kickstand. Perfect for gaming on the go.','NINTENDO-OLED-001',2999.99,25,0.42,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1578303512597-81e6cc155b3e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1578303512597-81e6cc155b3e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=800&h=600&fit=crop',1,'2024-01-21 19:00:00','2024-01-21 19:00:00',NULL,NULL),(21,'iPad Pro 12.9\" M2','12.9-inch Liquid Retina XDR display with M2 chip. Perfect for creative professionals.','IPAD-PRO-001',8999.99,18,0.68,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-21 20:00:00','2024-01-21 20:00:00',NULL,NULL),(22,'Samsung Galaxy Tab S9','14.6-inch AMOLED display with S Pen included. Premium Android tablet experience.','SAMSUNG-TAB-001',5999.99,15,0.64,'ACTIVE',5,3,1,4.60,'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-21 21:00:00','2024-01-21 21:00:00',NULL,NULL),(23,'GoPro Hero 11 Black','5.3K video recording with HyperSmooth 5.0 stabilization. Perfect for action sports and travel.','GOPRO-11-001',3999.99,20,0.15,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=800&h=600&fit=crop',1,'2024-01-21 22:00:00','2024-01-21 22:00:00',NULL,NULL),(24,'DJI Mini 3 Pro Drone','Ultralight camera drone with 4K video and 48MP photos. Perfect for aerial photography.','DJI-MINI3-001',5999.99,12,0.25,'ACTIVE',5,3,1,4.80,'https://images.unsplash.com/photo-1579829366248-204fe8413fde?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1579829366248-204fe8413fde?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop',1,'2024-01-21 23:00:00','2024-01-21 23:00:00',NULL,NULL),(25,'Fitbit Sense 2','Advanced health smartwatch with ECG, stress management, and 6+ day battery life.','FITBIT-SENSE-001',1999.99,30,0.05,'ACTIVE',5,8,1,4.50,'https://images.unsplash.com/photo-1544117519-31a4b719223d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544117519-31a4b719223d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&h=600&fit=crop',1,'2024-01-22 09:00:00','2024-01-22 09:00:00',NULL,NULL),(26,'Garmin Fenix 7','Premium multisport GPS watch with topographic maps and advanced training metrics.','GARMIN-FENIX-001',4999.99,10,0.08,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1544117519-31a4b719223d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544117519-31a4b719223d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&h=600&fit=crop',1,'2024-01-22 10:00:00','2024-01-22 10:00:00',NULL,NULL),(27,'Bose QuietComfort 45','Premium noise-cancelling headphones with 24-hour battery life and comfortable fit.','BOSE-QC45-001',2299.99,25,0.25,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-22 11:00:00','2024-01-22 11:00:00',NULL,NULL),(28,'JBL Flip 6 Bluetooth Speaker','Portable waterproof speaker with 12 hours of playtime and PartyBoost for stereo sound.','JBL-FLIP6-001',899.99,40,0.55,'ACTIVE',5,8,1,4.60,'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop',1,'2024-01-22 12:00:00','2024-01-22 12:00:00',NULL,NULL),(29,'Kindle Paperwhite','6.8-inch glare-free display with adjustable warm light and weeks of battery life.','KINDLE-PW-001',899.99,35,0.21,'ACTIVE',5,8,1,4.80,'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop',1,'2024-01-22 13:00:00','2024-01-22 13:00:00',NULL,NULL),(30,'Echo Dot 5th Gen','Smart speaker with Alexa, improved sound quality, and temperature sensor.','ECHO-DOT-001',399.99,50,0.30,'ACTIVE',5,10,1,4.50,'https://images.unsplash.com/photo-1543512214-318c7553f230?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1543512214-318c7553f230?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=800&h=600&fit=crop',1,'2024-01-22 14:00:00','2024-01-22 14:00:00',NULL,NULL),(31,'iPhone 14 Pro','Advanced smartphone with A16 Bionic chip, 48MP camera system, and Dynamic Island.','IPH14P-001',7999.99,22,0.21,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop',1,'2024-01-22 15:00:00','2024-01-22 15:00:00',NULL,NULL),(32,'Samsung Galaxy Z Fold 5','Foldable smartphone with 7.6-inch main display and S Pen support. Revolutionary design.','SAMSUNG-FOLD-001',15999.99,8,0.25,'ACTIVE',5,2,1,4.70,'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop',1,'2024-01-22 16:00:00','2024-01-22 16:00:00',NULL,NULL),(33,'MacBook Pro 16\" M3 Max','Professional laptop with M3 Max chip, 16-inch Liquid Retina XDR display, and up to 22-core GPU.','MBP16-M3-001',24999.99,6,2.15,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-22 17:00:00','2024-01-22 17:00:00',NULL,NULL),(34,'ASUS ROG Strix G16','Gaming laptop with RTX 4070, 16-inch QHD display, and RGB keyboard. Ultimate gaming performance.','ASUS-ROG-001',18999.99,10,2.30,'ACTIVE',5,3,1,4.80,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-22 18:00:00','2024-01-22 18:00:00',NULL,NULL),(35,'LG C3 77\" OLED TV','77-inch 4K OLED display with AI-powered processing and Dolby Vision. Cinematic viewing experience.','LG-C3-001',15999.99,5,35.00,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop',1,'2024-01-22 19:00:00','2024-01-22 19:00:00',NULL,NULL),(36,'Sony A7R V Camera','61MP full-frame mirrorless camera with 8K video and advanced autofocus. Professional photography.','SONY-A7R-001',22999.99,4,1.50,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop',1,'2024-01-22 20:00:00','2024-01-22 20:00:00',NULL,NULL),(37,'Nikon Z9 Camera','Flagship mirrorless camera with 45.7MP sensor and 8K video recording. Professional sports photography.','NIKON-Z9-001',25999.99,3,1.34,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=800&h=600&fit=crop',1,'2024-01-22 21:00:00','2024-01-22 21:00:00',NULL,NULL),(38,'DJI Air 3 Drone','Advanced camera drone with dual cameras and 46-minute flight time. Perfect for content creators.','DJI-AIR3-001',8999.99,8,0.72,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1579829366248-204fe8413fde?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1579829366248-204fe8413fde?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565849904461-04a58d377e47?w=800&h=600&fit=crop',1,'2024-01-22 22:00:00','2024-01-22 22:00:00',NULL,NULL),(39,'Apple AirPods Pro 2','Active noise cancellation with personalized spatial audio and sweat resistance.','AIRPODS-PRO-001',2499.99,30,0.05,'ACTIVE',5,8,1,4.70,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-22 23:00:00','2024-01-22 23:00:00',NULL,NULL),(40,'Samsung Galaxy Buds2 Pro','Premium wireless earbuds with active noise cancellation and 360 audio.','SAMSUNG-BUDS-001',1999.99,25,0.05,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1484704849700-f032a568e944?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop',1,'2024-01-23 09:00:00','2024-01-23 09:00:00',NULL,NULL),(41,'Microsoft Surface Pro 9','2-in-1 laptop and tablet with 13-inch PixelSense display and detachable keyboard.','SURFACE-PRO-001',12999.99,15,0.88,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-23 10:00:00','2024-01-23 10:00:00',NULL,NULL),(42,'Lenovo ThinkPad X1 Carbon','Ultra-light business laptop with 14-inch display and military-grade durability.','THINKPAD-X1-001',14999.99,12,1.12,'ACTIVE',5,3,1,4.80,'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-23 11:00:00','2024-01-23 11:00:00',NULL,NULL),(43,'HP Spectre x360','Convertible laptop with 13.5-inch 3K display and 360-degree hinge design.','HP-SPECTRE-001',11999.99,18,1.34,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-23 12:00:00','2024-01-23 12:00:00',NULL,NULL),(44,'Alienware x16 Gaming Laptop','Premium gaming laptop with RTX 4090, 16-inch QHD+ display, and Cherry MX mechanical keyboard.','ALIENWARE-X16-001',29999.99,4,2.72,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-23 13:00:00','2024-01-23 13:00:00',NULL,NULL),(45,'Razer Blade 18','18-inch gaming laptop with RTX 4090, 240Hz display, and advanced cooling system.','RAZER-BLADE-001',32999.99,3,3.10,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-23 14:00:00','2024-01-23 14:00:00',NULL,NULL),(46,'Logitech G Pro X Superlight','Ultra-lightweight wireless gaming mouse with HERO 25K sensor and 70-hour battery life.','LOGITECH-GPRO-001',899.99,35,0.06,'ACTIVE',5,8,1,4.80,'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop',1,'2024-01-23 16:00:00','2024-01-23 16:00:00',NULL,NULL),(47,'Corsair K100 RGB','Mechanical gaming keyboard with optical-mechanical switches and 44-zone RGB lighting.','CORSAIR-K100-001',1299.99,25,1.20,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop',1,'2024-01-23 17:00:00','2024-01-23 17:00:00',NULL,NULL),(48,'BenQ PD3220U Monitor','32-inch 4K HDR monitor with 95% DCI-P3 color gamut and USB-C connectivity.','BENQ-PD3220U-001',3999.99,12,8.50,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-23 18:00:00','2024-01-23 18:00:00',NULL,NULL),(49,'Samsung Odyssey G9 Monitor','49-inch ultrawide gaming monitor with 240Hz refresh rate and 1000R curvature.','SAMSUNG-G9-001',8999.99,8,13.20,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-23 19:00:00','2024-01-23 19:00:00',NULL,NULL),(50,'Nike Air Jordan 1 Retro','Classic basketball sneakers with premium leather construction and iconic design.','NIKE-AJ1-001',1299.99,20,0.90,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop',1,'2024-01-24 09:00:00','2024-01-24 09:00:00',NULL,NULL),(51,'Adidas Yeezy Boost 350','Ultra-comfortable sneakers with Primeknit upper and Boost midsole technology.','ADIDAS-YEEZY-001',2499.99,15,0.80,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop',1,'2024-01-24 10:00:00','2024-01-24 10:00:00',NULL,NULL),(52,'Levi\'s 501 Original Jeans','Classic straight-fit jeans with button fly and timeless design.','LEVIS-501-001',899.99,40,0.60,'ACTIVE',5,8,1,4.60,'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542272604-787c3835535d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-24 11:00:00','2024-01-24 11:00:00',NULL,NULL),(53,'Zara Oversized Blazer','Modern oversized blazer with structured shoulders and contemporary fit.','ZARA-BLAZER-001',1299.99,25,0.70,'ACTIVE',5,5,1,4.50,'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-24 12:00:00','2024-01-24 12:00:00',NULL,NULL),(54,'H&M Cotton T-Shirt','Premium cotton t-shirt with comfortable fit and sustainable materials.','HM-TSHIRT-001',299.99,60,0.20,'ACTIVE',5,12,1,4.40,'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-24 13:00:00','2024-01-24 13:00:00',NULL,NULL),(55,'IKEA MALM Bed Frame','Modern bed frame with clean lines and under-bed storage drawers.','IKEA-MALM-001',2999.99,15,25.00,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1505693314120-0d443867891c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505693314120-0d443867891c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&h=600&fit=crop',1,'2024-01-24 14:00:00','2024-01-24 14:00:00',NULL,NULL),(56,'KitchenAid Stand Mixer','Professional stand mixer with 10-speed motor and 5-quart bowl capacity.','KITCHENAID-MIXER-001',3999.99,12,8.50,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-24 15:00:00','2024-01-24 15:00:00',NULL,NULL),(57,'Philips Hue Smart Bulbs','Smart LED bulbs with 16 million colors and voice control compatibility.','PHILIPS-HUE-001',899.99,30,0.30,'ACTIVE',5,8,1,4.60,'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-24 16:00:00','2024-01-24 16:00:00',NULL,NULL),(58,'Dyson V15 Detect','Cord-free vacuum with laser dust detection and 60-minute runtime.','DYSON-V15-001',5999.99,8,2.50,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-24 17:00:00','2024-01-24 17:00:00',NULL,NULL),(59,'Nest Learning Thermostat','Smart thermostat that learns your schedule and saves energy automatically.','NEST-THERM-001',1999.99,20,0.40,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-24 18:00:00','2024-01-24 18:00:00',NULL,NULL),(60,'Bowflex SelectTech Dumbbells','Adjustable dumbbells with 15 different weight settings in one pair.','BOWFLEX-DUMB-001',3999.99,10,15.00,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-24 19:00:00','2024-01-24 19:00:00',NULL,NULL),(61,'Peloton Bike+','Premium indoor cycling bike with 24-inch rotating HD touchscreen and live classes.','PELOTON-BIKE-001',24999.99,5,45.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-24 20:00:00','2024-01-24 20:00:00',NULL,NULL),(62,'Nike ZoomX Vaporfly','Elite racing shoes with carbon fiber plate and ZoomX foam for maximum speed.','NIKE-VAPORFLY-001',2999.99,15,0.60,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop',1,'2024-01-24 21:00:00','2024-01-24 21:00:00',NULL,NULL),(63,'Patagonia Down Jacket','Premium down jacket with 800-fill power and water-resistant shell.','PATAGONIA-DOWN-001',3999.99,20,0.80,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-24 22:00:00','2024-01-24 22:00:00',NULL,NULL),(64,'Yeti Rambler Tumbler','Vacuum-insulated tumbler with 20-ounce capacity and 24-hour temperature retention.','YETI-RAMBLER-001',599.99,35,0.50,'ACTIVE',5,8,1,4.60,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-24 23:00:00','2024-01-24 23:00:00',NULL,NULL),(65,'Kindle Oasis','Premium e-reader with 7-inch display, adjustable warm light, and waterproof design.','KINDLE-OASIS-001',1999.99,18,0.30,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop',1,'2024-01-25 09:00:00','2024-01-25 09:00:00',NULL,NULL),(66,'Sony WH-1000XM4 Headphones','Industry-leading noise cancellation with 30-hour battery life and touch controls.','SONY-XM4-001',1999.99,25,0.25,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-25 10:00:00','2024-01-25 10:00:00',NULL,NULL),(67,'Spotify Premium Subscription','Ad-free music streaming with offline downloads and high-quality audio.','SPOTIFY-PREM-001',99.99,1000,0.00,'ACTIVE',5,100,1,4.90,'https://images.unsplash.com/photo-1614613535308-eb5fbd3d2c17?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1614613535308-eb5fbd3d2c17?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop',1,'2024-01-25 11:00:00','2024-01-25 11:00:00',NULL,NULL),(68,'Netflix Premium Plan Plus','4K streaming service with unlimited movies, TV shows, and mobile downloads.','NETFLIX-PREM-PLUS-001',249.99,1000,0.00,'ACTIVE',5,100,1,4.80,'https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop',1,'2024-01-25 12:00:00','2024-01-25 12:00:00',NULL,NULL),(69,'Audible Premium Plus','Unlimited access to audiobooks, podcasts, and Audible Originals.','AUDIBLE-PREM-001',149.99,1000,0.00,'ACTIVE',5,100,1,4.70,'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop',1,'2024-01-25 13:00:00','2024-01-25 13:00:00',NULL,NULL),(70,'Dyson Airwrap Multi-styler','Revolutionary hair styling tool with air technology for multiple styling options.','DYSON-AIRWRAP-001',5999.99,12,1.20,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-25 14:00:00','2024-01-25 14:00:00',NULL,NULL),(71,'Foreo Luna 3','Smart facial cleansing device with T-Sonic technology and app connectivity.','FOREOLUNA-001',1999.99,20,0.30,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-25 15:00:00','2024-01-25 15:00:00',NULL,NULL),(72,'Oral-B iO Series 9','Smart electric toothbrush with AI recognition and 3D tracking technology.','ORALB-IO9-001',1299.99,25,0.40,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-25 16:00:00','2024-01-25 16:00:00',NULL,NULL),(73,'Philips Sonicare DiamondClean','Premium electric toothbrush with diamond clean technology and travel case.','PHILIPS-SONIC-001',899.99,30,0.30,'ACTIVE',5,8,1,4.60,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-25 17:00:00','2024-01-25 17:00:00',NULL,NULL),(74,'La Mer Moisturizing Cream','Luxury moisturizing cream with Miracle Broth and sea kelp extract.','LAMER-CREAM-001',3999.99,15,0.20,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-25 18:00:00','2024-01-25 18:00:00',NULL,NULL),(75,'Tesla Model 3','Electric sedan with 358-mile range, 0-60 mph in 3.1 seconds, and Autopilot capability.','TESLA-M3-001',499999.99,3,1844.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-25 19:00:00','2024-01-25 19:00:00',NULL,NULL),(76,'BMW X5 xDrive40i','Luxury SUV with 335 horsepower, all-wheel drive, and premium interior features.','BMW-X5-001',899999.99,2,2100.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1555215695-3004980ad54e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-25 20:00:00','2024-01-25 20:00:00',NULL,NULL),(77,'Mercedes-Benz S-Class','Flagship luxury sedan with advanced driver assistance and premium comfort features.','MERCEDES-S-001',1299999.99,1,1950.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-25 21:00:00','2024-01-25 21:00:00',NULL,NULL),(78,'Audi RS e-tron GT','Electric performance sedan with 637 horsepower and quattro all-wheel drive.','AUDI-RSETRON-001',1499999.99,1,2347.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-25 22:00:00','2024-01-25 22:00:00',NULL,NULL),(79,'Porsche 911 Carrera','Iconic sports car with 379 horsepower and precision engineering.','PORSCHE-911-001',1999999.99,1,1430.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-25 23:00:00','2024-01-25 23:00:00',NULL,NULL),(80,'Starbucks Reserve Coffee','Premium single-origin coffee beans with complex flavor profiles and sustainable sourcing.','STARBUCKS-RESERVE-001',299.99,50,0.50,'ACTIVE',6,10,1,4.70,'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop',1,'2024-01-26 09:00:00','2024-01-26 09:00:00',NULL,NULL),(81,'Dom Pérignon Champagne','Prestige cuvée champagne with exceptional aging potential and complex aromas.','DOM-PERIGNON-001',8999.99,8,1.50,'ACTIVE',6,2,1,4.90,'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-26 10:00:00','2024-01-26 10:00:00',NULL,NULL),(82,'Wagyu A5 Beef','Premium Japanese Wagyu beef with exceptional marbling and melt-in-your-mouth texture.','WAGYU-A5-001',2999.99,5,0.50,'ACTIVE',6,1,1,4.80,'https://images.unsplash.com/photo-1544025162-d76694265947?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544025162-d76694265947?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-26 11:00:00','2024-01-26 11:00:00',NULL,NULL),(83,'Truffle Oil Premium','Black truffle-infused olive oil with intense aroma and authentic Italian origin.','TRUFFLE-OIL-001',899.99,20,0.25,'ACTIVE',6,5,1,4.60,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-26 12:00:00','2024-01-26 12:00:00',NULL,NULL),(84,'Artisan Sourdough Bread','Handcrafted sourdough bread with 72-hour fermentation and crusty exterior.','SOURDOUGH-001',89.99,30,0.80,'ACTIVE',6,8,1,4.50,'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1509440159596-0249088772ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-26 13:00:00','2024-01-26 13:00:00',NULL,NULL),(85,'Google Pixel 8 Pro','Advanced smartphone with AI-powered camera system and Google Tensor G3 chip.','PIXEL8PRO-001',9999.99,15,0.21,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop',1,'2024-01-27 09:00:00','2024-01-27 09:00:00',NULL,NULL),(86,'OnePlus 12','Flagship smartphone with Hasselblad camera system and 100W fast charging.','ONEPLUS12-001',8999.99,12,0.22,'ACTIVE',5,3,1,4.60,'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop',1,'2024-01-27 10:00:00','2024-01-27 10:00:00',NULL,NULL),(87,'ASUS ZenBook Pro','Premium laptop with OLED display and Intel Core i9 processor.','ASUS-ZENBOOK-001',17999.99,8,1.80,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&h=600&fit=crop',1,'2024-01-27 11:00:00','2024-01-27 11:00:00',NULL,NULL),(88,'MSI Creator Z16','Professional laptop with 16-inch 4K display and RTX 4060 graphics.','MSI-CREATOR-001',21999.99,6,2.10,'ACTIVE',5,2,1,4.70,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-27 12:00:00','2024-01-27 12:00:00',NULL,NULL),(89,'Sony WH-1000XM6','Latest noise-cancelling headphones with 30-hour battery life.','SONY-XM6-001',2999.99,18,0.25,'ACTIVE',5,5,1,4.90,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-27 13:00:00','2024-01-27 13:00:00',NULL,NULL),(90,'Puma RS-X','Retro-inspired sneakers with chunky sole and bold color combinations.','PUMA-RSX-001',799.99,25,0.70,'ACTIVE',5,8,1,4.50,'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop',1,'2024-01-27 14:00:00','2024-01-27 14:00:00',NULL,NULL),(91,'Converse Chuck Taylor','Classic canvas sneakers with timeless design and comfortable fit.','CONVERSE-CHUCK-001',599.99,40,0.60,'ACTIVE',5,10,1,4.60,'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop',1,'2024-01-27 15:00:00','2024-01-27 15:00:00',NULL,NULL),(92,'Uniqlo Ultra Light Down','Ultra-lightweight down jacket with packable design and warmth.','UNIQLO-DOWN-001',899.99,30,0.40,'ACTIVE',5,8,1,4.70,'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-27 16:00:00','2024-01-27 16:00:00',NULL,NULL),(93,'Zara Oversized Sweater','Comfortable oversized sweater with ribbed texture and relaxed fit.','ZARA-SWEATER-001',699.99,35,0.50,'ACTIVE',5,8,1,4.40,'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-27 17:00:00','2024-01-27 17:00:00',NULL,NULL),(94,'H&M Denim Jacket','Classic denim jacket with timeless design and comfortable fit.','HM-DENIM-001',499.99,45,0.60,'ACTIVE',5,10,1,4.30,'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542272604-787c3835535d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-27 18:00:00','2024-01-27 18:00:00',NULL,NULL),(95,'IKEA PAX Wardrobe','Customizable wardrobe system with sliding doors and interior organization.','IKEA-PAX-001',4999.99,10,45.00,'ACTIVE',5,2,1,4.60,'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505693314120-0d443867891c?w=800&h=600&fit=crop',1,'2024-01-27 19:00:00','2024-01-27 19:00:00',NULL,NULL),(96,'Vitamix Professional 750','Professional-grade blender with 64-ounce container and variable speed control.','VITAMIX-750-001',5999.99,8,5.20,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-27 20:00:00','2024-01-27 20:00:00',NULL,NULL),(97,'Ring Video Doorbell Pro','Smart video doorbell with 1080p HD video and two-way talk.','RING-DOORBELL-001',1999.99,25,0.30,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-27 21:00:00','2024-01-27 21:00:00',NULL,NULL),(98,'Roomba i7+ Robot Vacuum','Self-emptying robot vacuum with smart mapping and app control.','ROOMBA-I7-001',3999.99,12,3.80,'ACTIVE',5,3,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-27 22:00:00','2024-01-27 22:00:00',NULL,NULL),(99,'Philips Hue Bridge','Smart home hub for controlling up to 50 Philips Hue lights.','PHILIPS-HUE-BRIDGE-001',599.99,35,0.20,'ACTIVE',5,8,1,4.50,'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-27 23:00:00','2024-01-27 23:00:00',NULL,NULL),(100,'Bowflex Max Trainer','Hybrid cardio machine combining elliptical and stepper movements.','BOWFLEX-MAX-001',19999.99,5,120.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-28 09:00:00','2024-01-28 09:00:00',NULL,NULL),(101,'NordicTrack Commercial 1750','Premium treadmill with 10-inch HD touchscreen and iFit connectivity.','NORDICTRACK-1750-001',29999.99,3,200.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-28 10:00:00','2024-01-28 10:00:00',NULL,NULL),(102,'Under Armour HOVR','Lightweight running shoes with energy return and breathable mesh.','UA-HOVR-001',999.99,20,0.70,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop',1,'2024-01-28 11:00:00','2024-01-28 11:00:00',NULL,NULL),(103,'Columbia Omni-Heat Jacket','Insulated jacket with thermal reflective technology for extreme cold.','COLUMBIA-OMNI-001',2999.99,15,0.90,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-28 12:00:00','2024-01-28 12:00:00',NULL,NULL),(104,'Hydro Flask Water Bottle','Vacuum-insulated water bottle with 24-hour temperature retention.','HYDROFLASK-001',399.99,50,0.40,'ACTIVE',5,10,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 13:00:00','2024-01-28 13:00:00',NULL,NULL),(105,'Kobo Libra 2','7-inch e-reader with waterproof design and adjustable warm light.','KOBO-LIBRA-001',1299.99,20,0.25,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop',1,'2024-01-28 14:00:00','2024-01-28 14:00:00',NULL,NULL),(106,'Beats Studio Pro','Premium wireless headphones with active noise cancellation and spatial audio.','BEATS-STUDIO-001',3499.99,15,0.30,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-28 15:00:00','2024-01-28 15:00:00',NULL,NULL),(107,'YouTube Premium Subscription','Ad-free YouTube with background play and YouTube Music Premium.','YOUTUBE-PREM-001',149.99,1000,0.00,'ACTIVE',5,100,1,4.80,'https://images.unsplash.com/photo-1614613535308-eb5fbd3d2c17?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1614613535308-eb5fbd3d2c17?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop',1,'2024-01-28 16:00:00','2024-01-28 16:00:00',NULL,NULL),(108,'Disney+ Premium Plan','Streaming service with Disney, Pixar, Marvel, and Star Wars content.','DISNEY-PREM-001',179.99,1000,0.00,'ACTIVE',5,100,1,4.70,'https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop',1,'2024-01-28 17:00:00','2024-01-28 17:00:00',NULL,NULL),(109,'Apple Books Subscription','Unlimited access to audiobooks and e-books from Apple\'s digital library.','APPLE-BOOKS-001',99.99,1000,0.00,'ACTIVE',5,100,1,4.60,'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&h=600&fit=crop',1,'2024-01-28 18:00:00','2024-01-28 18:00:00',NULL,NULL),(110,'Dyson Supersonic Hair Dryer','Professional hair dryer with intelligent heat control and fast drying.','DYSON-SUPERSONIC-001',3999.99,15,0.70,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 19:00:00','2024-01-28 19:00:00',NULL,NULL),(111,'Clarisonic Mia Smart','Smart facial cleansing brush with app connectivity and personalized routines.','CLARISONIC-MIA-001',1499.99,25,0.20,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 20:00:00','2024-01-28 20:00:00',NULL,NULL),(112,'Philips Sonicare DiamondClean','Premium electric toothbrush with diamond clean technology and travel case.','PHILIPS-SONIC-002',999.99,30,0.30,'ACTIVE',5,8,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 21:00:00','2024-01-28 21:00:00',NULL,NULL),(113,'Panasonic Arc5 Razor','Premium electric razor with 5-blade shaving system and wet/dry operation.','PANASONIC-ARC5-001',2999.99,18,0.40,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 22:00:00','2024-01-28 22:00:00',NULL,NULL),(114,'Estée Lauder Advanced Night Repair','Anti-aging serum with hyaluronic acid and peptides for skin repair.','ESTEE-NIGHT-001',2999.99,20,0.15,'ACTIVE',5,5,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-28 23:00:00','2024-01-28 23:00:00',NULL,NULL),(115,'Ford Mustang Mach-E','Electric SUV with 300-mile range and Mustang-inspired design.','FORD-MUSTANG-E-001',599999.99,2,2200.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-29 09:00:00','2024-01-29 09:00:00',NULL,NULL),(116,'Audi Q8 e-tron','Electric luxury SUV with quattro all-wheel drive and 300-mile range.','AUDI-Q8-ETRON-001',899999.99,1,2500.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1555215695-3004980ad54e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-29 10:00:00','2024-01-29 10:00:00',NULL,NULL),(117,'Range Rover Sport','Luxury SUV with advanced terrain response and premium interior.','RANGE-ROVER-SPORT-001',1299999.99,1,2300.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-29 11:00:00','2024-01-29 11:00:00',NULL,NULL),(118,'Lamborghini Huracán','Supercar with 640 horsepower and 0-60 mph in 2.8 seconds.','LAMBORGHINI-HURACAN-001',2999999.99,1,1389.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-29 12:00:00','2024-01-29 12:00:00',NULL,NULL),(119,'Ferrari SF90 Stradale','Hybrid supercar with 986 horsepower and all-wheel drive.','FERRARI-SF90-001',3999999.99,1,1570.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-01-29 13:00:00','2024-01-29 13:00:00',NULL,NULL),(120,'Starbucks Reserve Coffee','Premium single-origin coffee beans with complex flavor profiles and sustainable sourcing.','STARBUCKS-RESERVE-002',399.99,40,0.50,'ACTIVE',6,8,1,4.70,'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop',1,'2024-01-29 14:00:00','2024-01-29 14:00:00',NULL,NULL),(121,'Moët & Chandon Champagne','Prestige champagne with exceptional aging potential and complex aromas.','MOET-CHANDON-001',6999.99,10,1.50,'ACTIVE',6,2,1,4.80,'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-29 15:00:00','2024-01-29 15:00:00',NULL,NULL),(122,'Kobe Beef A5','Premium Japanese Kobe beef with exceptional marbling and melt-in-your-mouth texture.','KOBE-BEEF-A5-001',4999.99,3,0.50,'ACTIVE',6,1,1,4.90,'https://images.unsplash.com/photo-1544025162-d76694265947?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544025162-d76694265947?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-29 16:00:00','2024-01-29 16:00:00',NULL,NULL),(123,'White Truffle Oil Premium','White truffle-infused olive oil with intense aroma and authentic Italian origin.','WHITE-TRUFFLE-OIL-001',1299.99,15,0.25,'ACTIVE',6,3,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-29 17:00:00','2024-01-29 17:00:00',NULL,NULL),(124,'Artisan Croissant','Handcrafted butter croissant with 72-hour fermentation and flaky layers.','CROISSANT-001',49.99,50,0.30,'ACTIVE',6,10,1,4.60,'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1509440159596-0249088772ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-01-29 18:00:00','2024-01-29 18:00:00',NULL,NULL),(125,'Nothing Phone 2','Unique smartphone with Glyph interface and transparent design.','NOTHING-PHONE2-001',7999.99,12,0.20,'ACTIVE',5,3,1,4.60,'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&h=600&fit=crop',1,'2024-01-30 09:00:00','2024-01-30 09:00:00',NULL,NULL),(126,'Razer Blade 18','Gaming laptop with 18-inch QHD+ display and RTX 4090 graphics.','RAZER-BLADE18-001',39999.99,3,3.10,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1603302576830-6c6b1a43942c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-30 10:00:00','2024-01-30 10:00:00',NULL,NULL),(127,'Alienware AW3423DW','34-inch QD-OLED gaming monitor with 175Hz refresh rate and curved display.','ALIENWARE-AW34-001',12999.99,8,8.50,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-30 11:00:00','2024-01-30 11:00:00',NULL,NULL),(128,'Logitech MX Master 3S','Premium wireless mouse with MagSpeed scrolling and precision tracking.','LOGITECH-MX3S-001',899.99,25,0.14,'ACTIVE',5,8,1,4.80,'https://images.unsplash.com/photo-1527864550417-7fd91fc1a653?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1527864550417-7fd91fc1a653?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&h=600&fit=crop',1,'2024-01-30 13:00:00','2024-01-30 13:00:00',NULL,NULL),(129,'New Balance 990v6','Premium running shoes with ENCAP midsole and pigskin suede upper.','NB-990V6-001',1299.99,20,0.80,'ACTIVE',5,5,1,4.70,'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop',1,'2024-01-30 14:00:00','2024-01-30 14:00:00',NULL,NULL),(130,'Brooks Ghost 15','Neutral running shoes with DNA LOFT v2 cushioning and engineered mesh.','BROOKS-GHOST15-001',1199.99,18,0.75,'ACTIVE',5,5,1,4.60,'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&h=600&fit=crop',1,'2024-01-30 15:00:00','2024-01-30 15:00:00',NULL,NULL),(131,'Patagonia Nano Puff Jacket','Lightweight synthetic insulation jacket with water-resistant shell.','PATAGONIA-NANO-001',1999.99,25,0.30,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-30 16:00:00','2024-01-30 16:00:00',NULL,NULL),(132,'The North Face Denali Jacket','Fleece jacket with Polartec 300 series insulation and zippered pockets.','TNF-DENALI-001',1499.99,30,0.60,'ACTIVE',5,8,1,4.70,'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1542272604-787c3835535d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-30 17:00:00','2024-01-30 17:00:00',NULL,NULL),(133,'Arc\'teryx Beta AR Jacket','Lightweight hardshell jacket with GORE-TEX technology and helmet-compatible hood.','ARCTERYX-BETA-001',3999.99,12,0.40,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-30 18:00:00','2024-01-30 18:00:00',NULL,NULL),(134,'Weber Genesis II E-335','Premium gas grill with 3 burners and sear station.','WEBER-GENESIS-001',8999.99,8,45.00,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-30 19:00:00','2024-01-30 19:00:00',NULL,NULL),(135,'Traeger Pro 780','Pellet grill with WiFIRE technology and 780 square inches of cooking space.','TRAEGER-PRO780-001',12999.99,6,55.00,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-30 20:00:00','2024-01-30 20:00:00',NULL,NULL),(136,'Breville Barista Express','Semi-automatic espresso machine with built-in grinder and steam wand.','BREVILLE-BARISTA-001',6999.99,10,9.50,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-30 21:00:00','2024-01-30 21:00:00',NULL,NULL),(137,'DeLonghi Magnifica Evo','Fully automatic espresso machine with milk frother and programmable settings.','DELONGHI-MAGNIFICA-001',8999.99,8,12.00,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-30 22:00:00','2024-01-30 22:00:00',NULL,NULL),(138,'Bosch 800 Series Dishwasher','Premium dishwasher with CrystalDry technology and third rack.','BOSCH-800-DISH-001',12999.99,6,35.00,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop',1,'2024-01-30 23:00:00','2024-01-30 23:00:00',NULL,NULL),(139,'Concept2 Model D Rower','Indoor rowing machine with Performance Monitor 5 and adjustable footrests.','CONCEPT2-MODELD-001',9999.99,8,25.00,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-31 09:00:00','2024-01-31 09:00:00',NULL,NULL),(140,'Rogue Fitness R-3 Power Rack','Commercial-grade power rack with safety spotter arms and pull-up bar.','ROGUE-R3-001',15999.99,5,200.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',1,'2024-01-31 10:00:00','2024-01-31 10:00:00',NULL,NULL),(141,'Garmin Forerunner 965','Advanced GPS running watch with AMOLED display and training load focus.','GARMIN-965-001',5999.99,12,0.05,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1544117519-31a4b719223d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544117519-31a4b719223d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&h=600&fit=crop',1,'2024-01-31 11:00:00','2024-01-31 11:00:00',NULL,NULL),(142,'Suunto 9 Peak Pro','Premium multisport watch with titanium case and up to 40-hour battery life.','SUUNTO-9PEAK-001',7999.99,8,0.05,'ACTIVE',5,2,1,4.80,'https://images.unsplash.com/photo-1544117519-31a4b719223d?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544117519-31a4b719223d?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&h=600&fit=crop',1,'2024-01-31 12:00:00','2024-01-31 12:00:00',NULL,NULL),(143,'Osprey Atmos AG 65','Lightweight backpack with Anti-Gravity suspension and 65-liter capacity.','OSPREY-ATMOS-001',2999.99,15,1.80,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=800&h=600&fit=crop',1,'2024-01-31 13:00:00','2024-01-31 13:00:00',NULL,NULL),(144,'Sony WF-1000XM5','Latest wireless earbuds with industry-leading noise cancellation.','SONY-WF1000XM5-001',2999.99,20,0.01,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-31 14:00:00','2024-01-31 14:00:00',NULL,NULL),(145,'Bose QuietComfort Ultra','Premium over-ear headphones with immersive audio and spatial awareness.','BOSE-QC-ULTRA-001',4499.99,12,0.25,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800&h=600&fit=crop',1,'2024-01-31 15:00:00','2024-01-31 15:00:00',NULL,NULL),(146,'HBO Max Premium','Streaming service with HBO originals, Warner Bros movies, and Max exclusives.','HBO-MAX-PREM-001',159.99,1000,0.00,'ACTIVE',5,100,1,4.70,'https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&h=600&fit=crop',1,'2024-01-31 17:00:00','2024-01-31 17:00:00',NULL,NULL),(147,'Foreo Luna 3 Plus','Smart facial cleansing device with T-Sonic pulsations, app connectivity, and additional brush heads.','FOREO-LUNA3-PLUS-001',2499.99,15,0.18,'ACTIVE',5,3,1,4.70,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-31 20:00:00','2024-01-31 20:00:00',NULL,NULL),(148,'Oral-B iO Series 9 Pro','Smart electric toothbrush with AI recognition, 3D tracking, and premium travel case.','ORALB-IO9-PRO-001',1799.99,20,0.25,'ACTIVE',5,5,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-31 21:00:00','2024-01-31 21:00:00',NULL,NULL),(149,'Braun Series 9 Pro','Premium electric razor with 5 synchronized shaving elements.','BRAUN-SERIES9-001',3999.99,15,0.30,'ACTIVE',5,3,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-31 22:00:00','2024-01-31 22:00:00',NULL,NULL),(150,'La Prairie Skin Caviar','Luxury anti-aging cream with caviar extract and cellular complex.','LAPRAIRIE-CAVIAR-001',8999.99,8,0.10,'ACTIVE',5,2,1,4.90,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',1,'2024-01-31 23:00:00','2024-01-31 23:00:00',NULL,NULL),(151,'Rivian R1T','Electric pickup truck with quad-motor AWD and 314-mile range.','RIVIAN-R1T-001',799999.99,2,2600.00,'ACTIVE',5,1,1,4.80,'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-02-01 09:00:00','2024-02-01 09:00:00',NULL,NULL),(152,'Lucid Air Dream Edition','Luxury electric sedan with 520-mile range and 1,111 horsepower.','LUCID-AIR-DREAM-001',1699999.99,1,2200.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1555215695-3004980ad54e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-02-01 10:00:00','2024-02-01 10:00:00',NULL,NULL),(153,'Bentley Continental GT','Luxury grand tourer with W12 engine and handcrafted interior.','BENTLEY-CONTINENTAL-001',2499999.99,1,2244.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1618843479313-40f8afb4b3d8?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-02-01 11:00:00','2024-02-01 11:00:00',NULL,NULL),(154,'Rolls-Royce Phantom','Ultimate luxury sedan with 6.75L V12 engine and starlight headliner.','ROLLS-PHANTOM-001',4999999.99,1,2560.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-02-01 12:00:00','2024-02-01 12:00:00',NULL,NULL),(155,'Bugatti Chiron Super Sport','Hypercar with 1,578 horsepower and 304 mph top speed.','BUGATTI-CHIRON-001',3999999.99,1,1995.00,'ACTIVE',5,1,1,4.90,'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800&h=600&fit=crop',1,'2024-02-01 13:00:00','2024-02-01 13:00:00',NULL,NULL),(156,'Blue Bottle Coffee Subscription','Artisanal coffee subscription with single-origin beans and expert roasting.','BLUEBOTTLE-SUB-001',299.99,100,0.50,'ACTIVE',6,20,1,4.80,'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop',1,'2024-02-01 14:00:00','2024-02-01 14:00:00',NULL,NULL),(157,'Veuve Clicquot La Grande Dame','Prestige champagne with exceptional aging potential and complex aromas.','VEUVE-GRANDE-001',12999.99,5,1.50,'ACTIVE',6,1,1,4.90,'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-02-01 15:00:00','2024-02-01 15:00:00',NULL,NULL),(158,'Matsusaka Beef A5','Premium Japanese Matsusaka beef with exceptional marbling and melt-in-your-mouth texture.','MATSUSAKA-A5-001',7999.99,2,0.50,'ACTIVE',6,1,1,4.90,'https://images.unsplash.com/photo-1544025162-d76694265947?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1544025162-d76694265947?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-02-01 16:00:00','2024-02-01 16:00:00',NULL,NULL),(159,'Alba White Truffle','Fresh white truffle from Alba, Italy with intense aroma and authentic origin.','ALBA-TRUFFLE-001',2999.99,8,0.10,'ACTIVE',6,2,1,4.80,'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1556906781-9a412961c28c?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-02-01 17:00:00','2024-02-01 17:00:00',NULL,NULL),(160,'Pierre Hermé Macarons','Artisanal French macarons with premium ingredients and handcrafted flavors.','PIERRE-HERME-001',199.99,30,0.20,'ACTIVE',6,6,1,4.70,'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400&h=400&fit=crop','https://images.unsplash.com/photo-1509440159596-0249088772ff?w=800&h=600&fit=crop,https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=800&h=600&fit=crop',1,'2024-02-01 18:00:00','2024-02-01 18:00:00',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PENDING','APPROVED','REJECTED','COMPLETED') COLLATE utf8mb4_unicode_ci DEFAULT 'PENDING',
  `request_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_at` timestamp NULL DEFAULT NULL,
  `refunded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `returns_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (1,1,5,'Product not as described','APPROVED','2024-01-28 10:00:00','2024-01-28 14:00:00','2024-01-29 09:00:00','2024-01-28 10:00:00'),(2,1,5,'Product not as described','APPROVED','2024-01-28 10:00:00','2024-01-28 14:00:00','2024-01-29 09:00:00','2024-01-28 10:00:00'),(3,2,23,'Item arrived damaged','APPROVED','2024-01-30 11:10:00','2024-01-30 16:00:00','2024-01-31 10:00:00','2024-01-30 11:10:00'),(4,3,101,'Wrong size delivered','PENDING','2024-02-01 09:45:00',NULL,NULL,'2024-02-01 09:45:00'),(5,7,87,'Received different product','REJECTED','2024-02-02 12:00:00','2024-02-02 17:00:00',NULL,'2024-02-02 12:00:00'),(6,8,15,'Packaging was open','APPROVED','2024-02-03 08:30:00','2024-02-03 12:00:00','2024-02-04 09:00:00','2024-02-03 08:30:00'),(7,9,65,'Duplicate order','PENDING','2024-02-04 10:15:00',NULL,NULL,'2024-02-04 10:15:00'),(8,1,39,'Late delivery','APPROVED','2024-02-05 14:10:00','2024-02-05 17:30:00','2024-02-06 10:00:00','2024-02-05 14:10:00'),(9,2,88,'Not working on arrival','REJECTED','2024-02-06 13:50:00','2024-02-06 16:20:00',NULL,'2024-02-06 13:50:00'),(10,3,11,'Product quality was poor','APPROVED','2024-02-07 11:00:00','2024-02-07 14:30:00','2024-02-08 09:00:00','2024-02-07 11:00:00'),(11,7,73,'Wrong color received','PENDING','2024-02-08 09:10:00',NULL,NULL,'2024-02-08 09:10:00'),(12,8,132,'Faulty screen','APPROVED','2024-02-09 15:00:00','2024-02-09 17:00:00','2024-02-10 11:00:00','2024-02-09 15:00:00'),(13,9,141,'Damaged casing','PENDING','2024-02-10 10:25:00',NULL,NULL,'2024-02-10 10:25:00'),(14,1,53,'Not compatible with my device','REJECTED','2024-02-11 08:00:00','2024-02-11 13:00:00',NULL,'2024-02-11 08:00:00'),(15,2,21,'Duplicate item received','APPROVED','2024-02-12 12:45:00','2024-02-12 16:30:00','2024-02-13 10:15:00','2024-02-12 12:45:00'),(16,3,142,'Expired item','REJECTED','2024-02-13 11:10:00','2024-02-13 15:00:00',NULL,'2024-02-13 11:10:00'),(17,7,66,'Not sealed','APPROVED','2024-02-14 13:35:00','2024-02-14 17:00:00','2024-02-15 08:00:00','2024-02-14 13:35:00'),(18,8,12,'Too small','PENDING','2024-02-15 10:20:00',NULL,NULL,'2024-02-15 10:20:00'),(19,9,103,'Poor packaging','REJECTED','2024-02-16 09:45:00','2024-02-16 12:30:00',NULL,'2024-02-16 09:45:00'),(20,1,45,'Wrong language version','APPROVED','2024-02-17 14:00:00','2024-02-17 18:00:00','2024-02-18 09:00:00','2024-02-17 14:00:00'),(21,2,114,'Unwanted gift','APPROVED','2024-02-18 12:00:00','2024-02-18 16:00:00','2024-02-19 10:00:00','2024-02-18 12:00:00'),(22,3,29,'Wrong model received','PENDING','2024-02-19 08:00:00',NULL,NULL,'2024-02-19 08:00:00'),(23,7,94,'Accessory missing','APPROVED','2024-02-20 15:00:00','2024-02-20 18:00:00','2024-02-21 11:00:00','2024-02-20 15:00:00'),(24,8,106,'Customer changed mind','REJECTED','2024-02-21 09:30:00','2024-02-21 12:00:00',NULL,'2024-02-21 09:30:00'),(25,9,110,'Delivery delay too long','PENDING','2024-02-22 10:20:00',NULL,NULL,'2024-02-22 10:20:00'),(26,1,7,'Used item received','APPROVED','2024-02-23 11:15:00','2024-02-23 14:30:00','2024-02-24 09:00:00','2024-02-23 11:15:00'),(27,2,139,'Did not meet expectations','PENDING','2024-02-24 13:45:00',NULL,NULL,'2024-02-24 13:45:00'),(28,3,111,'Overpriced item','REJECTED','2024-02-25 08:40:00','2024-02-25 10:30:00',NULL,'2024-02-25 08:40:00'),(29,7,78,'Missing pieces','APPROVED','2024-02-26 10:10:00','2024-02-26 14:00:00','2024-02-27 09:30:00','2024-02-26 10:10:00'),(30,8,38,'Software issues','APPROVED','2024-02-27 12:00:00','2024-02-27 16:00:00','2024-02-28 08:00:00','2024-02-27 12:00:00'),(31,9,102,'Defective buttons','PENDING','2024-02-28 14:30:00',NULL,NULL,'2024-02-28 14:30:00'),(32,1,17,'Wrong color and size','REJECTED','2024-02-29 10:00:00','2024-02-29 13:00:00',NULL,'2024-02-29 10:00:00'),(33,2,130,'Arrived after event','PENDING','2024-03-01 09:10:00',NULL,NULL,'2024-03-01 09:10:00'),(34,3,143,'Incorrect pricing','APPROVED','2024-03-02 11:30:00','2024-03-02 15:00:00','2024-03-03 08:30:00','2024-03-02 11:30:00'),(35,7,4,'Poor sound quality','REJECTED','2024-03-03 12:00:00','2024-03-03 14:30:00',NULL,'2024-03-03 12:00:00'),(36,8,120,'Does not power on','APPROVED','2024-03-04 09:00:00','2024-03-04 11:30:00','2024-03-05 10:00:00','2024-03-04 09:00:00'),(37,9,48,'Wrong accessory included','PENDING','2024-03-05 14:45:00',NULL,NULL,'2024-03-05 14:45:00'),(38,1,84,'Broken screen protector','APPROVED','2024-03-06 13:10:00','2024-03-06 17:00:00','2024-03-07 09:00:00','2024-03-06 13:10:00'),(39,2,10,'No user manual included','REJECTED','2024-03-07 08:00:00','2024-03-07 12:30:00',NULL,'2024-03-07 08:00:00'),(40,3,116,'Duplicate order placed','APPROVED','2024-03-08 12:30:00','2024-03-08 15:00:00','2024-03-09 08:30:00','2024-03-08 12:30:00'),(41,7,51,'Cracked packaging','PENDING','2024-03-09 14:00:00',NULL,NULL,'2024-03-09 14:00:00'),(42,8,91,'Not same as shown online','REJECTED','2024-03-10 10:20:00','2024-03-10 12:00:00',NULL,'2024-03-10 10:20:00'),(43,9,25,'Color fading after 1 use','APPROVED','2024-03-11 09:00:00','2024-03-11 11:45:00','2024-03-12 10:00:00','2024-03-11 09:00:00'),(44,1,36,'Batteries not included','PENDING','2024-03-12 13:15:00',NULL,NULL,'2024-03-12 13:15:00'),(45,2,13,'Wrong adapter pin','APPROVED','2024-03-13 10:40:00','2024-03-13 12:45:00','2024-03-14 08:30:00','2024-03-13 10:40:00'),(46,3,49,'Poor speaker quality','REJECTED','2024-03-14 14:20:00','2024-03-14 16:00:00',NULL,'2024-03-14 14:20:00');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('ACTIVE','DELETED','HIDDEN') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `vendor_reply` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product reviews and ratings from customers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5,'Excellent phone! The camera quality is amazing and battery life is great.','2024-01-25 10:00:00','ACTIVE',NULL,NULL),(2,1,3,4,'Great Jollof rice mix. Tastes authentic and easy to prepare.','2024-01-25 10:30:00','ACTIVE',NULL,NULL),(3,2,2,5,'MacBook Air is perfect for my work. Fast and reliable.','2024-01-26 14:00:00','ACTIVE',NULL,NULL),(4,3,4,4,'Good wireless headphones with decent noise cancellation.','2024-01-27 16:00:00','ACTIVE',NULL,NULL),(5,3,6,5,'Natural shea butter works wonders for my skin. Highly recommended!','2024-01-27 16:30:00','ACTIVE',NULL,NULL),(6,1,5,4,'Amazing TV quality! The picture is crystal clear.','2024-01-28 09:00:00','ACTIVE',NULL,NULL),(7,2,7,5,'Great coffee beans. Rich flavor and aroma.','2024-01-28 15:00:00','ACTIVE',NULL,NULL),(8,3,8,4,'Powerful gaming laptop. Handles all my games perfectly.','2024-01-29 11:00:00','ACTIVE',NULL,NULL),(9,1,9,5,'Delicious chocolate bars. Perfect gift for friends.','2024-01-29 16:00:00','ACTIVE',NULL,NULL),(10,2,10,4,'Outstanding smartphone. Best Samsung I\'ve ever owned.','2024-01-30 10:00:00','ACTIVE',NULL,NULL),(11,3,11,5,'Comfortable running shoes. Great for daily workouts.','2024-01-30 14:00:00','ACTIVE',NULL,NULL),(12,1,12,4,'Premium running shoes. Excellent cushioning and support.','2024-01-31 08:00:00','ACTIVE',NULL,NULL),(13,2,13,5,'Great noise cancellation. Perfect for travel.','2024-01-31 12:00:00','ACTIVE',NULL,NULL),(14,3,14,4,'Amazing smartwatch. Health tracking is very accurate.','2024-01-31 16:00:00','ACTIVE',NULL,NULL),(15,1,15,5,'Professional camera. Takes stunning photos.','2024-02-01 09:00:00','ACTIVE',NULL,NULL),(16,2,16,4,'Ultra-thin laptop with excellent performance.','2024-02-01 13:00:00','ACTIVE',NULL,NULL),(17,3,17,5,'Beautiful TV with amazing picture quality.','2024-02-01 17:00:00','ACTIVE',NULL,NULL),(18,1,18,4,'Best gaming console ever. Graphics are incredible.','2024-02-02 10:00:00','ACTIVE',NULL,NULL),(19,2,19,5,'Great Xbox. Backward compatibility is amazing.','2024-02-02 14:00:00','ACTIVE',NULL,NULL),(20,3,20,4,'Perfect portable gaming device. OLED screen is beautiful.','2024-02-02 18:00:00','ACTIVE',NULL,NULL),(21,1,21,5,'Excellent tablet for creative work. M2 chip is powerful.','2024-02-03 11:00:00','ACTIVE',NULL,NULL),(22,2,22,4,'Great Android tablet. S Pen works perfectly.','2024-02-03 15:00:00','ACTIVE',NULL,NULL),(23,3,23,5,'Amazing action camera. Perfect for adventures.','2024-02-03 19:00:00','ACTIVE',NULL,NULL),(24,1,24,4,'Great drone for aerial photography.','2024-02-04 12:00:00','ACTIVE',NULL,NULL),(25,2,25,5,'Incredible drone. Aerial photography is stunning.','2024-02-04 16:00:00','ACTIVE',NULL,NULL),(26,3,26,4,'Good fitness tracker. Battery life is impressive.','2024-02-04 20:00:00','ACTIVE',NULL,NULL),(27,1,27,5,'Premium GPS watch. Perfect for outdoor activities.','2024-02-05 13:00:00','ACTIVE',NULL,NULL),(28,2,28,4,'Excellent headphones. Sound quality is outstanding.','2024-02-05 17:00:00','ACTIVE',NULL,NULL),(29,3,29,5,'Great portable speaker. Perfect for parties.','2024-02-05 21:00:00','ACTIVE',NULL,NULL),(30,1,30,4,'Nice e-reader. Easy on the eyes.','2024-02-06 14:00:00','ACTIVE',NULL,NULL),(31,2,31,5,'Beautiful Kente cloth! Perfect for my traditional ceremony.','2024-02-07 10:00:00','ACTIVE',NULL,NULL),(32,3,32,4,'Lovely Adinkra symbols. Great cultural significance.','2024-02-07 14:00:00','ACTIVE',NULL,NULL),(33,1,33,5,'Stunning beaded jewelry. Handcrafted with care.','2024-02-07 16:00:00','ACTIVE',NULL,NULL),(34,2,34,4,'Traditional wooden masks. Perfect for home decoration.','2024-02-08 09:00:00','ACTIVE',NULL,NULL),(35,3,35,5,'Beautiful pottery. Each piece is unique.','2024-02-08 12:00:00','ACTIVE',NULL,NULL),(36,1,36,4,'Gorgeous batik fabric. Perfect for clothing.','2024-02-08 15:00:00','ACTIVE',NULL,NULL),(37,2,37,5,'Authentic palm wine. Refreshing traditional drink.','2024-02-09 11:00:00','ACTIVE',NULL,NULL),(38,3,38,4,'Great groundnut soup mix. Tastes just like home.','2024-02-09 14:00:00','ACTIVE',NULL,NULL),(39,1,39,5,'Perfect banku mix. Easy to prepare and delicious.','2024-02-09 17:00:00','ACTIVE',NULL,NULL),(40,2,40,4,'Excellent kenkey mix. Traditional taste preserved.','2024-02-10 10:00:00','ACTIVE',NULL,NULL),(41,3,41,5,'Pure palm oil. Essential for Ghanaian cooking.','2024-02-10 13:00:00','ACTIVE',NULL,NULL),(42,1,42,4,'Natural coconut oil. Great for cooking and beauty.','2024-02-10 16:00:00','ACTIVE',NULL,NULL),(43,2,43,5,'Pure Ghanaian honey. Rich and natural flavor.','2024-02-11 12:00:00','ACTIVE',NULL,NULL),(44,3,44,4,'Traditional black soap. Great for skin care.','2024-02-11 15:00:00','ACTIVE',NULL,NULL),(45,1,45,5,'Natural aloe vera gel. Soothing and moisturizing.','2024-02-11 18:00:00','ACTIVE',NULL,NULL),(46,2,46,4,'Pure neem oil. Traditional remedy works wonders.','2024-02-12 11:00:00','ACTIVE',NULL,NULL),(47,3,47,5,'Excellent moringa powder. Superfood with great benefits.','2024-02-12 14:00:00','ACTIVE',NULL,NULL),(48,1,48,4,'Natural baobab powder. Rich in vitamin C.','2024-02-12 17:00:00','ACTIVE',NULL,NULL),(49,2,49,5,'Refreshing hibiscus tea. Naturally caffeine-free.','2024-02-13 10:00:00','ACTIVE',NULL,NULL),(50,3,50,4,'Warming ginger tea. Perfect for cold days.','2024-02-13 13:00:00','ACTIVE',NULL,NULL),(51,1,51,5,'Premium cashew nuts. Perfect for snacking.','2024-02-13 16:00:00','ACTIVE',NULL,NULL),(52,2,52,4,'Crispy plantain chips. Traditional snack taste.','2024-02-14 12:00:00','ACTIVE',NULL,NULL),(53,3,53,5,'Quality yam flour. Makes perfect fufu.','2024-02-14 15:00:00','ACTIVE',NULL,NULL),(54,1,54,4,'Pure cassava flour. Gluten-free and nutritious.','2024-02-14 18:00:00','ACTIVE',NULL,NULL),(55,2,55,5,'Rich cocoa powder. Perfect for baking.','2024-02-15 11:00:00','ACTIVE',NULL,NULL),(56,3,56,4,'Natural peanut butter. No additives, pure taste.','2024-02-15 14:00:00','ACTIVE',NULL,NULL),(57,1,57,5,'Premium sesame seeds. Perfect for cooking.','2024-02-15 17:00:00','ACTIVE',NULL,NULL),(58,2,58,4,'Sweet dried mango. Natural tropical snack.','2024-02-16 10:00:00','ACTIVE',NULL,NULL),(59,3,59,5,'Delicious pineapple jam. Sweet and tangy.','2024-02-16 13:00:00','ACTIVE',NULL,NULL),(60,1,60,4,'Spicy papaya chutney. Perfect condiment.','2024-02-16 16:00:00','ACTIVE',NULL,NULL),(61,7,61,5,'Fantastic wireless charger. Charges my phone super fast!','2024-02-16 19:00:00','ACTIVE',NULL,NULL),(62,8,62,4,'Comfortable yoga mat. Great grip and cushioning.','2024-02-16 22:00:00','ACTIVE',NULL,NULL),(63,9,63,5,'Amazing blender. Perfect for smoothies and soups.','2024-02-17 09:00:00','ACTIVE',NULL,NULL),(64,1,64,4,'Reliable external hard drive. Plenty of storage space.','2024-02-17 12:00:00','ACTIVE',NULL,NULL),(65,2,65,5,'Stylish backpack. Very durable and spacious.','2024-02-17 15:00:00','ACTIVE',NULL,NULL),(66,3,66,4,'High-quality earbuds. Sound is crisp and clear.','2024-02-17 18:00:00','ACTIVE',NULL,NULL),(67,7,67,5,'Great air fryer. Makes crispy food with less oil.','2024-02-17 21:00:00','ACTIVE',NULL,NULL),(68,8,68,4,'Nice coffee maker. Brews a perfect cup every time.','2024-02-18 10:00:00','ACTIVE',NULL,NULL),(69,9,69,5,'Excellent vacuum cleaner. Powerful suction.','2024-02-18 13:00:00','ACTIVE',NULL,NULL),(70,1,70,4,'Solid smart home hub. Easy to set up.','2024-02-18 16:00:00','ACTIVE',NULL,NULL),(71,2,71,5,'Beautiful scented candles. Long-lasting fragrance.','2024-02-18 19:00:00','ACTIVE',NULL,NULL),(72,3,72,4,'Great electric kettle. Boils water quickly.','2024-02-18 22:00:00','ACTIVE',NULL,NULL),(73,7,73,5,'Superb fitness equipment. Perfect for home workouts.','2024-02-19 09:00:00','ACTIVE',NULL,NULL),(74,8,74,4,'Nice kitchen knives. Sharp and well-balanced.','2024-02-19 12:00:00','ACTIVE',NULL,NULL),(75,9,75,5,'Amazing smart thermostat. Saves energy efficiently.','2024-02-19 15:00:00','ACTIVE',NULL,NULL),(76,1,76,4,'Great portable projector. Bright and clear display.','2024-02-19 18:00:00','ACTIVE',NULL,NULL),(77,2,77,5,'High-quality leather wallet. Stylish and durable.','2024-02-19 21:00:00','ACTIVE',NULL,NULL),(78,3,78,4,'Nice wireless mouse. Smooth and responsive.','2024-02-20 10:00:00','ACTIVE',NULL,NULL),(79,7,79,5,'Excellent espresso machine. Barista-quality coffee at home.','2024-02-20 13:00:00','ACTIVE',NULL,NULL),(80,8,80,4,'Great reusable water bottle. Keeps drinks cold for hours.','2024-02-20 16:00:00','ACTIVE',NULL,NULL),(81,9,81,5,'Fantastic smart bulb. Easy to control with app.','2024-02-20 19:00:00','ACTIVE',NULL,NULL),(82,1,82,4,'Nice noise-canceling earphones. Great for commuting.','2024-02-20 22:00:00','ACTIVE',NULL,NULL),(83,2,83,5,'Superb instant pot. Makes cooking so much easier.','2024-02-21 09:00:00','ACTIVE',NULL,NULL),(84,3,84,4,'Great laptop stand. Improves ergonomics perfectly.','2024-02-21 12:00:00','ACTIVE',NULL,NULL),(85,7,85,5,'Amazing electric toothbrush. My teeth feel so clean!','2024-02-21 15:00:00','ACTIVE',NULL,NULL),(86,8,86,4,'Nice cast iron skillet. Cooks food evenly.','2024-02-21 18:00:00','ACTIVE',NULL,NULL),(87,9,87,5,'Fantastic air purifier. Noticeable air quality improvement.','2024-02-21 21:00:00','ACTIVE',NULL,NULL),(88,1,88,4,'Great wireless keyboard. Typing feels smooth.','2024-02-22 10:00:00','ACTIVE',NULL,NULL),(89,2,89,5,'Excellent standing desk. Adjustable and sturdy.','2024-02-22 13:00:00','ACTIVE',NULL,NULL),(90,3,90,4,'Nice smart scale. Tracks weight accurately.','2024-02-22 16:00:00','ACTIVE',NULL,NULL),(91,7,91,5,'Superb noise-canceling headphones. Perfect for focus.','2024-02-22 19:00:00','ACTIVE',NULL,NULL),(92,8,92,4,'Great travel adapter. Works in multiple countries.','2024-02-22 22:00:00','ACTIVE',NULL,NULL),(93,9,93,5,'Amazing robot vacuum. Cleans floors effortlessly.','2024-02-23 09:00:00','ACTIVE',NULL,NULL),(94,1,94,4,'Nice smart doorbell. Clear video and easy setup.','2024-02-23 12:00:00','ACTIVE',NULL,NULL),(95,2,95,5,'Fantastic food processor. Chops and blends perfectly.','2024-02-23 15:00:00','ACTIVE',NULL,NULL),(96,3,96,4,'Great wireless speaker. Sound fills the room.','2024-02-23 18:00:00','ACTIVE',NULL,NULL),(97,7,97,5,'Excellent fitness bike. Smooth and quiet ride.','2024-02-23 21:00:00','ACTIVE',NULL,NULL),(98,8,98,4,'Nice insulated lunch bag. Keeps food fresh.','2024-02-24 10:00:00','ACTIVE',NULL,NULL),(99,9,99,5,'Amazing smart plug. Controls devices easily.','2024-02-24 13:00:00','ACTIVE',NULL,NULL),(100,1,100,4,'Great electric blanket. Cozy and warm.','2024-02-24 16:00:00','ACTIVE',NULL,NULL),(101,2,101,5,'Fantastic humidifier. Improves air quality.','2024-02-24 19:00:00','ACTIVE',NULL,NULL),(102,3,102,4,'Nice desk lamp. Adjustable brightness is great.','2024-02-24 22:00:00','ACTIVE',NULL,NULL),(103,7,103,5,'Superb gaming chair. Comfortable for long sessions.','2024-02-25 09:00:00','ACTIVE',NULL,NULL),(104,8,104,4,'Great portable charger. Charges devices quickly.','2024-02-25 12:00:00','ACTIVE',NULL,NULL),(105,9,105,5,'Amazing smart TV. Streaming apps work flawlessly.','2024-02-25 15:00:00','ACTIVE',NULL,NULL),(106,1,106,4,'Nice wireless router. Strong and stable signal.','2024-02-25 18:00:00','ACTIVE',NULL,NULL),(107,2,107,5,'Excellent cookware set. Non-stick and durable.','2024-02-25 21:00:00','ACTIVE',NULL,NULL),(108,3,108,4,'Great smart lock. Secure and easy to use.','2024-02-26 10:00:00','ACTIVE',NULL,NULL),(109,7,109,5,'Fantastic pressure cooker. Meals cook so fast!','2024-02-26 13:00:00','ACTIVE',NULL,NULL),(110,8,110,4,'Nice fitness band. Tracks steps accurately.','2024-02-26 16:00:00','ACTIVE',NULL,NULL),(111,9,111,5,'Amazing massage gun. Relieves muscle soreness.','2024-02-26 19:00:00','ACTIVE',NULL,NULL),(112,1,112,4,'Great dash cam. Clear footage day and night.','2024-02-26 22:00:00','ACTIVE',NULL,NULL),(113,2,113,5,'Excellent pet camera. Monitors my dog perfectly.','2024-02-27 09:00:00','ACTIVE',NULL,NULL),(114,3,114,4,'Nice camping tent. Spacious and easy to set up.','2024-02-27 12:00:00','ACTIVE',NULL,NULL),(115,7,115,5,'Fantastic electric scooter. Smooth and fast ride.','2024-02-27 15:00:00','ACTIVE',NULL,NULL),(116,8,116,4,'Great sleeping bag. Warm and comfortable.','2024-02-27 18:00:00','ACTIVE',NULL,NULL),(117,9,117,5,'Amazing hiking boots. Great traction and support.','2024-02-27 21:00:00','ACTIVE',NULL,NULL),(118,1,118,4,'Nice binoculars. Clear and sharp visuals.','2024-02-28 10:00:00','ACTIVE',NULL,NULL),(119,2,119,5,'Excellent camping stove. Cooks food evenly.','2024-02-28 13:00:00','ACTIVE',NULL,NULL),(120,3,120,4,'Great portable hammock. Perfect for outdoor relaxation.','2024-02-28 16:00:00','ACTIVE',NULL,NULL),(121,7,121,5,'Fantastic bike helmet. Lightweight and safe.','2024-02-28 19:00:00','ACTIVE',NULL,NULL),(122,8,122,4,'Nice yoga blocks. Sturdy and supportive.','2024-02-28 22:00:00','ACTIVE',NULL,NULL),(123,9,123,5,'Amazing rowing machine. Great full-body workout.','2024-03-01 09:00:00','ACTIVE',NULL,NULL),(124,1,124,4,'Great resistance bands. Perfect for home exercise.','2024-03-01 12:00:00','ACTIVE',NULL,NULL),(125,2,125,5,'Excellent dumbbell set. Adjustable and compact.','2024-03-01 15:00:00','ACTIVE',NULL,NULL),(126,3,126,4,'Nice jump rope. Smooth and tangle-free.','2024-03-01 18:00:00','ACTIVE',NULL,NULL),(127,7,127,5,'Fantastic treadmill. Quiet and sturdy.','2024-03-01 21:00:00','ACTIVE',NULL,NULL),(128,8,128,4,'Great kettlebell. Perfect for strength training.','2024-03-02 10:00:00','ACTIVE',NULL,NULL),(129,9,129,5,'Amazing yoga wheel. Helps with flexibility.','2024-03-02 13:00:00','ACTIVE',NULL,NULL),(130,1,130,4,'Nice massage chair. Very relaxing after work.','2024-03-02 16:00:00','ACTIVE',NULL,NULL),(131,2,131,5,'Excellent juicer. Extracts juice efficiently.','2024-03-02 19:00:00','ACTIVE',NULL,NULL),(132,3,132,4,'Great toaster oven. Versatile and compact.','2024-03-02 22:00:00','ACTIVE',NULL,NULL),(133,7,133,5,'Fantastic stand mixer. Perfect for baking.','2024-03-03 09:00:00','ACTIVE',NULL,NULL),(134,8,134,4,'Nice waffle maker. Makes crispy waffles.','2024-03-03 12:00:00','ACTIVE',NULL,NULL),(135,9,135,5,'Amazing slow cooker. Meals taste amazing.','2024-03-03 15:00:00','ACTIVE',NULL,NULL),(136,1,136,4,'Great rice cooker. Fluffy rice every time.','2024-03-03 18:00:00','ACTIVE',NULL,NULL),(137,2,137,5,'Excellent sous vide machine. Precise cooking.','2024-03-03 21:00:00','ACTIVE',NULL,NULL),(138,3,138,4,'Nice bread maker. Fresh bread daily.','2024-03-04 10:00:00','ACTIVE',NULL,NULL),(139,7,139,5,'Fantastic ice cream maker. Creamy results.','2024-03-04 13:00:00','ACTIVE',NULL,NULL),(140,8,140,4,'Great popcorn maker. Perfect movie nights.','2024-03-04 16:00:00','ACTIVE',NULL,NULL),(141,9,141,5,'Amazing sewing machine. Easy to use.','2024-03-04 19:00:00','ACTIVE',NULL,NULL),(142,1,142,4,'Nice knitting needles. Smooth and durable.','2024-03-04 22:00:00','ACTIVE',NULL,NULL),(143,2,143,5,'Excellent embroidery kit. Great for beginners.','2024-03-05 09:00:00','ACTIVE',NULL,NULL),(144,3,144,4,'Great paint set. Vibrant colors for art.','2024-03-05 12:00:00','ACTIVE',NULL,NULL),(145,7,145,5,'Fantastic sketchbook. Perfect for drawing.','2024-03-05 15:00:00','ACTIVE',NULL,NULL),(146,8,146,4,'Nice calligraphy pens. Smooth ink flow.','2024-03-05 18:00:00','ACTIVE',NULL,NULL),(147,9,147,5,'Amazing watercolor set. Beautiful color blending.','2024-03-05 21:00:00','ACTIVE',NULL,NULL),(148,1,148,4,'Great acrylic paints. Vibrant and long-lasting.','2024-03-06 10:00:00','ACTIVE',NULL,NULL),(149,2,149,5,'Excellent craft scissors. Precise and sharp.','2024-03-06 13:00:00','ACTIVE',NULL,NULL),(150,3,150,4,'Nice clay modeling kit. Fun for all ages.','2024-03-06 16:00:00','ACTIVE',NULL,NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_info`
--

DROP TABLE IF EXISTS `shipping_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_fee` decimal(10,2) DEFAULT NULL,
  `is_express` tinyint(1) DEFAULT '0',
  `delivered_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `shipping_info_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_info`
--

LOCK TABLES `shipping_info` WRITE;
/*!40000 ALTER TABLE `shipping_info` DISABLE KEYS */;
INSERT INTO `shipping_info` VALUES (1,1,'123 High Street, Accra, Ghana','Accra',50.00,0,'2024-01-22 14:30:00'),(2,2,'456 Cultural Road, Kumasi, Ghana','Kumasi',75.00,1,NULL),(3,3,'789 Market Square, Tamale, Ghana','Tamale',60.00,0,NULL),(4,4,'123 High Street, Accra, Ghana','Accra',50.00,0,NULL),(5,5,'456 Cultural Road, Kumasi, Ghana','Kumasi',75.00,1,NULL),(6,6,'789 Market Square, Tamale, Ghana','Tamale',60.00,0,NULL),(7,7,'123 High Street, Accra, Ghana','Accra',50.00,0,'2024-01-29 14:00:00'),(8,8,'456 Cultural Road, Kumasi, Ghana','Kumasi',75.00,1,NULL),(9,9,'789 Market Square, Tamale, Ghana','Tamale',60.00,0,NULL),(10,10,'123 High Street, Accra, Ghana','Accra',50.00,0,NULL),(11,1,'123 High Street, Accra, Ghana','Accra',50.00,0,'2024-01-22 14:30:00'),(12,2,'456 Cultural Road, Kumasi, Ghana','Kumasi',75.00,1,NULL),(13,3,'789 Market Square, Tamale, Ghana','Tamale',60.00,0,NULL),(14,4,'Plot 12, Adenta, Accra, Ghana','Accra',55.00,0,NULL),(15,5,'Block C, Suame Magazine, Kumasi, Ghana','Kumasi',70.00,1,NULL),(16,6,'Main Street, Tamale Central, Ghana','Tamale',65.00,0,NULL),(17,7,'No. 5 Dansoman Link, Accra, Ghana','Accra',52.00,0,'2024-01-29 14:00:00'),(18,8,'Asafo Interchange, Kumasi, Ghana','Kumasi',78.00,1,NULL),(19,9,'Lamashegu Road, Tamale, Ghana','Tamale',62.00,0,NULL),(20,10,'Ring Road, Accra, Ghana','Accra',50.00,0,NULL),(21,11,'Nhyiaeso Lane, Kumasi, Ghana','Kumasi',75.00,1,NULL),(22,12,'Sagnarigu New Site, Tamale, Ghana','Tamale',60.00,0,NULL),(23,13,'East Legon, Accra, Ghana','Accra',55.00,1,NULL),(24,14,'Manhyia Palace Road, Kumasi, Ghana','Kumasi',70.00,0,'2024-01-30 11:15:00'),(25,15,'Tamale Teaching Hospital Area, Ghana','Tamale',65.00,0,NULL),(26,16,'Spintex Road, Accra, Ghana','Accra',50.00,0,'2024-02-01 09:00:00'),(27,17,'Kejetia Market Area, Kumasi, Ghana','Kumasi',80.00,1,NULL),(28,18,'Gukpegu Extension, Tamale, Ghana','Tamale',60.00,0,NULL),(29,19,'Osu Oxford Street, Accra, Ghana','Accra',55.00,0,NULL),(30,20,'Ahodwo Roundabout, Kumasi, Ghana','Kumasi',75.00,1,'2024-02-02 13:45:00'),(31,21,'Tamale Airport Road, Ghana','Tamale',65.00,0,NULL),(32,22,'Darkuman Junction, Accra, Ghana','Accra',52.00,0,NULL),(33,23,'Santasi Road, Kumasi, Ghana','Kumasi',72.00,1,NULL),(34,24,'Fuo Estate, Tamale, Ghana','Tamale',62.00,0,'2024-02-03 10:20:00'),(35,25,'Labone Crescent, Accra, Ghana','Accra',50.00,1,NULL),(36,26,'Amakom Main Street, Kumasi, Ghana','Kumasi',70.00,0,NULL),(37,27,'Zujung Area, Tamale, Ghana','Tamale',60.00,0,NULL),(38,28,'Dzorwulu Street, Accra, Ghana','Accra',55.00,0,NULL),(39,29,'Ayigya Street, Kumasi, Ghana','Kumasi',78.00,1,NULL),(40,30,'Kalpohin Area, Tamale, Ghana','Tamale',64.00,0,NULL),(41,31,'Kaneshie First Light, Accra, Ghana','Accra',50.00,1,NULL),(42,32,'KNUST Campus, Kumasi, Ghana','Kumasi',75.00,0,NULL),(43,33,'Tamale Polytechnic Road, Ghana','Tamale',60.00,0,NULL),(44,34,'Tema Community 1, Accra, Ghana','Accra',53.00,0,NULL),(45,35,'Kwadaso Area, Kumasi, Ghana','Kumasi',72.00,1,NULL),(46,36,'Tamale Central Hospital Area, Ghana','Tamale',66.00,0,'2024-02-04 12:30:00'),(47,37,'Lapaz Highway, Accra, Ghana','Accra',51.00,0,NULL),(48,38,'Bantama High Street, Kumasi, Ghana','Kumasi',74.00,1,NULL),(49,39,'Choggu Yapalsi, Tamale, Ghana','Tamale',61.00,0,NULL),(50,40,'Ashaley Botwe, Accra, Ghana','Accra',52.00,0,NULL),(51,41,'Tech Junction, Kumasi, Ghana','Kumasi',76.00,1,'2024-02-05 14:10:00'),(52,42,'Lamakara Area, Tamale, Ghana','Tamale',60.00,0,NULL),(53,43,'Teshie Road, Accra, Ghana','Accra',55.00,0,NULL),(54,44,'Asokwa Roundabout, Kumasi, Ghana','Kumasi',77.00,1,NULL),(55,45,'Tamale Nyohini Area, Ghana','Tamale',63.00,0,NULL),(56,46,'Airport Residential, Accra, Ghana','Accra',54.00,1,'2024-02-06 11:45:00'),(57,47,'Asokore Mampong, Kumasi, Ghana','Kumasi',79.00,0,NULL),(58,48,'Tamale Aboabo Area, Ghana','Tamale',65.00,0,NULL),(59,49,'Haatso, Accra, Ghana','Accra',50.00,0,NULL),(60,50,'Patasi Estates, Kumasi, Ghana','Kumasi',70.00,1,'2024-02-06 15:30:00');
/*!40000 ALTER TABLE `shipping_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `business_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKalvyn5lr3l2wppuh4qmf8dtk9` (`business_id`),
  CONSTRAINT `FKlseh9ud8svi17v2in1hakf5v7` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_messages`
--

DROP TABLE IF EXISTS `support_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint DEFAULT NULL,
  `sender_id` bigint DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `attachment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `sender_id` (`sender_id`),
  CONSTRAINT `support_messages_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `support_messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_messages`
--

LOCK TABLES `support_messages` WRITE;
/*!40000 ALTER TABLE `support_messages` DISABLE KEYS */;
INSERT INTO `support_messages` VALUES (1,1,1,'My order was supposed to be delivered yesterday but I haven\'t received it yet.',NULL,'2024-01-24 10:00:00'),(2,1,4,'We apologize for the delay. Your order has been dispatched and will be delivered today.',NULL,'2024-01-24 11:00:00'),(3,1,1,'Thank you! I received it today.',NULL,'2024-01-25 14:00:00'),(4,2,2,'The product I received has some quality issues. Can I get a replacement?',NULL,'2024-01-26 15:30:00'),(5,3,3,'My payment failed but money was deducted from my account.',NULL,'2024-01-27 11:00:00'),(6,3,4,'We will investigate this issue and refund your money within 24 hours.',NULL,'2024-01-27 12:00:00'),(7,3,3,'Thank you for the quick response.',NULL,'2024-01-27 14:00:00'),(8,4,1,'I received a different item than what I ordered. Can you help?',NULL,'2024-01-28 16:30:00'),(9,5,2,'My delivery is taking longer than expected. What\'s the status?',NULL,'2024-01-29 09:15:00'),(10,5,4,'We apologize for the delay. Your order will be delivered by tomorrow.',NULL,'2024-01-29 10:00:00'),(11,5,2,'Great, thank you for the update.',NULL,'2024-01-30 12:00:00'),(12,6,3,'I want to return an item. How do I proceed?',NULL,'2024-01-30 13:45:00'),(13,7,1,'I need information about my refund status.',NULL,'2024-01-31 10:20:00'),(14,7,4,'Your refund has been processed and will be credited within 3-5 business days.',NULL,'2024-01-31 11:00:00'),(15,7,1,'Perfect, thank you!',NULL,'2024-02-01 15:30:00'),(16,8,2,'I can\'t log into my account. Can you help?',NULL,'2024-02-01 14:00:00');
/*!40000 ALTER TABLE `support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_tickets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('OPEN','CLOSED') COLLATE utf8mb4_unicode_ci DEFAULT 'OPEN',
  `customer_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `support_tickets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
INSERT INTO `support_tickets` VALUES (1,'Order not delivered','CLOSED',1,'2024-01-24 10:00:00','2024-01-25 14:00:00'),(2,'Product quality issue','CLOSED',2,'2024-01-26 15:30:00','2025-07-23 16:00:01'),(3,'Payment failed','CLOSED',3,'2024-01-27 11:00:00','2024-01-27 14:00:00'),(4,'Wrong item received','CLOSED',1,'2024-01-28 16:30:00','2025-07-23 17:00:02'),(5,'Delivery delay','CLOSED',2,'2024-01-29 09:15:00','2024-01-30 12:00:00'),(6,'Return request','CLOSED',3,'2024-01-30 13:45:00','2025-07-23 19:18:25'),(7,'Refund inquiry','CLOSED',1,'2024-01-31 10:20:00','2024-02-01 15:30:00'),(8,'Account issue','CLOSED',2,'2024-02-01 14:00:00','2025-07-24 09:00:02');
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKt48xdq560gs3gap9g7jg36kgc` (`name`),
  UNIQUE KEY `UKsn0d91hxu700qcw0n4pebp5vc` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_audit`
--

DROP TABLE IF EXISTS `user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_audit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_audit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_audit`
--

LOCK TABLES `user_audit` WRITE;
/*!40000 ALTER TABLE `user_audit` DISABLE KEYS */;
INSERT INTO `user_audit` VALUES (1,1,'email','kwame.mensah@yahoo.com','kwame.mensah@gmail.com','2024-01-15 10:30:00'),(2,2,'phone_number','+233244789011','+233244789012','2024-01-16 14:20:00'),(3,5,'role','CUSTOMER','VENDOR','2024-01-12 11:45:00');
/*!40000 ALTER TABLE `user_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` enum('LOCAL','GOOGLE','FACEBOOK') COLLATE utf8mb4_unicode_ci DEFAULT 'LOCAL',
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('CUSTOMER','ADMIN','VENDOR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `is_enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='User accounts for customers, admins, and vendors';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'listowel.moro@amalitech.com','056576025550','MALE','$2a$10$ynVE1WBPzUp9dVJtOf6ZxukpGGqeULOVMuM/8L.1rdkf.pbCMhR6O','Kwame Mensah','LOCAL',NULL,'VENDOR',1,1,'2024-01-15 10:30:00','2025-07-24 15:15:03'),(2,'asantesamuel4@gmail.com','+233554225849','FEMALE','$2a$10$rTQiPImLV4vf8fiDsvUEze5zk1wFd.WOJTURLTmrZSKBP1R0cKKmy','Kayone customer','LOCAL',NULL,'CUSTOMER',1,1,'2024-01-16 14:20:00','2025-07-24 10:14:20'),(3,'elabo2@gmail.com','+233244345678','MALE','$2a$10$ldZuL7XrSij2ps28o7hqzeVfis6qugj0UYcfzKTlQmNPUpVMzo9ZO','Kofi Adjei','LOCAL',NULL,'CUSTOMER',1,1,'2024-01-17 09:15:00','2025-07-23 19:50:57'),(4,'masteradmin@admin.com','+233244901234','MALE','$2a$10$xUcW4pezqAoXzqcdAPHKoOPwRySkFWOG6/bCjJYTEYoXLnYLzcYIq','Admin Manager','LOCAL',NULL,'ADMIN',1,1,'2024-01-10 08:00:00','2025-07-24 10:47:43'),(5,'evans@ghanashop.com','+233244567890','MALE','$2a$10$Ptb8UmlpssY9tiyXf5gm1urq.TJz1LwV76wn77uZ9BCdwgy9J1rTK','Yaw Boateng','LOCAL',NULL,'VENDOR',1,1,'2024-01-12 11:45:00','2025-07-24 15:09:25'),(6,'david@ghanashop.com','+233244678901','FEMALE','$2a$10$q1Ep2WtPtU/LL53YqVpSyOqxDHF21zE1ccoclkMn0JFCUSlN8vyHy','Ama Serwaa','LOCAL',NULL,'VENDOR',1,1,'2024-01-13 16:30:00','2025-07-24 08:41:15'),(7,'asante.samuel4@gmail.com','0554225849',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Adwoa Owusu','LOCAL',NULL,'CUSTOMER',1,1,'2025-07-23 16:11:51','2025-07-23 16:18:32'),(8,'vajvbct7ms@osxofulk.com','0542258469',NULL,'$2a$10$IVVekBAU/lccA3aFppxxE.STUGHxSr7DaMXOTOhkKH7lND4bofSxO','Kayone customer','LOCAL',NULL,'CUSTOMER',1,1,'2025-07-23 16:21:11','2025-07-23 16:21:11'),(9,'admin2@ghanashop.com','02222222222',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Admin','LOCAL',NULL,'CUSTOMER',1,1,'2025-07-23 16:40:37','2025-07-23 16:46:46'),(10,'lopij90751@mvpmedix.com','0592078372',NULL,'$2a$10$6p2mu9bUZmz60EWNv5FS0eAk/3rA.PtDNs/9JJfMiKdaGg8tQjkjK','Kweku Ananse','LOCAL',NULL,'CUSTOMER',1,1,'2025-07-24 12:25:58','2025-07-24 12:25:58'),(11,'ama.boakye1@gmail.com','+233240000851','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 08:30:00','2025-07-24 15:06:20'),(12,'kwesi.owusu2@gmail.com','78888888888','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 09:00:00','2025-07-24 15:06:21'),(13,'efua.adams3@gmail.com','89634112123','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 09:30:00','2025-07-24 15:06:22'),(14,'yaw.mensah4@gmail.com','44448968686','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 10:00:00','2025-07-24 15:06:23'),(15,'akua.dadzie5@gmail.com','444444444444','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 10:30:00','2025-07-24 15:06:24'),(16,'kojo.amoako6@gmail.com','+233240000996','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 11:00:00','2025-07-24 15:06:25'),(17,'abena.serwaa7@gmail.com','+233240000087','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 11:30:00','2025-07-24 15:06:26'),(18,'nana.kwabena8@gmail.com','+23324000007808','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 12:00:00','2025-07-24 15:06:26'),(19,'akosua.owusu9@gmail.com','+2332400000409','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 12:30:00','2025-07-24 15:06:27'),(20,'kweku.asare10@gmail.com','+2332400010010','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 13:00:00','2025-07-24 15:06:28'),(21,'ama.boakye11@gmail.com','13333333','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 11','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 13:30:00','2025-07-24 15:06:28'),(22,'kwesi.owusu12@gmail.com','+2332400100012','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 12','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 14:00:00','2025-07-24 15:06:29'),(23,'efua.adams13@gmail.com','111','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 13','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 14:30:00','2025-07-24 15:06:30'),(24,'yaw.mensah14@gmail.com','+2332369500014','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 14','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 15:00:00','2025-07-24 15:06:30'),(25,'abena.serwaa50@gmail.com','+23324008700050','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 50','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-03 13:00:00','2025-07-24 15:06:31'),(26,'kwesi.owusu1@gmail.com','+233240000001','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 1','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 09:00:00','2025-07-24 15:26:33'),(27,'efua.adams2@gmail.com','+233240000002','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 2','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 09:30:00','2025-07-24 15:26:34'),(28,'yaw.mensah3@gmail.com','+233240000003','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 3','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 10:00:00','2025-07-24 15:26:34'),(29,'akua.dadzie4@gmail.com','+233240000004','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie 4','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 10:30:00','2025-07-24 15:26:35'),(30,'kojo.amoako5@gmail.com','+233240000005','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako 5','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 11:00:00','2025-07-24 15:26:36'),(31,'abena.serwaa6@gmail.com','+233240000006','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 6','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 11:30:00','2025-07-24 15:26:36'),(32,'nana.kwabena7@gmail.com','+233240000007','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena 7','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 12:00:00','2025-07-24 15:26:37'),(33,'akosua.owusu8@gmail.com','+233240000008','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu 8','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 12:30:00','2025-07-24 15:26:38'),(34,'kweku.asare9@gmail.com','+233240000009','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare 9','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 13:00:00','2025-07-24 15:26:38'),(35,'ama.boakye10@gmail.com','+233240000010','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 10','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 13:30:00','2025-07-24 15:26:40'),(36,'kwesi.owusu11@gmail.com','+233240000011','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 11','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 14:00:00','2025-07-24 15:26:40'),(37,'efua.adams12@gmail.com','+233240000012','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 12','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 14:30:00','2025-07-24 15:26:41'),(38,'yaw.mensah13@gmail.com','+233240000013','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 13','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 15:00:00','2025-07-24 15:26:42'),(39,'akua.dadzie14@gmail.com','+233240000014','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie 14','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 15:30:00','2025-07-24 15:26:42'),(40,'kojo.amoako15@gmail.com','+233240000015','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako 15','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 16:00:00','2025-07-24 15:26:43'),(41,'abena.serwaa16@gmail.com','+233240000016','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 16','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 16:30:00','2025-07-24 15:26:43'),(42,'nana.kwabena17@gmail.com','+233240000017','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena 17','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 17:00:00','2025-07-24 15:26:44'),(43,'akosua.owusu18@gmail.com','+233240000018','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu 18','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 17:30:00','2025-07-24 15:26:45'),(44,'kweku.asare19@gmail.com','+233240000019','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare 19','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 18:00:00','2025-07-24 15:26:45'),(45,'ama.boakye20@gmail.com','+233240000020','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 20','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 18:30:00','2025-07-24 15:26:46'),(46,'kwesi.owusu21@gmail.com','+233240000021','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 21','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 19:00:00','2025-07-24 15:26:47'),(47,'efua.adams22@gmail.com','+233240000022','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 22','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 19:30:00','2025-07-24 15:26:48'),(48,'yaw.mensah23@gmail.com','+233240000023','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 23','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 20:00:00','2025-07-24 15:26:49'),(49,'akua.dadzie24@gmail.com','+233240000024','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie 24','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 20:30:00','2025-07-24 15:26:49'),(50,'kojo.amoako25@gmail.com','+233240000025','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako 25','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 21:00:00','2025-07-24 15:26:50'),(51,'abena.serwaa26@gmail.com','+233240000026','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 26','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 21:30:00','2025-07-24 15:26:51'),(52,'nana.kwabena27@gmail.com','+233240000027','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena 27','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 22:00:00','2025-07-24 15:26:51'),(53,'akosua.owusu28@gmail.com','+233240000028','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu 28','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 22:30:00','2025-07-24 15:26:52'),(54,'kweku.asare29@gmail.com','+233240000029','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare 29','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 23:00:00','2025-07-24 15:26:52'),(55,'ama.boakye30@gmail.com','+233240000030','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 30','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-01 23:30:00','2025-07-24 15:26:53'),(56,'kwesi.owusu31@gmail.com','+233240000031','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 31','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 00:00:00','2025-07-24 15:26:54'),(57,'efua.adams32@gmail.com','+233240000032','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 32','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 00:30:00','2025-07-24 15:26:54'),(58,'yaw.mensah33@gmail.com','+233240000033','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 33','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 01:00:00','2025-07-24 15:26:55'),(59,'akua.dadzie34@gmail.com','+233240000034','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie 34','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 01:30:00','2025-07-24 15:26:56'),(60,'kojo.amoako35@gmail.com','+233240000035','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako 35','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 02:00:00','2025-07-24 15:26:57'),(61,'abena.serwaa36@gmail.com','+233240000036','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 36','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 02:30:00','2025-07-24 15:26:57'),(62,'nana.kwabena37@gmail.com','+233240000037','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena 37','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 03:00:00','2025-07-24 15:26:58'),(63,'akosua.owusu38@gmail.com','+233240000038','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu 38','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 03:30:00','2025-07-24 15:26:59'),(64,'kweku.asare39@gmail.com','+233240000039','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare 39','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 04:00:00','2025-07-24 15:26:59'),(65,'ama.boakye40@gmail.com','+233240000040','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 40','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 04:30:00','2025-07-24 15:27:00'),(66,'kwesi.owusu41@gmail.com','+233240000041','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kwesi Owusu 41','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 05:00:00','2025-07-24 15:27:00'),(67,'efua.adams42@gmail.com','+233240000042','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Efua Adams 42','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 05:30:00','2025-07-24 15:27:01'),(68,'yaw.mensah43@gmail.com','+233240000043','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yaw Mensah 43','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 06:00:00','2025-07-24 15:27:02'),(69,'akua.dadzie44@gmail.com','+233240000044','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akua Dadzie 44','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 06:30:00','2025-07-24 15:27:02'),(70,'kojo.amoako45@gmail.com','+233240000045','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kojo Amoako 45','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 07:00:00','2025-07-24 15:27:03'),(71,'abena.serwaa46@gmail.com','+233240000046','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Abena Serwaa 46','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 07:30:00','2025-07-24 15:27:04'),(72,'nana.kwabena47@gmail.com','+233240000047','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Nana Kwabena 47','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 08:00:00','2025-07-24 15:27:04'),(73,'akosua.owusu48@gmail.com','+233240000048','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Akosua Owusu 48','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 08:30:00','2025-07-24 15:27:05'),(74,'kweku.asare49@gmail.com','+233240000049','MALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kweku Asare 49','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 09:00:00','2025-07-24 15:27:06'),(75,'ama.boakye50@gmail.com','+233240000050','FEMALE','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ama Boakye 50','LOCAL',NULL,'CUSTOMER',1,1,'2024-02-02 09:30:00','2025-07-24 15:27:07'),(376,'listoweladolwin@gmail.com','056530602555',NULL,'$2a$10$9a57WCeIkN.SBba3dF3SQOJbaTNj2tHqAc5kBMySgbadNm8wnIZyq','John Mensah','LOCAL',NULL,'ADMIN',1,1,'2025-07-24 15:55:00','2025-07-25 13:52:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_applications`
--

DROP TABLE IF EXISTS `vendor_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_applications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_certificate_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_description` text COLLATE utf8mb4_unicode_ci,
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representative_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representative_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representative_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED') COLLATE utf8mb4_unicode_ci DEFAULT 'PENDING',
  `rejection_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `business_email` (`business_email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_applications`
--

LOCK TABLES `vendor_applications` WRITE;
/*!40000 ALTER TABLE `vendor_applications` DISABLE KEYS */;
INSERT INTO `vendor_applications` VALUES (1,'Ghana Tech Solutions','tech@ghanasolutions.com','+233244123789','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-TECH-002','Technology solutions and electronics retailer','789 Tech Street, Accra, Ghana','retail','Kwame Tech','kwame@ghanasolutions.com','+233244123789','MALE','PENDING',NULL,'2024-01-30 10:00:00','2024-01-30 10:00:00'),(2,'Accra Fashion Hub','fashion@accrahub.com','+233245000001','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-FASH-003','Urban clothing and accessories','12 Oxford Street, Accra, Ghana','retail','Akosua Styles','akosua@accrahub.com','+233245000001','FEMALE','PENDING',NULL,'2024-01-30 10:05:00','2024-01-30 10:05:00'),(3,'Kumasi Agro Supplies','agro@kumasisupplies.com','+233245000002','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-AGRO-004','Farming equipment and fertilizer distribution','45 Farmer Lane, Kumasi, Ghana','wholesale','Yaw Farms','yaw@kumasisupplies.com','+233245000002','MALE','PENDING',NULL,'2024-01-30 10:06:00','2024-01-30 10:06:00'),(4,'Cape Coast Decor','decor@capecoastdecor.com','+233245000003','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-DECOR-005','Interior design and home decor','18 Elmina Road, Cape Coast, Ghana','service','Efua Decor','efua@capecoastdecor.com','+233245000003','FEMALE','PENDING',NULL,'2024-01-30 10:07:00','2024-01-30 10:07:00'),(5,'Sunshine Catering','catering@sunshine.com','+233245000004','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-CAT-006','Event and wedding catering services','102 Spintex Road, Accra, Ghana','service','Linda Meals','linda@sunshine.com','+233245000004','FEMALE','PENDING',NULL,'2024-01-30 10:08:00','2024-01-30 10:08:00'),(6,'Takoradi Steel Works','steel@takoradisteel.com','+233245000005','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-STEEL-007','Steel and hardware supplier','Industrial Area, Takoradi, Ghana','wholesale','Kojo Metal','kojo@takoradisteel.com','+233245000005','MALE','PENDING',NULL,'2024-01-30 10:09:00','2024-01-30 10:09:00'),(7,'Volta Fresh Produce','fresh@voltaproduce.com','+233245000006','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-FRESH-008','Fruits and vegetables supply','36 Market Circle, Ho, Ghana','retail','Selorm Fresh','selorm@voltaproduce.com','+233245000006','MALE','PENDING',NULL,'2024-01-30 10:10:00','2024-01-30 10:10:00'),(8,'Northern Textiles','textiles@northerntextiles.com','+233245000007','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-TEXT-009','Textile and fabric distributor','Tamale Central Market, Ghana','wholesale','Aminu Fabric','aminu@northerntextiles.com','+233245000007','MALE','PENDING',NULL,'2024-01-30 10:11:00','2024-01-30 10:11:00'),(9,'Eastern Home Goods','homegoods@eastern.com','+233245000008','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-HOME-010','Household and kitchenware','Koforidua Shopping Mall, Ghana','retail','Abena Goods','abena@eastern.com','+233245000008','FEMALE','PENDING',NULL,'2024-01-30 10:12:00','2024-01-30 10:12:00'),(10,'Brong Herbal Center','herbal@brongcenter.com','+233245000009','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-HERB-011','Organic and herbal products','29 High Street, Sunyani, Ghana','retail','Nana Herbal','nana@brongcenter.com','+233245000009','MALE','PENDING',NULL,'2024-01-30 10:13:00','2024-01-30 10:13:00'),(11,'Ashanti Auto Parts','autoparts@ashantimotors.com','+233245000010','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CERT-AUTO-012','Spare parts and vehicle accessories','Kumasi Auto Market, Ghana','wholesale','Kwaku Spare','kwaku@ashantimotors.com','+233245000010','MALE','PENDING',NULL,'2024-01-30 10:14:00','2024-01-30 10:14:00');
/*!40000 ALTER TABLE `vendor_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_earnings`
--

DROP TABLE IF EXISTS `vendor_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_earnings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `earned_at` datetime(6) DEFAULT NULL,
  `is_paid` bit(1) NOT NULL,
  `order_item_id` bigint NOT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK72xo1li1hjn7gu29k27qux4go` (`order_item_id`),
  KEY `FK2xfp6ad9f54fgft1lj7y1d62r` (`vendor_id`),
  CONSTRAINT `FK2xfp6ad9f54fgft1lj7y1d62r` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKstqgmgk1knqg0hlbs85rd4u17` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_earnings`
--

LOCK TABLES `vendor_earnings` WRITE;
/*!40000 ALTER TABLE `vendor_earnings` DISABLE KEYS */;
INSERT INTO `vendor_earnings` VALUES (1,6479.28,'2025-07-25 11:52:01.575849',_binary '',154,6),(2,6479.28,'2025-07-25 13:23:51.917607',_binary '',155,1);
/*!40000 ALTER TABLE `vendor_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_payout_accounts`
--

DROP TABLE IF EXISTS `vendor_payout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_payout_accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` enum('BANK_ACCOUNT','MOBILE_MONEY') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` bit(1) NOT NULL,
  `is_verified` bit(1) NOT NULL,
  `recipient_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKewbwdvurs5r0nrws5mbhb7co4` (`account_number`),
  UNIQUE KEY `UKcwaennghv0xinyxrl07f1ri6p` (`account_number_hash`),
  KEY `FKdrase8hpmkj065ep3eadue5fy` (`vendor_id`),
  CONSTRAINT `FKdrase8hpmkj065ep3eadue5fy` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_payout_accounts`
--

LOCK TABLES `vendor_payout_accounts` WRITE;
/*!40000 ALTER TABLE `vendor_payout_accounts` DISABLE KEYS */;
INSERT INTO `vendor_payout_accounts` VALUES (1,'UNIFIED','uWuiC+KywBGNY1DcE0nvXyLKbblf','e82592c7a483c08e054d0d0a6405194a5e6','BANK_ACCOUNT','2554',_binary '',_binary '','RCP_631uhjk68m',2),(3,'NISSI  OSEI OWUSU ','QimFycRFMCgtU6aU1K6Vbhb+0zNVSxz7','bc90d9e0fa5f55f8230b81857133a30eb5b4160772b13368f4aa2ab6967b6bfd','BANK_ACCOUNT','280100',_binary '\0',_binary '','RCP_tbvhjic2qf549p0',1),(4,'Evans Elalbo','7H043MnbDKJ/J5DNXQsmlmL0WaAl5FIu','8ddddf741965580b4048c38a3582c719de5b1ca987ab43ae146a21ab569ee078','MOBILE_MONEY','MTN',_binary '\0',_binary '','RCP_r9bne2msnpvxvtr',5),(5,'EVANS ELABO','VbheaiGAk38To9cYwyO9h1y+zGyYpevY','e82592c70b25bd324a8e7f7a56d1b93f8ba483c08e054d0dc5a0a6405194a5e6','BANK_ACCOUNT','140100',_binary '',_binary '','RCP_xakoi068mgipwnz',5),(8,'LISTOWEL ADOLWIN MORO','lQNtuK21RzzZ7w3SSy/7LvEZlzoTpOtp','a2ee481f6105ab9b9a5e1f05368d4cd7b6750439b22f0849cf4e9f5992bdad2c','MOBILE_MONEY','MTN',_binary '',_binary '','RCP_p3hh0mgh10f5wcq',1);
/*!40000 ALTER TABLE `vendor_payout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_payouts`
--

DROP TABLE IF EXISTS `vendor_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_payouts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `failure_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_earnings` decimal(19,2) NOT NULL,
  `net_payout` decimal(19,2) NOT NULL,
  `payout_period_end` datetime(6) NOT NULL,
  `payout_period_start` datetime(6) NOT NULL,
  `payout_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_transfer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform_commission` decimal(19,2) NOT NULL,
  `processed_at` datetime(6) DEFAULT NULL,
  `status` enum('CANCELLED','FAILED','PAID','PENDING','PROCESSING') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_account_id` bigint DEFAULT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKg0kgb1y9px94ebfx53uv3e5ce` (`payout_reference`),
  KEY `FKijqbyqc70leb5bwg7ouf617mu` (`payout_account_id`),
  KEY `FK8ss8jfwr5rsa5m7gn7eketq27` (`vendor_id`),
  CONSTRAINT `FK8ss8jfwr5rsa5m7gn7eketq27` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKijqbyqc70leb5bwg7ouf617mu` FOREIGN KEY (`payout_account_id`) REFERENCES `vendor_payout_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_payouts`
--

LOCK TABLES `vendor_payouts` WRITE;
/*!40000 ALTER TABLE `vendor_payouts` DISABLE KEYS */;
INSERT INTO `vendor_payouts` VALUES (6,'2025-07-01 09:30:00.000000',NULL,15000.00,14250.00,'2025-06-30 23:59:59.000000','2025-06-01 00:00:00.000000','PAYOUT-JUNE-2025-001','TRF_001A234B',750.00,'2025-07-02 10:00:00.000000','PAID',4,5),(7,'2025-06-01 08:00:00.000000',NULL,12000.00,11400.00,'2025-05-31 23:59:59.000000','2025-05-01 00:00:00.000000','PAYOUT-MAY-2025-002','TRF_001B234C',600.00,'2025-06-02 09:30:00.000000','PAID',5,5),(8,'2025-08-01 07:15:00.000000','Account number invalid',10000.00,0.00,'2025-07-31 23:59:59.000000','2025-07-01 00:00:00.000000','PAYOUT-JULY-2025-003',NULL,1000.00,'2025-08-01 08:00:00.000000','FAILED',5,5),(9,'2025-08-20 10:45:00.000000',NULL,13000.00,12350.00,'2025-08-31 23:59:59.000000','2025-08-01 00:00:00.000000','PAYOUT-AUGUST-2025-004','TRF_001C345D',650.00,NULL,'PROCESSING',5,5),(10,'2025-08-15 11:00:00.000000',NULL,14000.00,13300.00,'2025-08-14 23:59:59.000000','2025-08-01 00:00:00.000000','PAYOUT-MID-AUGUST-2025-005','TRF_001D456E',700.00,'2025-08-15 12:00:00.000000','PAID',5,5),(11,'2025-07-10 09:00:00.000000',NULL,8000.00,7600.00,'2025-07-09 23:59:59.000000','2025-07-01 00:00:00.000000','PAYOUT-JUL-10-001','TRF_0101A',400.00,'2025-07-11 08:00:00.000000','PAID',5,5),(12,'2025-07-15 10:20:00.000000',NULL,9500.00,9025.00,'2025-07-14 23:59:59.000000','2025-07-01 00:00:00.000000','PAYOUT-JUL-15-002','TRF_0102B',475.00,'2025-07-16 10:00:00.000000','PAID',5,5),(13,'2025-07-20 14:45:00.000000','Insufficient funds',11000.00,0.00,'2025-07-19 23:59:59.000000','2025-07-10 00:00:00.000000','PAYOUT-JUL-20-003',NULL,550.00,'2025-07-20 15:00:00.000000','FAILED',5,5),(14,'2025-07-25 08:00:00.000000',NULL,12000.00,11400.00,'2025-07-24 23:59:59.000000','2025-07-15 00:00:00.000000','PAYOUT-JUL-25-004','TRF_0104D',600.00,'2025-07-25 09:00:00.000000','PAID',5,5),(15,'2025-07-30 12:30:00.000000',NULL,10000.00,9500.00,'2025-07-29 23:59:59.000000','2025-07-20 00:00:00.000000','PAYOUT-JUL-30-005','TRF_0105E',500.00,'2025-07-30 14:00:00.000000','PAID',5,5),(16,'2025-08-01 11:15:00.000000',NULL,13000.00,12350.00,'2025-07-31 23:59:59.000000','2025-07-25 00:00:00.000000','PAYOUT-AUG-01-006','TRF_0106F',650.00,'2025-08-01 12:00:00.000000','PAID',5,5),(17,'2025-08-03 10:00:00.000000',NULL,14000.00,13300.00,'2025-08-02 23:59:59.000000','2025-08-01 00:00:00.000000','PAYOUT-AUG-03-007','TRF_0107G',700.00,'2025-08-03 11:00:00.000000','PAID',5,5),(18,'2025-08-05 14:00:00.000000',NULL,16000.00,15200.00,'2025-08-04 23:59:59.000000','2025-08-03 00:00:00.000000','PAYOUT-AUG-05-008','TRF_0108H',800.00,'2025-08-05 14:30:00.000000','PAID',5,5),(19,'2025-08-07 09:30:00.000000',NULL,9000.00,8550.00,'2025-08-06 23:59:59.000000','2025-08-05 00:00:00.000000','PAYOUT-AUG-07-009','TRF_0109I',450.00,'2025-08-07 10:00:00.000000','PAID',5,5),(20,'2025-08-09 16:00:00.000000','Bank unreachable',11500.00,0.00,'2025-08-08 23:59:59.000000','2025-08-07 00:00:00.000000','PAYOUT-AUG-09-010',NULL,575.00,'2025-08-09 17:00:00.000000','FAILED',5,5),(21,'2025-08-10 07:30:00.000000',NULL,10500.00,9975.00,'2025-08-09 23:59:59.000000','2025-08-08 00:00:00.000000','PAYOUT-AUG-10-011','TRF_0110J',525.00,'2025-08-10 08:00:00.000000','PAID',5,5),(22,'2025-08-11 08:00:00.000000',NULL,13500.00,12825.00,'2025-08-10 23:59:59.000000','2025-08-09 00:00:00.000000','PAYOUT-AUG-11-012','TRF_0111K',675.00,'2025-08-11 08:30:00.000000','PAID',5,5),(23,'2025-08-12 09:00:00.000000',NULL,15000.00,14250.00,'2025-08-11 23:59:59.000000','2025-08-10 00:00:00.000000','PAYOUT-AUG-12-013','TRF_0112L',750.00,'2025-08-12 10:00:00.000000','PAID',5,5),(24,'2025-08-13 10:30:00.000000',NULL,15500.00,14725.00,'2025-08-12 23:59:59.000000','2025-08-11 00:00:00.000000','PAYOUT-AUG-13-014','TRF_0113M',775.00,'2025-08-13 11:00:00.000000','PAID',5,5),(25,'2025-08-14 11:45:00.000000',NULL,14500.00,13775.00,'2025-08-13 23:59:59.000000','2025-08-12 00:00:00.000000','PAYOUT-AUG-14-015','TRF_0114N',725.00,'2025-08-14 12:00:00.000000','PAID',5,5),(26,'2025-08-15 12:00:00.000000',NULL,9500.00,9025.00,'2025-08-14 23:59:59.000000','2025-08-13 00:00:00.000000','PAYOUT-AUG-15-016','TRF_0115O',475.00,'2025-08-15 12:30:00.000000','PAID',5,5),(27,'2025-08-16 13:00:00.000000',NULL,9800.00,9310.00,'2025-08-15 23:59:59.000000','2025-08-14 00:00:00.000000','PAYOUT-AUG-16-017','TRF_0116P',490.00,'2025-08-16 14:00:00.000000','PROCESSING',5,5),(28,'2025-08-17 14:15:00.000000',NULL,12000.00,11400.00,'2025-08-16 23:59:59.000000','2025-08-15 00:00:00.000000','PAYOUT-AUG-17-018','TRF_0117Q',600.00,NULL,'PENDING',5,5),(29,'2025-08-18 15:30:00.000000',NULL,10000.00,9500.00,'2025-08-17 23:59:59.000000','2025-08-16 00:00:00.000000','PAYOUT-AUG-18-019','TRF_0118R',500.00,NULL,'CANCELLED',5,5),(30,'2025-08-19 16:45:00.000000',NULL,11000.00,10450.00,'2025-08-18 23:59:59.000000','2025-08-17 00:00:00.000000','PAYOUT-AUG-19-020','TRF_0119S',550.00,'2025-08-19 17:30:00.000000','PAID',5,5),(31,'2025-07-25 11:57:59.486885',NULL,7199.20,6479.28,'2025-07-27 23:59:59.000000','2025-07-14 00:00:00.000000','PAYOUT_100AF183709A','TRF_35ohzfxy73f32vmk',719.92,NULL,'PROCESSING',4,6),(32,'2025-07-25 14:05:41.409182',NULL,7199.20,6479.28,'2025-07-27 23:59:59.000000','2025-07-14 00:00:00.000000','PAYOUT_D528B1E64B53','TRF_ftphhn2miuh2ztda',719.92,'2025-07-25 14:05:43.741724','PAID',8,1);
/*!40000 ALTER TABLE `vendor_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_at` datetime(6) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `wishlist_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4evrb2m6vjp2xuxx4pboilb7` (`product_id`),
  KEY `FK5iw5sajivrxnt4qjxqlgo8yb1` (`wishlist_id`),
  CONSTRAINT `FK4evrb2m6vjp2xuxx4pboilb7` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK5iw5sajivrxnt4qjxqlgo8yb1` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist_item`
--

LOCK TABLES `wishlist_item` WRITE;
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,1,2),(2,1,7),(3,2,1),(4,2,9),(5,3,8),(6,3,10),(7,1,11),(8,1,15),(9,2,12),(10,2,16),(11,3,13),(12,3,17),(13,1,18),(14,1,22),(15,2,19),(16,2,23),(17,3,20),(18,3,24),(19,1,25),(20,1,29),(21,2,26),(22,2,30),(23,3,27),(24,3,28),(25,1,31),(26,1,35),(27,2,32),(28,2,36),(29,3,33),(30,3,37),(31,1,34),(32,1,38),(33,2,39),(34,2,40),(35,3,41),(36,3,42),(37,1,43),(38,1,44),(39,2,45),(40,2,46),(41,3,47),(42,3,48),(43,1,49),(44,1,50),(45,2,51),(46,2,52),(47,3,53),(48,3,54),(49,1,55),(50,1,56),(51,2,57),(52,2,58),(53,3,59),(54,3,60);
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-25 14:52:11
