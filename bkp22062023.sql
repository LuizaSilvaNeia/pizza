-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzaapp
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id_cargo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cargo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Não Informado','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ddd` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '11',
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_enderecos`
--

DROP TABLE IF EXISTS `clientes_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_enderecos` (
  `id_cliente_endereco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente_endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_enderecos`
--

LOCK TABLES `clientes_enderecos` WRITE;
/*!40000 ALTER TABLE `clientes_enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id_endereco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `endereco` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2014_10_12_000000_create_users_table',1),(6,'2014_10_12_100000_create_password_reset_tokens_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2023_06_15_165531_create_cargos_table',2),(10,'2023_06_20_140738_create_tipo_pedidos_table',3),(11,'2023_06_20_144908_create_tipo_pagamentos_table',4),(12,'2023_06_20_145404_create_statuses_table',4),(13,'2023_06_20_153541_create_tipo_produtos_table',4),(14,'2023_06_20_153829_create_tamanhos_table',4),(15,'2023_06_20_155039_create_produtos_table',5),(16,'2023_06_22_140222_create_produto_tamanhos_table',6),(17,'2023_06_22_142735_create_clientes_table',6),(18,'2023_06_22_144702_create_enderecos_table',6),(19,'2023_06_22_153836_create_cliente_enderecos_table',6),(20,'2023_06_22_162044_create_pedidos_table',6),(21,'2023_06_22_165522_create_pedido_produtos_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo_pedido` int(11) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_cliente_endereco` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_tipo_pagamento` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT '0.00',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_produtos`
--

DROP TABLE IF EXISTS `pedidos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_produtos` (
  `id_pedido_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto_tamanho` int(11) NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `qtd` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pedido_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_produtos`
--

LOCK TABLES `pedidos_produtos` WRITE;
/*!40000 ALTER TABLE `pedidos_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo_produto` int(11) NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `foto` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'Michele Ramires','Maiores qui voluptatibus dicta voluptates aspernatur cupiditate. Ut nihil earum aut ad et et ea aut. Voluptatem consequatur sunt ut.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(2,1,'Dr. Jerônimo Balestero Sobrinho','Cumque quis nesciunt vel explicabo. Et totam qui et animi eaque. Enim fuga quod vitae explicabo facere et dolores dolorum. Nostrum corporis ab ex et commodi quasi sed.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(3,1,'Giovanna Samanta Santos','Non repellendus nemo aliquam libero et. Ab excepturi aut quo asperiores qui ab. Nihil rerum dolorem amet esse et. Reprehenderit et rerum dolores nostrum sit reprehenderit at et.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(4,1,'Sra. Lavínia Campos Neto','Molestias maxime nostrum quasi. Consequatur consectetur veniam rerum sunt culpa iusto. Veritatis molestias et velit ut et voluptas ut. Exercitationem est odio rem aspernatur officiis porro quis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(5,1,'Dr. Allison Solano','Quia dolor cupiditate eos assumenda. Repudiandae necessitatibus quis rem dignissimos. In quidem sequi nihil qui tenetur eum quis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(6,1,'Sra. Isabella Amaral Marés','Non ut aut provident impedit ut modi neque. Repellat rerum fugiat voluptate alias eligendi sunt eveniet consequatur. Officiis sit culpa ipsam ut laboriosam aut.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(7,1,'Emerson Alves Branco','Ea deserunt amet rerum quo. Aliquam occaecati officia saepe voluptatem asperiores. Et dicta magnam vero eaque sequi.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(8,1,'Srta. Jasmin Thalita Ramires','Tempora et doloribus mollitia. Ut saepe non eos sunt nobis. Aut sunt et tempora est omnis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(9,1,'Dr. Sérgio Maldonado','Deleniti fugit iste adipisci voluptas. Quibusdam qui ipsa dolorem sequi ut voluptates id minima. Maiores voluptatibus saepe inventore vel. Quasi est nostrum sit nobis quis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(10,1,'Dr. Kauan Delatorre','Saepe quisquam dolores voluptatem sequi esse debitis. Itaque recusandae ratione blanditiis et dolorem architecto dignissimos. Ab quas et et alias fuga earum ut minus. Atque accusamus consequatur at.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(11,1,'Igor Gusmão','Veniam ut asperiores quam. Totam minima rerum culpa voluptate. Velit consectetur nemo deserunt ex est illo.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(12,1,'Sr. Daniel Balestero Jr.','Fugit ducimus porro libero nihil quas. Quidem repellat dolor explicabo autem dolorum molestiae ex. Magni non nisi possimus itaque sint commodi.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(13,1,'Sr. Denis Sebastião D\'ávila Filho','Quisquam voluptatem quibusdam quis. Ut et sint quia. Possimus aperiam non omnis non possimus quisquam. Tenetur voluptatem error et dolore et.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(14,1,'Srta. Heloise Zambrano de Freitas Neto','Earum dolores ullam quis eos. Quod soluta maiores quos rerum exercitationem dolores. Sunt fugit ut enim et. Rerum molestiae ex non odit quasi aliquam. Adipisci in aut error reiciendis harum ut quo.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(15,1,'Sra. Noelí Bittencourt Alcantara','Aut provident quidem eum dolorum ea. Id ipsum non sed sint nisi. Voluptatum sed distinctio eligendi dicta.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(16,1,'Sr. Eric Torres Neto','Odio est illo illum qui. Error accusantium vero tempore ipsum. Reiciendis magnam molestiae perspiciatis ea.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(17,1,'Noemi Carvalho','Illum ipsa maiores et exercitationem similique. Aut voluptatem tempore est architecto nemo est. Tenetur aut repudiandae eligendi cum. Ut ipsam et nihil earum itaque molestiae quo provident.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(18,1,'Mateus Meireles Zaragoça','Laboriosam quibusdam est nihil temporibus blanditiis minima. Et id possimus porro quia. Veritatis quo ea quod quisquam rerum maxime. Ea quae illum quo mollitia odio et.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(19,1,'Sra. Milene Souza','Voluptate voluptas ipsa veritatis aut commodi alias omnis. Aliquid minus omnis molestiae corrupti ipsam. Et esse dolores sint delectus sunt. Ipsa excepturi et eius id sapiente fuga in.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(20,1,'Maurício Simon Carvalho','Odit ut aut est illo. Pariatur aperiam possimus ea vitae tempora doloremque velit et. Accusamus voluptas minima quia accusantium voluptatum. Ipsam amet est consequatur ut.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(21,1,'Sr. Gean Corona','Non placeat laborum assumenda ut quidem rerum est. Ex quo aut est ut quasi qui itaque. Eum et necessitatibus illum vero. Sequi et quaerat cum debitis. Sunt in ut est sed.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(22,1,'Srta. Juliana Luiza Franco','Eos at neque nam. Reprehenderit libero et modi maxime iusto. Laborum dolores quam tempora repudiandae ut nobis est.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(23,1,'Mônica Montenegro','Assumenda est quidem ex est corporis. Sint accusamus ut iusto aliquid eum. Quod voluptatum explicabo dolores consequuntur reiciendis et. Dolores ipsam dignissimos voluptas qui deleniti quia in.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(24,1,'Srta. Renata Alves','Repellat animi architecto est exercitationem. Consequatur enim nemo omnis qui et quia eligendi. Aut qui et vel quod mollitia aspernatur qui veritatis. Aspernatur laudantium perspiciatis sed.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(25,1,'Renan Sandro Soto','Odit corporis similique maxime. Et enim dolorem debitis. Consequatur voluptatem deserunt quo suscipit natus iure saepe non. Optio libero est et ipsa.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(26,1,'Vitor Furtado','Qui ab laudantium reprehenderit quis. Cum eum at minima. Non rerum veritatis nisi sed voluptatem accusantium. Sapiente velit harum nam corrupti.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(27,1,'Gael Santacruz','Qui placeat atque vero quasi quis cum et. Vero voluptas voluptatem quibusdam odit. Consequatur mollitia et aliquid saepe laborum. Magnam ut cum animi.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(28,1,'Poliana Beltrão','Blanditiis magnam aut modi. Quaerat dignissimos esse fugit ea reprehenderit ut. Aut doloribus et voluptatum. Magnam temporibus quia nemo est.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(29,1,'Sergio Delatorre','Natus deleniti rerum et iste. Quo harum quaerat hic eveniet alias consequatur. Id qui eos enim quod error at. Rerum explicabo in esse laudantium sit omnis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(30,1,'Srta. Mônica Delatorre Madeira Jr.','Repudiandae voluptate enim ab qui eum. Placeat quo consequatur nemo consequatur omnis. Ut praesentium et voluptatem repellendus. Quia earum earum qui vitae rerum eos.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(31,1,'Sr. Fernando Godói Rangel Filho','Iste cumque ea asperiores architecto harum eligendi. Fugit impedit expedita ut fuga atque suscipit. In repellat repellendus voluptatum.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(32,1,'Sr. Benjamin Martines Neto','Omnis sed non quam non possimus eius. Nesciunt repellat nihil incidunt possimus repellendus. Mollitia dolorem non et. Iste debitis tempore dolore tempore quibusdam omnis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(33,1,'Lucas Saulo de Souza Jr.','Esse nobis perferendis quidem quas cum. Quam repellat occaecati porro quo qui. Unde quisquam labore officia dolorem dolores placeat.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(34,1,'Paloma Bárbara Faro Filho','Beatae et nulla et deserunt ullam. Ut aliquid at distinctio rerum officiis ab. Saepe assumenda rem officia harum. Nihil autem quidem aut tenetur.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(35,1,'Dr. Luiz Rocha','Optio sed temporibus alias esse et cum maiores numquam. Delectus labore officiis aut nisi aut aut. Consequatur sint sunt quia itaque consequuntur architecto rem.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(36,1,'Fabiana Batista','Ullam voluptatem voluptate nihil. Aliquam et odio reprehenderit magnam sequi et. Exercitationem voluptas eos in reiciendis at alias optio.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(37,1,'Srta. Raquel Marin Sobrinho','Rerum est aut corporis ut dolores. Ducimus ipsam cum eaque eveniet et. Ab assumenda dolorum sit occaecati ex rerum incidunt.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(38,1,'Gustavo Richard de Arruda Sobrinho','Ut omnis magnam aut sit dolores necessitatibus dolorum. Ipsam ea est vero est non consectetur. In commodi voluptas esse tempora. Error quasi similique sed et in aut.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(39,1,'Srta. Lara Micaela Carmona Neto','Quisquam recusandae accusamus odit nobis corporis neque. Quae quas fugit quas molestiae sed est. Ea voluptatem vel aspernatur sit iste unde.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(40,1,'Dr. Alexandre Dominato Rocha','Minus alias quidem delectus ut aspernatur nihil. In fugit tempora consequatur exercitationem. Repellat maxime qui explicabo ut.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(41,1,'Sr. Alessandro Fernandes','Quis quibusdam quos quaerat dolorem sint ut qui. Unde reiciendis sed consectetur nihil aut deserunt voluptatibus. Reiciendis et consequatur ea repudiandae.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(42,1,'Louise Norma Verdara Filho','Dolores veniam consectetur quia qui praesentium vero. Recusandae dolorem ut provident totam id.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(43,1,'Dr. Franciele Amaral','Sunt cumque maxime natus fugit ipsa sunt magnam. Est doloribus ullam vitae temporibus odit reiciendis laborum.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(44,1,'Natália Valdez Azevedo Sobrinho','Aut iste sint nostrum. Quia ullam consectetur maiores neque. Laborum perferendis placeat ea quae doloremque. Deserunt repellat eos corporis ut. Dolores accusamus quia voluptatibus eos.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(45,1,'Sr. Samuel Pena Sobrinho','Nostrum aut dicta ipsa quasi labore aut. Fugit rerum nostrum et repellat. Minima aut et cumque laudantium occaecati rerum tempore.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(46,1,'Josué Maldonado Jr.','Quo quia facere expedita. Adipisci aperiam facilis autem neque nihil fuga. Maxime sed dolor qui laborum sint deserunt.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(47,1,'Raquel das Neves','Perspiciatis earum aspernatur tenetur in aspernatur quod accusamus incidunt. Ipsum non rerum rem sed. Nisi voluptatum saepe itaque ullam voluptatem. Dolorum totam et dicta dolorem magni et quis.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(48,1,'Sr. Ícaro Madeira','Voluptatem alias iure cupiditate. Saepe vel sed ut similique ut quaerat suscipit. Qui dignissimos aspernatur odio et veritatis consequatur. Aut iusto aut nihil assumenda ducimus vel aliquid.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(49,1,'Pâmela Josefina Valente Filho','Quidem eum voluptas ut. Corrupti minus omnis maiores quas. Est vitae nostrum sit eos dicta.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(50,1,'Renata Pedrosa Jr.','Nemo commodi doloribus et. Minima qui laboriosam culpa. Iste quis minus perferendis sequi accusamus nisi dicta.',NULL,NULL,'2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(51,1,'autem','Delectus sint illo a vitae qui. Alias dolorem itaque qui est temporibus est ea magni. Et reiciendis aut praesentium nihil dolor. Necessitatibus quam ut voluptas quis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(52,1,'iusto','Consequatur ab voluptatem magni voluptatem sit tempora. Veniam beatae voluptas non sit dolores. Ut sit est laudantium rem impedit quas. Voluptatum aperiam ut dolor corporis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(53,1,'laboriosam','Laboriosam qui doloribus sed qui. Fugiat ut dolorem delectus quasi delectus. Inventore quaerat iusto nam aut voluptas consequatur nam.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(54,1,'rem','Deserunt sit quas quos esse occaecati. Libero consequatur ab veritatis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(55,1,'nostrum','Neque harum dolore doloribus autem quibusdam. Quos architecto accusamus quaerat deserunt. Architecto rerum excepturi pariatur architecto.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(56,1,'aut','Earum ad ducimus incidunt voluptatem modi. Aliquid pariatur et eum quas dolores. Aspernatur dolore veniam voluptatum a dicta sint.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(57,1,'necessitatibus','Maiores consequatur distinctio placeat velit deserunt non. Voluptatum qui quo pariatur ea. Officiis id quos suscipit unde qui non.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(58,1,'et','Quidem sed quaerat aperiam enim dolores et esse. Maxime dolorem quia facere a facilis quasi qui quia. Quos velit praesentium ducimus vero expedita. Quam vel laudantium fugit qui.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(59,1,'error','Earum error nihil est voluptatum ducimus suscipit. Sit vero similique inventore in minus ea sit.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(60,1,'atque','Quia facere dolorum sed neque ratione repudiandae optio rerum. Sed non dolorum aut enim adipisci. In impedit quis impedit.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(61,1,'consequatur','Corrupti praesentium consequuntur sed eveniet asperiores ut. Sit quod pariatur accusamus velit. Sunt sint officiis laudantium ut ut.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(62,1,'et','Eius qui nostrum iusto eos ut voluptas aliquid id. Qui et sint quibusdam ut. Sunt dolore odit rerum enim.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(63,1,'odit','Est quos et itaque quasi nulla. Qui odit atque veniam ea odit inventore error. Aut sapiente illo autem et nostrum vel totam.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(64,1,'officiis','Reprehenderit dolore explicabo rerum dicta molestiae. Ab eaque fugit debitis id. Repudiandae ipsam impedit neque at nesciunt quia quisquam. Harum ad sit accusamus modi.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(65,1,'ab','Molestias sit a sed tenetur facere commodi qui. Sapiente aut ad dolorem omnis. Qui dolore et temporibus inventore.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(66,1,'corporis','Illum suscipit natus est modi sapiente assumenda. Qui consequatur eaque praesentium ut. Est pariatur fugit et explicabo quaerat.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(67,1,'perferendis','Recusandae facere a voluptatem soluta id magni ut. Soluta temporibus cumque dicta et harum unde sint deleniti. Animi ut quis quae eius.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(68,1,'id','Sit necessitatibus aut tempore in architecto in odit. Adipisci velit et totam consequatur veritatis. Accusamus voluptate et sint rerum magni est quia aliquam.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(69,1,'aut','Voluptatem et sit qui impedit dolore eius eligendi qui. Maxime nesciunt totam recusandae. Ex ut quia consectetur sed repudiandae.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(70,1,'quas','Rerum eos officiis ipsam sit. Nam dolorum et eum tempora labore nulla. Eum eveniet odit voluptatem nobis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(71,1,'et','Expedita alias rerum sapiente occaecati porro. Ea deserunt quod animi velit est. Et neque maxime fuga quae eos saepe.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(72,1,'quos','Et non consequatur et fugiat. Illo atque alias est. Dolores in exercitationem aut adipisci. Debitis iste laborum enim hic.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(73,1,'quia','Ut aut tenetur excepturi architecto non. Consectetur qui libero recusandae dolores quis saepe. Tempore deleniti molestias qui voluptate illo odit.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(74,1,'dicta','Sunt est qui magni esse tempore et et ipsum. Praesentium omnis maiores aut error. Tenetur neque porro fugit ut. Possimus et deleniti consequatur nobis recusandae illum.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(75,1,'placeat','Odit fugiat molestiae sit illo necessitatibus. Nulla ab qui accusamus ipsa molestiae tempore. Iure ipsa blanditiis sit ut deleniti perferendis aut. Aut voluptatem et vitae ad est odio velit ab.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(76,1,'ratione','Dignissimos nostrum consequatur voluptatem aut at. Odit voluptatem ipsa in provident blanditiis dolores. Sit quo sit aut sunt aut. Corrupti rerum qui molestiae voluptas.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(77,1,'officia','Eos alias impedit molestiae aut mollitia ea quis. Sint iusto sint ea. Eos et ratione dolorum sed. Aut et facere recusandae ratione est ea explicabo perspiciatis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(78,1,'suscipit','Ab sunt iusto quo. Rerum ratione dolorem architecto iure accusantium totam iusto. Totam necessitatibus molestiae qui dolores culpa.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(79,1,'vero','Earum odio quaerat omnis velit et. Esse eum quia ut ut doloribus voluptate. Qui repellat non facere sed consequatur quos assumenda. Ut eum quia nihil.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(80,1,'dignissimos','Quia deleniti laudantium voluptas dolorem quibusdam qui ullam. Enim non explicabo enim quod eius. Facilis placeat vero cupiditate in.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(81,1,'unde','Voluptas iste at culpa aut blanditiis temporibus. Inventore ad rerum et temporibus nihil. Sed illo alias qui aperiam consequatur velit. Rerum quidem et voluptatem tenetur ipsam animi laboriosam.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(82,1,'aut','Qui sint sed molestiae molestias et neque. Cum necessitatibus magni maxime quaerat. Nam quia voluptas ex et sequi facilis.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(83,1,'quia','Eos voluptas ut dicta non repellat. Quaerat rem atque distinctio eius. Alias impedit et ipsam ut sapiente. Non praesentium consequatur repudiandae numquam nihil vel.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(84,1,'quasi','Omnis architecto voluptas aut nemo voluptas. Ab officiis ut qui. Labore dolor omnis nulla repellat modi quis unde. Deserunt temporibus ut hic ea.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(85,1,'laboriosam','Velit rerum suscipit vel. Ea aspernatur reprehenderit occaecati iure voluptas sed porro aliquid. Magni molestias ratione natus nulla.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(86,1,'blanditiis','Ullam quibusdam dignissimos et quo sed. Magni reiciendis quis officiis facere beatae sint rerum. In sit expedita eum rerum distinctio eum.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(87,1,'quis','Aut eligendi est eligendi. Saepe consequatur est deleniti exercitationem fuga vel ut. Minus voluptas hic voluptate quia.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(88,1,'excepturi','Cupiditate aliquid enim sed ipsum est officiis maxime. Qui autem quis repudiandae ipsa autem illo voluptatibus. Eaque ut assumenda omnis explicabo soluta facere.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(89,1,'nobis','Repellendus omnis non rem similique enim dolores voluptatem. Ea repellendus ipsa commodi sint reprehenderit. Vero quidem aut eos ullam est atque dolore.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(90,1,'incidunt','Exercitationem corrupti dolores consequuntur maxime. Voluptas eos dolore tempora voluptates totam iure magni optio. Sed et sint hic quam tempora aut velit dolores.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(91,1,'consequatur','Nemo et recusandae aut cumque. Et sunt assumenda reiciendis beatae maiores. Saepe itaque libero sit sint beatae nostrum.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(92,1,'vero','Modi alias corporis delectus voluptas. Est suscipit voluptatem ex cum. Qui culpa accusantium deleniti mollitia. Quia recusandae sed qui aliquam natus. Voluptas distinctio minima corporis ipsa facere.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(93,1,'rerum','Vel voluptatibus eaque possimus voluptatem. Quos quia ipsum consequatur ut. Inventore rerum nam delectus fugit est suscipit ut. Modi odio similique ducimus qui sit nihil.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(94,1,'laboriosam','Explicabo dolores nostrum eum ut. Perferendis ut sunt deleniti quasi rerum quia officia doloribus. Velit qui a ipsum ipsa id. Animi ipsa sit aut tenetur dolorum recusandae.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(95,1,'et','Est non ex et voluptas ipsam. In qui sed ducimus sit at aliquid. Et error doloribus accusantium culpa voluptatem ad. Est odit cum corrupti debitis dolore officia.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(96,1,'doloribus','Doloremque nisi rem voluptas nisi nulla hic. Qui odit ab eaque adipisci natus. Voluptas aperiam tempore dolorum a. Consequatur in aut in magni.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(97,1,'ad','Facilis perspiciatis accusantium quo dignissimos velit. Cumque debitis quae ipsum molestiae perspiciatis nobis omnis. Et et consequatur fugit eligendi sint omnis qui maxime.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(98,1,'non','Aut rem et architecto. Officia aperiam ut omnis qui est autem fugiat nemo. Sed accusantium consequatur ut doloremque minima eaque. Veritatis dolore sint architecto magnam illo atque quaerat velit.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(99,1,'ex','Et et rerum aut et velit ut. Nam similique architecto velit rerum aut. Id expedita dolor eius fuga minima.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(100,1,'voluptatibus','Rerum natus eligendi modi provident laboriosam. Excepturi quis pariatur est nisi. Eos omnis vitae omnis id exercitationem nihil. Doloribus ratione excepturi et libero ipsam.',NULL,NULL,'2023-06-20 20:04:32','2023-06-20 20:04:32',NULL),(101,1,'voluptas','Esse explicabo corrupti quibusdam cumque sit. Id ipsum nostrum ut aut sint. Distinctio voluptas totam reprehenderit vel sunt.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(102,1,'ut','Odit accusantium reprehenderit ipsa est natus possimus delectus. Sed voluptatem quo qui. Eum provident et consequatur.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(103,1,'quod','Omnis qui consectetur voluptatibus debitis beatae. Odio reprehenderit omnis et quis. Qui autem quas dolorum id quis soluta esse.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(104,1,'assumenda','Nihil nobis amet repudiandae nostrum est optio. Omnis eaque laudantium eveniet in est dolore quia. Numquam dolorem vel sed nemo aliquam. Et sed quo perferendis mollitia aut iste quia.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(105,1,'necessitatibus','Aut labore nulla consequuntur ipsa incidunt qui. Voluptas numquam error qui sit dolor. Soluta consequatur in nobis nisi illo architecto illum. Sed nam sit aperiam et magnam enim.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(106,1,'iusto','Non nesciunt aut ullam hic possimus. Saepe adipisci natus aut ducimus qui vel sit.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(107,1,'excepturi','Adipisci sapiente nihil in natus id qui ut. Ut autem quia quam quisquam saepe. Aut sunt dolor quia quasi. Aut neque sit atque magnam quisquam.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(108,1,'quo','Repudiandae accusamus blanditiis sunt quis. Quas est nihil neque nesciunt beatae. Ut omnis qui possimus veritatis officia autem minus. Sint nemo velit eos.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(109,1,'autem','Aliquam est id laborum necessitatibus cumque itaque. Dicta sed aliquid enim sunt perspiciatis est. Unde vitae inventore quia aliquid sunt cupiditate. Ullam sapiente qui iste laborum.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(110,1,'asperiores','Deserunt sed neque officiis in nam amet cumque culpa. Et iure quia veniam sapiente aut. Mollitia tempora et doloremque consequatur.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(111,1,'modi','Sint dolores officiis facere rerum. Itaque quo quibusdam sapiente eum officia. Esse ad ea aliquid et vel repellendus.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(112,1,'eligendi','Vero vitae et officia reiciendis fuga ut sint. Dignissimos qui tenetur odio qui culpa. Voluptatibus cumque sequi nemo.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(113,1,'quia','Magnam asperiores qui laborum nemo et odio. Nihil et atque amet ipsa id laboriosam. Minima aut deleniti omnis rerum et sint. Quod ea distinctio ipsam odio minima. Sit officiis unde sed non ea.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(114,1,'aut','Labore enim qui sint sunt. A rem sint ut dolores et quos atque. Et facilis sequi facilis et quia incidunt in non. Saepe voluptatem eos quidem.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(115,1,'reiciendis','Nihil neque sit ea non totam earum. Et explicabo aliquid nisi. Ab maxime et dolorem est magnam. Veritatis ducimus aut eos omnis.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(116,1,'reiciendis','Explicabo modi est nihil ea et. Qui dignissimos labore nobis occaecati eaque earum aut sequi. Eum voluptatem amet voluptatem exercitationem earum.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(117,1,'omnis','Vel est quisquam dolor id nisi. Ut est et neque dolores id doloremque quo. Veniam voluptate nobis officia aspernatur voluptas.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(118,1,'soluta','Ipsa reprehenderit non dolor et minima. Esse voluptatibus soluta quo rerum quaerat et est officia. Iure quae a et similique.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(119,1,'velit','Corrupti porro impedit et et ut ad magnam. Voluptatem dolorem aperiam qui eius. Ut temporibus ipsam pariatur velit impedit. Distinctio quisquam ipsam neque qui.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(120,1,'hic','Nesciunt quia dolorem voluptas asperiores sit ullam. Eos voluptates et temporibus voluptatem illum illum ea labore. Cupiditate id maiores excepturi. Qui et voluptatem qui. Distinctio eaque nam saepe.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(121,1,'sed','Voluptatem quod dolore hic. Ut eligendi velit voluptas velit tenetur. Explicabo est quidem et perferendis.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(122,1,'rem','Occaecati necessitatibus similique quaerat maxime iste quidem eaque illum. Ab consequuntur qui eos ab qui consequatur. Provident laudantium harum ut dolore sit.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(123,1,'inventore','Ipsa dolore quia ratione earum illum magni et. Omnis quia placeat est tenetur reprehenderit. Sequi omnis est cupiditate pariatur voluptatem. Voluptatibus aliquid eveniet est totam.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(124,1,'aut','Laborum harum quam minus dolor. Temporibus ut neque et voluptates aperiam voluptate. Eum rerum distinctio natus et.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(125,1,'mollitia','Commodi rerum vitae similique earum vero qui. Reprehenderit alias facilis in tenetur eos. Non quo a quo facere vel corporis alias.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(126,1,'voluptate','Dolores laudantium esse veritatis et aut suscipit. Repellendus tempora quis soluta at perferendis. Possimus consequatur quae omnis exercitationem est hic tempora.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(127,1,'a','Deserunt nihil debitis veniam animi. Est labore quas eveniet sit repellendus nihil. Distinctio fugiat maxime sunt et. Voluptas cumque soluta dignissimos a in quidem omnis.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(128,1,'voluptates','Nulla ipsa et quia eligendi. Repudiandae ut qui et voluptatem sit dolores illum. Nihil magni cum consequatur est. Delectus aliquid omnis officiis labore veniam.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(129,1,'dolore','In dolorem impedit dicta vero sapiente totam esse. Fugiat quis et saepe consectetur. Ratione modi eaque mollitia atque adipisci quas.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(130,1,'suscipit','Et in nihil ab tempore qui totam. Perspiciatis accusamus vel et possimus non rerum vero. Dolorem eum accusantium consequatur aut deserunt corporis similique.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(131,1,'consequatur','Maiores et ipsum ipsum omnis facilis quia. Illo sit architecto aut expedita explicabo assumenda. Consequatur labore nam explicabo dolor exercitationem ea qui.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(132,1,'vitae','Dolor unde sunt ut natus voluptatem. Non dolores tenetur maiores deserunt. Consequatur eos pariatur fugit sapiente maiores.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(133,1,'tempore','Voluptate voluptatem ipsa deserunt voluptatem tempore debitis ipsam iusto. Sed unde repudiandae incidunt et reiciendis voluptatem. Neque porro et modi.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(134,1,'velit','Dolor veritatis et nostrum qui ea aut. Velit commodi dignissimos voluptas velit quaerat. Accusamus deserunt ratione saepe provident rem et aut. Voluptatum natus aperiam quia sed ad.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(135,1,'esse','Eius qui dolores qui omnis illo quam tenetur in. Dolorum illum dicta sit esse. Facere rerum itaque omnis consectetur.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(136,1,'nesciunt','Est commodi est ullam consequatur quis ut beatae. Ducimus est nisi dolorem. Eum quibusdam error voluptate quaerat mollitia nisi. Quaerat laudantium et totam.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(137,1,'aspernatur','Corporis sunt dolor corporis maiores quos saepe. Reprehenderit vel aut eum et enim dicta id. Voluptates molestias itaque rem earum autem nihil veniam exercitationem.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(138,1,'incidunt','Iste molestiae aut aliquid numquam animi. Dolor fugiat voluptas reprehenderit aut. Ipsum odio dolore sapiente.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(139,1,'ea','Vitae enim dolorum in qui modi qui. Optio iste optio et commodi quo. Vero fuga quaerat rem numquam odit et.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(140,1,'aspernatur','Ipsa iste velit necessitatibus culpa in sed. Ut itaque magni sint sequi quae.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(141,1,'quisquam','Sint omnis corporis aspernatur ut eaque. Voluptate vero dolorem et quae rerum dicta. Esse veniam asperiores veniam amet iure facere. Eum fugiat quo aut et.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(142,1,'ducimus','Et velit ex est et molestiae eum delectus. Modi itaque natus eaque dignissimos. Et qui molestiae ut debitis ut qui. Nesciunt repudiandae rem reprehenderit nihil officiis rem omnis.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(143,1,'ipsum','Consequuntur et dolor ut nihil. Doloribus atque minima ut ut facilis rerum quisquam. Enim cum voluptatem in.',NULL,NULL,'2023-06-20 20:05:42','2023-06-20 20:05:42',NULL),(144,1,'eum','Ipsam eligendi eos quod rerum accusamus molestiae dolorem molestias. Omnis dolorem culpa quod et ea sint ducimus. Voluptate quod deleniti fuga perferendis.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(145,1,'laudantium','Ut consectetur esse dolorem voluptas dolorem officia. Molestias dolor libero aperiam adipisci in qui. Et assumenda beatae vitae. Amet cum unde officiis perferendis et necessitatibus.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(146,1,'eos','Sit ratione dignissimos perspiciatis placeat. Et sit distinctio nam aut ea quia repellendus. Maxime dignissimos a consequatur vel porro. Eos repudiandae qui distinctio veniam quod id minus illum.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(147,1,'non','Repellat aut et corporis. Commodi voluptas ea voluptatem veritatis. Voluptas rem autem vel eligendi consequatur recusandae.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(148,1,'tempora','Voluptatibus harum rerum voluptatem consequatur aliquam. Numquam sed magnam ratione et enim. Omnis qui eligendi ab consequatur inventore.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(149,1,'modi','Voluptatem explicabo et sit cum eum quis atque. Omnis magni qui laudantium esse. Repellat laborum dolores quo et eos.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL),(150,1,'quisquam','Tempore voluptas ab saepe eos. Dolor ipsa ut qui et provident culpa. Dolore voluptas voluptatem rerum accusantium praesentium natus sit. Corrupti qui doloribus ut eos provident.',NULL,NULL,'2023-06-20 20:05:43','2023-06-20 20:05:43',NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_tamanhos`
--

DROP TABLE IF EXISTS `produtos_tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_tamanhos` (
  `id_produto_tamanho` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_tamanho` int(11) NOT NULL DEFAULT '1',
  `preco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produto_tamanho`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_tamanhos`
--

LOCK TABLES `produtos_tamanhos` WRITE;
/*!40000 ALTER TABLE `produtos_tamanhos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id_status` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Novo','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamanhos`
--

DROP TABLE IF EXISTS `tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tamanhos` (
  `id_tamanho` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tamanho` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tamanho`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamanhos`
--

LOCK TABLES `tamanhos` WRITE;
/*!40000 ALTER TABLE `tamanhos` DISABLE KEYS */;
INSERT INTO `tamanhos` VALUES (1,'Unico','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_pagamentos`
--

DROP TABLE IF EXISTS `tipos_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_pagamentos` (
  `id_tipo_pagamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_pagamento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pagamento`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_pagamentos`
--

LOCK TABLES `tipos_pagamentos` WRITE;
/*!40000 ALTER TABLE `tipos_pagamentos` DISABLE KEYS */;
INSERT INTO `tipos_pagamentos` VALUES (1,'Não definido','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `tipos_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_pedidos`
--

DROP TABLE IF EXISTS `tipos_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_pedidos` (
  `id_tipo_pedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_pedido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_pedidos`
--

LOCK TABLES `tipos_pedidos` WRITE;
/*!40000 ALTER TABLE `tipos_pedidos` DISABLE KEYS */;
INSERT INTO `tipos_pedidos` VALUES (1,'Não informado','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `tipos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_produtos`
--

DROP TABLE IF EXISTS `tipos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_produtos` (
  `id_tipo_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_produto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_produtos`
--

LOCK TABLES `tipos_produtos` WRITE;
/*!40000 ALTER TABLE `tipos_produtos` DISABLE KEYS */;
INSERT INTO `tipos_produtos` VALUES (1,'Não informado','2023-06-20 19:24:00','2023-06-20 19:24:00',NULL);
/*!40000 ALTER TABLE `tipos_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cargo` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Thomas Melo','thomas.cmelo@sp.senac.br',1,NULL,'$2y$10$xvN.T8gw0Th.6aVUuwskZeLgYxCKJJCZYPGShHmokrv.5uQ/DR/U2','GDNjMPd0LiUiVvBnjuUHqpqxpVmsRhji71WsxDNUnh95itUyNe7bKNPL7TFQ','2023-06-15 18:56:01','2023-06-15 19:42:55',NULL),(2,'Lara Camacho','sofia64@example.com',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WcJ5VUaUXU','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(3,'Anderson Fábio Valência','samanta.garcia@example.net',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BvwSyulKKs','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(4,'Dr. Joyce Marques','maraisa99@example.net',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ml8j8Sr7VU','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(5,'Sr. Nero Santos Zambrano Jr.','noeli03@example.org',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BPoiSeiepI','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(6,'Christian Grego Franco Filho','ian26@example.com',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','l188i5VKw5','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(7,'Sra. Natália Barreto','ramos.dayane@example.net',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XHOzjAj4R0','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(8,'Milene Barros Neto','aguiar.louise@example.org',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YaIikKOkqr','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(9,'Sr. Robson Salazar Neto','hugo55@example.com',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2cnTyQ8xth','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(10,'Sr. Marcelo Estrada Ramires','rangel.bernardo@example.net',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EP8mkrfmXn','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL),(11,'Cláudio Rangel Neto','ypena@example.org',1,'2023-06-20 19:47:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','o0MnW1zX4p','2023-06-20 19:47:40','2023-06-20 19:47:40',NULL);
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

-- Dump completed on 2023-06-22 17:26:46
