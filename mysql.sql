-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: i20
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--


LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,NULL,'Одежда','Категория со всей одеждой'),(2,NULL,'Обувь','Категория со всей обувью'),(3,NULL,'Аксессуары','Категория со всеми аксессуарами'),(4,1,'Платья','Категория с платьями'),(5,1,'Рубашки','Категория с рубашками'),(6,2,'Ботинки','Категория с ботинками'),(7,2,'Кроссовки','Категория с кроссовками'),(8,3,'Зонты','Категория с зонтами'),(9,3,'Головные уборы','Категория с головными уборами');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(100) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4293794_1_v2.jpg',1),(2,'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4301043_6_v1.jpg',1),(3,'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4301044_7_v1.jpg',1),(4,'https://a.lmcdn.ru/product/R/T/RTLABG594801_16670765_1_v1.jpg',2),(5,'https://a.lmcdn.ru/product/R/T/RTLABG594801_16679011_9_v1_2x.jpg',2),(6,'https://a.lmcdn.ru/product/R/T/RTLABG594801_16670766_2_v1.jpg',2),(7,'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852423_1_v2.jpg',3),(8,'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852421_2_v2.jpg',3),(9,'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852425_3_v2.jpg',3),(10,'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009712_1_v1_2x.jpg',4),(11,'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009713_2_v1_2x.jpg',4),(12,'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009714_3_v1_2x.jpg',4),(13,'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576770_1_v3.jpg',5),(14,'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576771_2_v3.jpg',5),(15,'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576773_4_v3.jpg',5),(16,'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998751_1_v2.jpg',6),(17,'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998752_2_v2.jpg',6),(18,'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998753_3_v2.jpg',6),(19,'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974142_1_v2.jpg',7),(20,'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974153_2_v2.jpg',7),(21,'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974160_3_v2.jpg',7),(22,'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985694_1_v2.jpg',8),(23,'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985691_2_v2.jpg',8),(24,'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985693_3_v2.jpg',8),(25,'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025089_1_v1_2x.jpg',9),(26,'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025090_2_v1_2x.jpg',9),(27,'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025091_3_v1_2x.jpg',9),(28,'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241296_1_v1_2x.jpg',10),(29,'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241297_2_v1_2x.jpg',10),(30,'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241298_3_v1_2x.jpg',10),(31,'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546217_1_v1_2x.jpg',11),(32,'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546218_2_v1_2x.jpg',11),(33,'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546219_3_v1_2x.jpg',11),(34,'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721510_1_v1.jpeg',12),(35,'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721512_2_v1.jpeg',12),(36,'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721511_3_v1.jpeg',12),(37,'https://a.lmcdn.ru/product/R/T/RTLACC317701_18345146_1_v1_2x.jpg',13),(38,'https://a.lmcdn.ru/product/R/T/RTLACC317701_18354531_9_v1_2x.jpg',13),(39,'https://a.lmcdn.ru/product/R/T/RTLACC317701_18345147_2_v1_2x.jpg',13),(40,'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227585_1_v1.jpeg',14),(41,'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227586_2_v1.jpeg',14),(42,'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227587_3_v1.jpeg',14),(43,'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666143_1_v1.jpg',15),(44,'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666144_2_v1.jpg',15),(45,'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666145_3_v1.jpg',15);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `category_id` int NOT NULL,
  `price` decimal(8,2) unsigned NOT NULL,
  `price_discount` decimal(8,2) unsigned NOT NULL,
  `price_promo` decimal(8,2) unsigned NOT NULL,
  `description` varchar(500) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `amount_product` int NOT NULL DEFAULT '0',
  `brand` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Рубашка Medicine',5,2699.00,2499.00,2227.00,'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.',1,255,'Medicine'),(2,'Nike ботинки',7,12000.00,11540.00,11200.00,'Интересный релиз Nike, в рамках которого специалисты бренда решили выпустить культовую модель Air Force в демисезонном варианте. Эффектный верх из иск. кожи и текстиля. дополнен стегаными деталями акцентами и резиновым носком',1,245,'Nike'),(3,'Зонт GUCCI',8,3200.00,3000.00,2840.00,'Красный зонт с асимметричным принтом в виде гороха и фантазийного орнамента поможет подчеркнуть романтичность натуры.',1,458,'Gucci'),(4,'GIUSEPPE DI MORABITO',4,7530.00,7500.00,7484.00,'Приталенное мини-платье насыщенного оттенка фуксии сшили из мягкой гладкой кожи с деликатным блеском.',1,1452,'Morabito'),(5,'Кроссовки LITE RACER 2.0',7,6399.00,3510.00,3210.00,'Кроссовки в беговом стиле выполнены из дышащего сетчатого текстиля.',1,4215,'adidas'),(6,'Ботинки Strobbs',6,5999.00,4520.00,4000.00,'Ботинки, идеальные для дождливой погоды',1,214,'Strobbs'),(7,'Зонт-трость',8,5200.00,3250.00,3012.00,'',1,5452,'Lamberti'),(8,'Зонт складной WOOD CLASSIC S',8,6000.00,5240.00,3420.00,'',1,3213,'Samsonite'),(9,'Рубашка Oxford Shirt',5,5990.00,3777.00,3410.00,'Рубашка выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.',1,312,'Lyle & Scott'),(10,'Рубашка Versache Jeans',5,63500.00,57150.00,55400.00,'Рубашка выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.',1,545,'Versache Jeans'),(11,'Платье DRESS TO IMPRESS',4,47300.00,40205.00,39500.00,'Платье отличного качетсва.',1,6423,'Pinco'),(12,'Платье Barmariska',4,6699.00,2713.00,2545.00,'Платье отличного качетсва.',1,523,'Barmariska'),(13,'Кроссовки Ash',7,17900.00,17500.00,17000.00,'Кроссовки для повседнего выхода.',1,632,'Ash'),(14,'Ботинки полнота C (3)',6,5499.00,3999.00,3645.00,'Ботинки, идеальные для дождливой погоды.',1,642,'Instreet'),(15,'Зонт складной',8,8200.00,7250.00,7012.00,'',1,987,'Moschino');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 16:29:16

-- некоторые запросы
/* with recursive parent_cte (id, title, parent_id) as (
  select id, title, parent_id
 from category
  where id = 1
  union all
  select  f.id, f.title, f.parent_id
 from category f
 inner join parent_cte pc on f.id = pc.parent_id
 
 )
  select * from parent_cte; */
  
 -- Запрос на получения родителей включая сам дочерний элемент

/* with recursive children_cte (id, title, parent_id) as (
 select id, title, parent_id
 from category
 where parent_id = 2
union all
 select  c.id, c.title, c.parent_id
 from category c
 inner join children_cte cc on c.parent_id = cc.id

 )
 select * from children_cte;*/ 
 -- Запрос на получения детей



/* select c.id, c.title, count(*)
from product p
right outer join category c on c.id = p.category_id
group by c.id, c.title
*/ -- Запрос на получение количества товаров в подкатегориях
