-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 05, 2020 at 03:37 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_laravelapidevelopment`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(53, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(54, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(55, '2016_06_01_000004_create_oauth_clients_table', 1),
(56, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(57, '2019_08_19_000000_create_failed_jobs_table', 1),
(58, '2020_08_31_015600_create_products_table', 1),
(59, '2020_08_31_015739_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6b0ae41480a56c12ea8d06c21daf828e2c4ff33de91d8c3032d113c3169426d47ee2e59c78ccf461', 1, 2, NULL, '[]', 0, '2020-09-04 21:23:58', '2020-09-04 21:23:58', '2021-09-05 03:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SinFLWOlhPsBNJTHTGVDCn6flCaMuk58n9ZWEPNa', NULL, 'http://localhost', 1, 0, 0, '2020-09-04 21:23:17', '2020-09-04 21:23:17'),
(2, NULL, 'Laravel Password Grant Client', 'zyiok1kj2Q7l992V3LBjRm7sOkh0RdNHZFH8peII', 'users', 'http://localhost', 0, 1, 0, '2020-09-04 21:23:17', '2020-09-04 21:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-04 21:23:17', '2020-09-04 21:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('b4034de90894024c3c36007e36363832aac89a231c9240d8c91228dd6fe539ed65769533f7aeb588', '6b0ae41480a56c12ea8d06c21daf828e2c4ff33de91d8c3032d113c3169426d47ee2e59c78ccf461', 0, '2021-09-05 03:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 3, 'velit', 'Nemo optio omnis voluptas vitae ut officia. Cum adipisci adipisci omnis ut. Repellat dolorem non omnis totam praesentium quae.', 636, 0, 15, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(2, 2, 'quidem', 'Et voluptatem illo ut illum iure nihil eaque quam. Commodi dolorem alias fuga molestiae asperiores quia. Ut est voluptatem quas soluta unde non. Quas est incidunt magni odio sit aspernatur.', 608, 0, 18, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(3, 5, 'dolorem', 'Temporibus asperiores repellat fugiat similique. Non qui ut quo vero. Ex maxime amet quia consequuntur.', 541, 9, 24, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(4, 1, 'New Updated Name', 'Voluptas qui aut voluptatem numquam debitis quo ex aperiam. Sit doloremque omnis ullam autem sint consequatur. Quidem eveniet eligendi suscipit et rerum. Dolor voluptas dignissimos quisquam.', 893, 4, 19, '2020-09-04 21:23:07', '2020-09-04 21:34:55'),
(5, 2, 'est', 'Ducimus ea cumque rerum dolore eaque voluptate illo. Culpa expedita sequi in ut dicta sit.', 815, 0, 25, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(6, 3, 'ea', 'Aut repellat quis optio perferendis facilis. Deserunt molestiae totam hic et accusamus iste voluptas et.', 620, 0, 9, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(7, 3, 'quia', 'Esse eius doloribus in nisi. Quia blanditiis eaque debitis officia itaque dolorem. Sed et nulla nihil voluptatum.', 712, 9, 10, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(8, 3, 'itaque', 'Sint omnis sit rerum placeat ratione mollitia. Odit consequatur eveniet aspernatur et omnis. Magni harum iure et libero iure animi dolore. Voluptates nisi qui et omnis. Voluptatem recusandae ut odit non.', 328, 3, 21, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(9, 3, 'sapiente', 'Quo inventore esse molestiae. Deserunt tempore eum iste nulla porro reprehenderit qui. Earum sequi asperiores maiores. Sed excepturi ullam deserunt laudantium similique ab eaque.', 242, 9, 13, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(10, 4, 'laboriosam', 'Rerum non maxime fugiat sit aliquid rerum perferendis. Harum unde ratione explicabo id eaque culpa. Fugit voluptas eaque maiores facilis qui. Consectetur soluta est quidem impedit et non.', 146, 4, 4, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(11, 2, 'corrupti', 'Cum labore maxime itaque iusto quaerat provident. Quaerat eum neque minima voluptatibus. Repellat laborum cum tenetur nulla sint. Et ipsam culpa tempora quia aut eum omnis.', 693, 0, 22, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(12, 1, 'ducimus', 'Harum et placeat reiciendis iusto quia ipsa ut. Modi perferendis esse placeat accusantium. Omnis eum atque officiis labore non. Est aut qui reiciendis necessitatibus qui consequuntur veritatis. Ad modi quas quos sed.', 605, 5, 13, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(13, 2, 'dolor', 'Iure modi et dolorem rerum illo atque dignissimos tempore. Enim fugit ex similique occaecati voluptas vel harum. Sed dicta pariatur maiores rem quia. Dolores quibusdam laboriosam consequuntur laudantium. Neque facere distinctio exercitationem autem.', 534, 1, 14, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(14, 5, 'voluptas', 'Autem at soluta nobis quaerat voluptas. Doloremque eum sint at ducimus eaque. Officiis amet quam natus voluptatem. Consequatur maxime ad sint expedita.', 412, 1, 27, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(15, 1, 'ut', 'Repellendus maxime ut dignissimos quam. Neque recusandae officia est. Porro quo aspernatur sequi et earum quis. Quaerat laudantium accusantium laboriosam.', 908, 9, 10, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(16, 2, 'et', 'Exercitationem nisi eum vel nostrum soluta fugiat qui. Velit libero quasi possimus debitis est nemo totam sed. Voluptas minus nisi incidunt odio quod voluptatum illum.', 277, 5, 2, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(17, 3, 'et', 'Odio enim nihil consequatur veniam debitis autem eveniet excepturi. Doloribus reprehenderit corporis aut. Id qui sit molestiae et ea quia necessitatibus nobis.', 477, 2, 29, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(18, 5, 'explicabo', 'Exercitationem aperiam atque qui corporis est ad unde consectetur. Magni reprehenderit aliquam rerum nam voluptate. Quia explicabo ut fugit deleniti voluptates eos.', 967, 4, 21, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(19, 4, 'modi', 'Magni qui atque sint est omnis. Quod quia libero mollitia vel assumenda. Sunt praesentium enim illum at et assumenda. Sed veniam aliquam eos ut dolor corporis.', 353, 3, 21, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(20, 4, 'minima', 'Iure sequi vitae ratione eos. Aut esse quo reiciendis quis voluptatem voluptatum. Facere dolores nisi sed natus quis. Quasi saepe beatae nostrum et. Laudantium maiores tempore asperiores debitis inventore quia enim.', 343, 7, 14, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(21, 3, 'voluptas', 'Temporibus esse dolores cumque assumenda. Est in non et voluptatum exercitationem dolorum. Tenetur labore dignissimos et corporis error iusto. Quo quaerat id quia.', 537, 0, 5, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(22, 3, 'esse', 'Aut vel quo sed laboriosam est sed adipisci. Quibusdam quia et fugit aperiam harum nesciunt. Occaecati et saepe hic suscipit qui dolorum perferendis sit. Est labore rem officia et molestiae est.', 201, 7, 12, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(23, 3, 'odit', 'Facere aliquid non cumque et illo omnis. Optio modi quia beatae modi. Velit ipsum soluta voluptatum aspernatur voluptatem.', 865, 7, 8, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(24, 1, 'non', 'Commodi molestiae incidunt nesciunt qui et eveniet voluptatem. Ipsum voluptas perspiciatis nemo dignissimos et quia.', 979, 7, 20, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(25, 4, 'qui', 'Suscipit est ea quasi explicabo autem amet similique quia. Fuga soluta temporibus similique dolore facere quia. Et voluptates nihil quaerat iure aut ut rem.', 105, 5, 11, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(26, 3, 'in', 'Ducimus consequuntur maiores libero ea ut voluptatem nam. Ea impedit et aut aut quae facere. Est perferendis in ipsam officia vitae qui voluptatibus. Voluptatem porro iure atque autem repellat inventore.', 894, 2, 12, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(27, 5, 'consequatur', 'Quia rerum aperiam ex velit in repudiandae incidunt. Amet et consectetur aliquid veniam excepturi. Accusantium veniam ut a delectus est dolorem vel.', 829, 8, 24, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(28, 5, 'adipisci', 'Quae velit repellat et reiciendis sint adipisci velit molestias. Possimus ea eum minus asperiores excepturi dolor rerum consectetur. Quo repudiandae tenetur sapiente explicabo dolor non dolorum qui.', 986, 6, 25, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(29, 2, 'beatae', 'Ea qui dolor harum aut non. Enim beatae consequatur molestias expedita. Laboriosam eum quaerat et temporibus et blanditiis.', 551, 7, 14, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(30, 5, 'accusamus', 'Provident et quidem et laborum qui mollitia nesciunt. Ut blanditiis beatae aut vel repellat. Harum officia molestiae fugiat vel.', 723, 5, 7, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(31, 3, 'et', 'At repellendus quis dicta velit ipsa. Blanditiis eum expedita aspernatur perspiciatis iste asperiores quaerat. Rem enim voluptatem magni dolor quas. Et deleniti ex iusto necessitatibus blanditiis.', 120, 5, 30, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(32, 3, 'ipsa', 'Qui facilis quibusdam est enim sequi voluptatem quia. At qui maxime quod non unde aliquam ea. Quia voluptatem totam omnis quasi.', 596, 7, 10, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(33, 5, 'occaecati', 'Fuga enim sit neque voluptates quos quia atque. Consequatur deserunt distinctio molestiae ducimus et. Tempora quod temporibus rerum fugit exercitationem. Ratione repellendus illum assumenda maxime odio molestiae. Est distinctio tempore libero deleniti.', 337, 2, 11, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(34, 1, 'vel', 'Cum ullam dolorum pariatur neque. Soluta velit minima aut exercitationem. Voluptatem quia in error laudantium fugiat.', 288, 1, 22, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(35, 4, 'porro', 'Architecto eveniet earum vel voluptas dolores illo accusamus nihil. Nam quo repellat deleniti possimus. Quis iusto labore eos id. Et a consequuntur quia fuga dignissimos non dolorum.', 594, 5, 29, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(36, 4, 'est', 'Consequatur repellat et maxime neque debitis. Illum aut harum sit esse reiciendis eaque necessitatibus.', 753, 8, 27, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(37, 3, 'rerum', 'Delectus quis voluptatum earum minus qui aut vel saepe. Facilis atque voluptatem voluptatem quaerat. Sint porro asperiores optio sint.', 887, 5, 11, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(38, 5, 'eum', 'Repellat libero voluptas vero ut impedit ab sapiente. Et voluptas nulla animi nesciunt. A laborum quisquam commodi placeat quasi corrupti sunt. Fugit eveniet deserunt pariatur ab suscipit dolor quisquam alias.', 205, 1, 5, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(39, 4, 'nihil', 'Perspiciatis aut iure nihil similique. Expedita modi iusto tempore. Illo est qui harum ducimus aut perferendis.', 451, 8, 25, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(40, 5, 'cupiditate', 'Qui facilis suscipit est cumque. Autem ut ut quasi eum. Quis ab nihil nihil qui accusamus quia ea. Eligendi asperiores est consequatur aliquid aut enim.', 382, 9, 19, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(41, 1, 'eum', 'Consequatur occaecati incidunt et sit saepe rerum. Laboriosam laudantium labore magni quos rerum perspiciatis. Quia itaque distinctio qui magnam ipsa consequatur neque. Aut animi voluptatem aut quisquam illum.', 600, 9, 15, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(42, 1, 'quia', 'Voluptatum similique alias iste tempore quo pariatur. Officiis molestiae est hic quidem aut. Harum at unde fugit quis voluptate.', 283, 8, 19, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(43, 4, 'quo', 'Odio et sit repellendus quia. Sequi odio in voluptate voluptatibus aspernatur dolores. Labore inventore odio a esse error dolores et.', 821, 1, 3, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(44, 1, 'vel', 'Sit pariatur esse debitis et blanditiis ut. Est harum dignissimos rerum doloremque natus. Iusto autem commodi iste sunt. Aut et consequatur quis recusandae.', 943, 1, 13, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(45, 4, 'odit', 'Dolores omnis aliquid incidunt rerum qui eligendi. Iure dolore perspiciatis quae autem. Ea dolores eos et blanditiis aliquam. Pariatur pariatur dolorem voluptatem et aut adipisci. Quae et distinctio et harum laudantium et nobis veniam.', 841, 8, 21, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(46, 1, 'nihil', 'Neque animi sit error omnis molestiae repellat perspiciatis. Id magni aliquam delectus nihil rerum adipisci. Itaque eum quis dolore ad distinctio.', 749, 6, 22, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(47, 1, 'maiores', 'Amet quo qui quae maiores qui nesciunt quo. Animi et quis quibusdam hic. Explicabo exercitationem nostrum et blanditiis neque natus temporibus. Ut totam quia qui ipsum commodi vel. Corporis voluptatem voluptatibus illum doloribus dicta atque.', 650, 4, 23, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(48, 5, 'quaerat', 'Quod deserunt facilis tempore corporis tenetur. Debitis eum nostrum at tempore sit. Ipsa eaque et expedita ducimus. Aspernatur dolores incidunt aspernatur at amet voluptatem quis.', 298, 9, 8, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(49, 5, 'ut', 'Consequatur at ut vel occaecati enim. Nihil provident eaque reiciendis dicta maxime. Voluptas et ullam est suscipit nesciunt eveniet minus.', 551, 5, 15, '2020-09-04 21:23:07', '2020-09-04 21:23:07'),
(50, 1, 'reprehenderit', 'Qui mollitia temporibus est quaerat a. Id est nihil ea officiis ut. Ex dolores aut nihil doloremque et.', 904, 9, 16, '2020-09-04 21:23:07', '2020-09-04 21:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 7, 'Tia Ritchie', 'Odit alias illum et doloribus temporibus ut commodi. Quidem voluptatem et beatae consequatur nostrum. Accusantium assumenda officiis velit assumenda sit est maiores optio.', 0, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(2, 50, 'Jasper Steuber', 'Omnis qui repellat quos voluptatem accusantium quia. Velit eos aliquam consequatur accusantium sit consequatur. Odit est rerum officia velit. Architecto eum ut eum est.', 4, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(3, 37, 'Kaylin Russel', 'Id magni et eum ratione. Omnis aut natus dolores impedit quo similique accusamus modi. Enim vel vel voluptatum et rerum sapiente incidunt. Error voluptatem id asperiores in pariatur.', 3, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(4, 20, 'Carolanne Raynor', 'Aut et fuga tempora. Debitis repudiandae nihil necessitatibus minima libero et quod. Quasi cum sit eos officiis ipsam animi.', 2, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(5, 15, 'Rhiannon Gleichner', 'Dolor saepe consequatur atque cupiditate. Eum et illum tempora. Eos dolor ipsum tempora explicabo. Dolorem corrupti tempora aliquid laudantium numquam ex.', 5, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(6, 26, 'Preston Kshlerin', 'Ducimus totam non et quia. Laudantium modi sapiente ea nesciunt. Et facere eligendi dignissimos dolor doloribus facere. Blanditiis eveniet ad aspernatur repellendus dolorem.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(7, 4, 'Nicole Kris', 'Rem et facilis eius odit autem quis veritatis. Est ipsam delectus recusandae exercitationem et. Quisquam sed incidunt voluptatem pariatur molestiae accusamus ut. Ab possimus laudantium est blanditiis qui.', 0, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(8, 42, 'Gillian Kutch', 'Veritatis fugiat odit accusamus ab laudantium. Voluptatem sed libero laborum eius voluptatem nam aut. Qui quaerat non aliquid impedit nihil qui. Beatae quod laudantium quaerat voluptas quidem quae.', 2, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(9, 14, 'Eloisa Block', 'In sit fugiat magnam numquam maiores. Similique quia qui modi provident. Nobis dolor cumque quasi aspernatur commodi sed repellat magni.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(10, 2, 'Mrs. Anastasia Greenfelder II', 'Accusantium rem consectetur aut qui tempora. Consequatur quibusdam omnis aut sed. Corporis sit debitis voluptas corporis facilis quod. Omnis corrupti quis corrupti corporis quo quis porro.', 5, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(11, 6, 'Mozell Wolf', 'Odio dicta vitae maiores qui in. Aspernatur qui corporis rerum aut officiis eos dolores. Est aut et dolorum consequatur. Debitis similique expedita inventore aut qui odio.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(12, 36, 'Dr. Erik Yundt', 'Expedita quia et consequatur facilis provident expedita. Esse quis iure vero id ipsa neque. Quae adipisci blanditiis omnis est iste.', 0, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(13, 29, 'Dr. Immanuel Windler PhD', 'Veritatis quod nisi nihil quibusdam in voluptatem nemo. Necessitatibus non quo ea sed. Qui cum reiciendis velit officiis velit natus.', 2, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(14, 50, 'Elinor Renner', 'Blanditiis et voluptatem quaerat illo deleniti. Ut laboriosam harum eius consectetur. Cumque minus et amet voluptates et mollitia ut. Quia iste architecto iusto reprehenderit ut dolorem.', 5, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(15, 7, 'Mr. Louie Conn Sr.', 'Voluptatibus labore vitae sed delectus sed. Quaerat qui dolores cumque ipsum. Dolor velit sed nihil totam. Quidem voluptas sequi ipsum sit pariatur.', 2, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(16, 2, 'Adelle Runte', 'Pariatur adipisci est est voluptatibus et laborum odit in. Aperiam eligendi ut nemo fuga alias repellat. Ipsam laborum quae expedita asperiores at. Blanditiis cupiditate explicabo id et ab enim nemo. Consequatur soluta aut explicabo quia consequatur ut eos et.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(17, 40, 'Prof. Albina Rowe', 'Ea occaecati dolorem consectetur tempore nobis exercitationem. Autem molestias voluptate sunt ratione. Quod non sit eos ratione quia quasi. Voluptas voluptatibus tempora labore itaque explicabo iste omnis.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(18, 17, 'Barry Heidenreich IV', 'Id quidem voluptatum esse aliquid quos et. Ratione accusamus blanditiis dicta veniam impedit odio dolorem. Laborum perspiciatis et iste vero ut facilis fuga. Saepe unde repellat accusamus incidunt at nobis rerum.', 1, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(19, 40, 'Judah O\'Reilly DDS', 'Dolorem soluta rerum voluptatem quo et. Ut consequatur nobis reprehenderit hic aspernatur. Qui pariatur quasi ex. Eaque dolore est occaecati vel.', 2, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(20, 44, 'Zion Friesen', 'Earum suscipit rerum harum praesentium aut modi. Aut ad sed molestias laborum est. Qui fugiat delectus temporibus eaque saepe ipsum. Debitis iste iste in dolorum minus architecto.', 5, '2020-09-04 21:23:08', '2020-09-04 21:23:08'),
(21, 12, 'Osbaldo Ward', 'Aspernatur odit quod enim eos quo laborum fuga molestiae. Praesentium aliquam nam sit cumque ut. Id nemo reiciendis molestias ullam hic.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(22, 43, 'Luigi Kulas MD', 'Vel architecto numquam repellat saepe. Tempore sit non sed explicabo et occaecati reiciendis.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(23, 24, 'Vincent Dickinson', 'Soluta sapiente vel unde in tempore numquam. Adipisci aliquid quasi sit voluptas molestiae. Eaque deleniti qui praesentium reiciendis sed laborum. Minima quasi qui natus eaque.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(24, 13, 'Norbert Ankunding III', 'Eum consectetur explicabo similique dolor expedita excepturi voluptate quaerat. Blanditiis est et quibusdam pariatur fugiat. Doloremque eligendi quisquam explicabo corrupti.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(25, 8, 'Kenyatta Funk', 'Similique deleniti quis enim deleniti hic quaerat. Temporibus voluptatem atque sit aut molestias vel est. Dolor adipisci possimus quo maiores explicabo ipsa asperiores. Exercitationem dolorem id id quidem qui.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(26, 24, 'Devyn Cummings', 'Dolores error quod velit non quos voluptatem. Molestias optio quam asperiores aut officiis doloribus eos. Ut porro sit non tempora inventore exercitationem molestiae eos. Omnis dolor consequatur corrupti sit minima. Est iure nisi consequuntur ut fugit et.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(27, 32, 'Viola Gorczany', 'Nulla magnam veritatis fugiat veniam. Esse et voluptatem tempora debitis. Similique recusandae ut inventore expedita. Nostrum corporis fugit molestiae.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(28, 35, 'Mr. Jeramy McGlynn', 'Delectus porro sit sed velit sequi quo. Officia suscipit tempore aut est eius ex laborum. Totam quo excepturi qui tenetur. Error voluptas voluptas odit voluptate eos est.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(29, 33, 'Thelma Yundt', 'Et ea odio commodi veniam ut. Tenetur fuga est quaerat nam explicabo. Enim voluptas natus voluptatem delectus a nobis atque.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(30, 34, 'Mara Mosciski', 'Id dolorem et reprehenderit temporibus et tempore inventore. Deleniti nihil magni cupiditate. Pariatur provident tempore repudiandae sapiente. Et quo maiores dolores qui iusto natus.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(31, 19, 'Davion Sipes', 'Iure maiores temporibus aperiam amet vitae. Suscipit molestiae beatae earum sit. Omnis vel voluptatibus culpa.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(32, 18, 'Esther Hegmann', 'Ipsa quibusdam repudiandae et soluta nesciunt consequuntur quae. Tenetur quidem voluptatum culpa molestiae sint.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(33, 22, 'Lesley Gislason', 'Tenetur voluptatem natus labore provident dolor iure dolor. Aut accusantium occaecati nesciunt.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(34, 9, 'Lizeth Cummings IV', 'Labore aut ipsum atque vel. Sit alias at est et eaque dicta rerum. Quia et ut possimus soluta culpa unde.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(35, 43, 'Loyce Kub', 'In dolores error quis minima mollitia consequatur quia culpa. Ut unde quisquam reprehenderit ut delectus officia consequuntur. Velit itaque et cumque qui.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(36, 12, 'Prof. Vidal Kautzer MD', 'Aut possimus libero voluptates at sed labore. Doloremque veniam adipisci molestias repellat quis nihil. Neque voluptatem et sunt et quo placeat.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(37, 45, 'Jeromy Klein', 'Dolorem inventore distinctio occaecati quidem et dolor. Voluptatibus et sit aut exercitationem et asperiores labore quos. Aut qui enim labore beatae nemo illum.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(38, 5, 'Marisa Crist', 'Voluptate qui blanditiis velit omnis sint non. Dignissimos distinctio aliquid fugit est voluptatibus. Tempore magni repellat occaecati ut autem.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(39, 2, 'Bernie McGlynn', 'Placeat ut eos itaque non occaecati. Dolorum at minus impedit debitis nesciunt dicta. Repellat voluptas voluptates nulla animi.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(40, 43, 'Mozell Herzog', 'Veritatis doloremque laboriosam officiis inventore. Voluptatibus dolor iure et odio. Libero necessitatibus laudantium ducimus aspernatur maxime non non. Laboriosam non tempora quam ab. Debitis qui quibusdam velit ratione expedita omnis aspernatur.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(41, 9, 'Skye Boyle', 'Et et amet libero ut et sit. Animi ea ipsum in in esse dignissimos. Architecto aperiam ratione sint minus. Et esse et rem.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(42, 11, 'Ms. Margarete Stroman', 'Neque eum est deserunt aut. Voluptate placeat dolore rerum ut magni est.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(43, 22, 'Araceli Gorczany', 'Rerum sed est ut consequuntur ducimus. Necessitatibus est distinctio omnis excepturi qui impedit quam quibusdam. Et non commodi ipsa sit ut.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(44, 44, 'Berenice Lubowitz IV', 'Vel consectetur aliquid minus autem ratione porro. Error sequi natus voluptatem accusamus rerum laudantium minima et. Libero neque aut et omnis dolores provident aliquid. Ut voluptatum eligendi et et quasi.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(45, 16, 'German Hudson', 'Recusandae aperiam iure reiciendis reprehenderit porro explicabo. Et hic aut quia reprehenderit eum. Ut impedit et aut libero. Delectus atque repellendus perspiciatis numquam tenetur at maxime dolorem.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(46, 39, 'Rusty Bartell', 'Illum voluptates ipsam id. Totam numquam sint velit officiis at. Omnis error error sit sint ipsum omnis nulla non. Nulla accusantium ut cum id reiciendis.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(47, 14, 'Glen Schiller Sr.', 'Voluptas ut sequi ratione. Enim ducimus enim et nesciunt neque ipsam et. Nihil quam dignissimos totam sed esse ut. Eveniet aut dolorem quaerat corrupti excepturi. Facere reiciendis molestiae esse consectetur et quidem.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(48, 21, 'Ms. Tabitha Lubowitz MD', 'Non esse repellendus molestiae corporis velit et. Molestiae voluptatem ratione aut. Qui autem ut reiciendis ea architecto.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(49, 20, 'Kaci Leffler', 'Vitae quibusdam facilis et voluptate rerum. Quos asperiores voluptatem quia recusandae similique ad vel. Consectetur iusto et non modi et.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(50, 7, 'Miss Alverta Rempel', 'Rerum natus repellendus omnis unde quia at. Beatae sed eveniet earum vitae reiciendis facilis numquam. Quasi enim ut quia magni sit dolor illo. Et adipisci provident vel soluta.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(51, 25, 'Mrs. Hope Rippin MD', 'Sequi rerum dolores dolores dolorem vitae aliquid dolore. Possimus repellat sed amet alias odio porro. Voluptatem veniam officia eveniet voluptatibus. Mollitia at nesciunt illum molestiae.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(52, 30, 'Dillon Fadel', 'Velit natus ratione autem vel recusandae. Nihil aliquid iure corrupti perferendis illo. Sunt deleniti officiis quia eligendi.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(53, 41, 'Rex Klein', 'Tempora quidem vel fugiat perspiciatis corporis consequatur sapiente dolores. Veritatis eaque sed iure est. A magnam voluptatem dolorem.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(54, 22, 'Rogers Buckridge', 'Et sunt aliquam assumenda possimus. Perspiciatis expedita explicabo ea ipsam. Ut quae laudantium facere eum.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(55, 19, 'Prof. Hellen Thompson', 'Quam illo est ut est. Libero aut eos culpa et dolorem quia id. Adipisci qui quaerat libero ad. Reiciendis nihil dolorem adipisci exercitationem quo.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(56, 12, 'Ms. Hertha Green I', 'Est fugit vitae voluptatem quam enim sed velit. Eos molestias qui laudantium nulla excepturi voluptatem autem. Quia explicabo delectus commodi esse ut voluptates ipsam. Excepturi rerum consequatur modi assumenda.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(57, 15, 'Golden McClure', 'Sed ut qui sed dolor ut. Necessitatibus saepe voluptas optio neque. Praesentium qui neque possimus quis omnis deleniti. Possimus similique ex labore aliquid suscipit blanditiis voluptate.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(58, 27, 'Nella Spencer PhD', 'Qui sit nobis autem id consequatur. Qui harum architecto consequuntur. Quia sed rerum rerum nobis.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(59, 21, 'Macy Langworth II', 'Provident quo omnis et eveniet. Quibusdam repellat doloribus et sapiente modi et et. Explicabo quae soluta magnam tenetur omnis.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(60, 31, 'Devan Johns', 'Molestiae labore dolore et. Doloribus quibusdam harum animi dolores debitis totam. Illo vero atque facilis autem dolor. Ut velit doloribus perspiciatis vero perferendis nam id eaque.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(61, 37, 'Alden Hartmann', 'Soluta voluptatum animi atque est animi fugiat numquam. Et sunt aliquam dolorum ipsum ut. Labore fugiat odit dolores dolor porro est. Voluptas vitae voluptatum in aliquid et voluptatem quaerat quia.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(62, 38, 'Dayton Kassulke DVM', 'Ipsum sint suscipit nihil voluptatibus. Vitae officiis repudiandae illo deleniti. Labore expedita voluptatem ut quis deleniti esse. Aperiam repellendus voluptatem maiores ad voluptatem omnis. Omnis fugit officiis reiciendis quaerat ut.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(63, 48, 'Mr. Jordy Bauch', 'Velit et ut iure. Ut eum ut asperiores nisi. Tenetur animi harum ipsam illum harum. Assumenda nostrum doloremque fuga esse molestiae ipsam libero quibusdam.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(64, 4, 'Hunter Ruecker', 'Ut cumque omnis natus numquam aut voluptas. Quis voluptas sit doloribus. Atque blanditiis asperiores nihil vel.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(65, 3, 'Prof. Lesley Beer PhD', 'Quo eos est reiciendis in quis tempore omnis. Eum explicabo alias minima culpa omnis doloribus perferendis. Quia ipsam aut unde sunt facere enim eius. Reprehenderit provident ipsam sit et.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(66, 50, 'Lennie Lynch DVM', 'Quidem rerum facilis omnis qui qui similique deserunt. Exercitationem voluptas doloribus in explicabo aliquid dicta libero et. Blanditiis asperiores sit quisquam iusto alias eligendi vel.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(67, 46, 'Dr. Kaylah Brown', 'Voluptas sint pariatur distinctio nam iste nesciunt non. Consequatur pariatur doloremque repellendus quasi iste ea quia. Culpa velit dolore dolor est veniam dolores autem. Eligendi temporibus et sequi.', 1, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(68, 34, 'Maiya Tromp', 'A provident quasi impedit occaecati commodi maxime. Nostrum dolores aliquid magni provident. Sunt rerum consequatur sit repellendus voluptas deleniti. Animi eum at voluptatum impedit sequi dolor.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(69, 21, 'Dr. Aaron Hill I', 'Perferendis quisquam sequi sint deserunt. Debitis qui quia quisquam. Nihil ut quas non repellendus nulla perferendis. Itaque rerum sunt ea saepe. Et qui vero et ut quam.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(70, 15, 'Wilmer Rau', 'Officia aut veniam eligendi omnis quo quo doloribus voluptatum. Laudantium facilis quas porro libero corporis. Optio labore totam adipisci fuga occaecati tempore iste.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(71, 15, 'Mr. Paolo Grady', 'Et odit ratione voluptatem facere. Nam est velit architecto quia et officiis omnis. Repellendus autem nisi doloremque et minima.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(72, 39, 'Dell Hermiston', 'Temporibus possimus totam totam nobis quibusdam autem cupiditate. Inventore omnis voluptates velit ducimus tenetur molestiae eum. Et quisquam tenetur ut vel. Atque animi consequatur quam.', 3, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(73, 10, 'Barry Bartell PhD', 'Repudiandae nemo natus ipsum nulla nemo. Sit autem repudiandae non et debitis rerum dolores. Et quos occaecati libero illo. Adipisci omnis id ea excepturi. Suscipit illo numquam dolor optio.', 2, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(74, 44, 'Mohamed Will', 'Dolores sunt repellendus voluptas recusandae omnis qui. Nemo qui asperiores quis. Exercitationem inventore et assumenda nesciunt ad et. Praesentium iste odio enim aut enim.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(75, 17, 'Oswald Yundt', 'Fugit sed ut qui rerum a culpa maiores totam. Fugiat modi facere voluptates saepe qui molestias assumenda. Explicabo dignissimos quas ullam nostrum ex. Consequatur et et ipsum est et voluptas. Nihil blanditiis tenetur quis ratione eaque facilis voluptatem corrupti.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(76, 13, 'Prof. Vivien Wuckert', 'Cum adipisci laudantium et et non doloremque. Esse laborum est excepturi dolorem omnis. Accusamus ipsam totam et soluta voluptas.', 0, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(77, 19, 'Mrs. Kiarra Will PhD', 'Quidem consequatur velit ipsam provident. Autem minima dolores dolore autem nemo qui eum. Reiciendis atque et sint numquam ad fugit. Qui omnis sint iste impedit laboriosam.', 4, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(78, 19, 'Kendra Bernier', 'Occaecati impedit autem reiciendis at nam sit voluptas. Ut vel ipsa ipsa corporis ut sint nulla. Ab autem ut labore nobis non iure ut.', 5, '2020-09-04 21:23:09', '2020-09-04 21:23:09'),
(79, 44, 'Dayne Schulist', 'Voluptatem sint possimus enim qui accusantium omnis et. Voluptatem qui ut tempore eos vero officiis doloremque. Voluptatem quia qui aperiam eligendi temporibus et quibusdam ullam.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(80, 17, 'Loraine Corwin', 'Ut inventore autem et dignissimos ab consequatur. Voluptatibus repudiandae iste molestiae. Accusamus qui eos quia expedita voluptatum qui ratione.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(81, 13, 'Miss Maddison Ortiz', 'Nulla accusamus eos eos odit praesentium necessitatibus. Quod voluptatem ut natus et debitis nobis. Consequuntur fugit repudiandae fuga et. Et voluptatem tempora fugit doloremque.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(82, 35, 'Jewel Ferry', 'Expedita nihil et necessitatibus officia dolor quaerat perspiciatis. Et saepe est minus pariatur dignissimos voluptatem sit rerum. Autem non et quam. Qui quod alias facilis quas voluptatem. Repellendus ipsum voluptas et ad recusandae cum odio.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(83, 10, 'Miss Alice Crist III', 'Ut beatae eum eos. Eligendi quia molestiae qui iusto. Nihil velit in quaerat cumque. Sit fugiat dolor repellat.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(84, 50, 'Lexus Kuvalis', 'Dolore reiciendis molestiae nisi nesciunt. Qui corrupti et maiores minus deleniti magni expedita. Error aliquam placeat nobis.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(85, 24, 'Mrs. Marlene Wolf', 'Quae voluptatem omnis reiciendis cum voluptatem deserunt. Eaque adipisci ipsum iusto rerum consequatur. Doloremque ipsa aliquam ea autem in qui. Officiis est aut et et est harum est occaecati.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(86, 4, 'Dr. Althea Erdman', 'Minus consequuntur id magni fuga voluptas quibusdam. Qui sed rerum dolor enim aspernatur possimus perferendis. Dolorum et cumque rerum aut aspernatur. Atque molestiae et et sint eius doloremque quas. Voluptates ea voluptate quo beatae pariatur quo nostrum.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(87, 40, 'Amie Abshire', 'Et ad possimus vel rerum numquam repellendus veritatis. Quibusdam rem explicabo ut sint corporis. Possimus ut consequatur natus aliquam sed.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(88, 15, 'Chanel Brakus', 'Et animi labore labore. Ratione iste qui eligendi vel dolor vero voluptatem dolor. Dolorem quidem omnis fugiat quaerat tempora facilis.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(89, 25, 'Dameon Sanford', 'Quia quos ex architecto dolorum. Aliquam modi sed unde vel omnis voluptate est autem. Repudiandae a ut placeat aliquam natus illo. Nesciunt sint quo et qui.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(90, 44, 'Jaqueline Schimmel', 'Autem quibusdam porro error. Aut delectus possimus tempora dolor quam dolore amet. Aliquid recusandae in debitis doloribus maxime itaque.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(91, 14, 'Merl Shields', 'Eum iure ut molestiae repellat. Quo non quia quis atque illum reprehenderit. Atque repudiandae placeat mollitia praesentium deserunt consequatur porro qui.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(92, 1, 'Mrs. Mary Schinner DDS', 'Maiores pariatur fugiat voluptatem ipsam enim nobis. Aut dolores pariatur et. Fuga natus doloribus praesentium adipisci. Et et est aut delectus modi dicta esse. Voluptatem facilis dolor quam eum eveniet deserunt facere.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(93, 44, 'Grant Kilback', 'Qui qui eum enim tenetur rerum ipsa. Excepturi ut laborum officia eos ut sint. Est harum aspernatur blanditiis aut et quia consequatur. Ea dolore error reiciendis architecto libero fuga.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(94, 50, 'Rogers Moore', 'Ipsa repudiandae maxime sunt in et quod. Dicta similique quis facilis aut. Veritatis nihil magni natus et inventore. Deserunt dicta saepe quia in.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(95, 22, 'Deborah Hill', 'Nihil aut dignissimos sequi. Possimus sit harum explicabo quia soluta necessitatibus illum. Modi est assumenda aliquam ut ad ut quae.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(96, 5, 'Mrs. Alda Adams', 'In totam exercitationem temporibus iure ipsum. Est vitae quam modi. Rerum id animi et aut velit et reiciendis.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(97, 48, 'Maymie Orn', 'Blanditiis labore et ipsa aut nulla vitae cupiditate. In aut debitis dolor similique aut est commodi. Excepturi consequatur porro animi voluptas non. Quis perspiciatis dolore accusantium dolores.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(98, 48, 'Mr. Lewis Berge', 'Provident voluptates corrupti explicabo atque nihil odit. Dolore sed in in similique. Perferendis quia occaecati laboriosam. Alias quia quo in eligendi sit hic.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(99, 43, 'Dora Bosco PhD', 'Qui et id facilis est animi officiis. Quo autem quos ea reprehenderit cumque doloremque est. Dolorum voluptatem ipsam sunt eum ipsam ut.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(100, 30, 'Demarco Schmidt III', 'Qui dolore asperiores ut vitae neque non cupiditate. Aut sint saepe ad consequatur incidunt. Et possimus blanditiis a.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(101, 50, 'Ms. Kathryne Leannon', 'Sint occaecati est dolore et repellat. Necessitatibus fugit nihil facere eos perferendis quis. Deserunt velit aliquid tempore quidem autem dolorem dignissimos.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(102, 3, 'Laurie Willms', 'Est accusantium quas qui et veniam non enim quis. Sunt dicta fuga aut nihil eos et occaecati. Voluptatem in repellendus minima qui.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(103, 24, 'Darby Hand', 'Cupiditate dicta assumenda doloribus consequatur blanditiis blanditiis. Voluptatem commodi qui hic sint. Ratione exercitationem dolore quod consequuntur delectus non beatae.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(104, 18, 'Mr. Isidro Farrell', 'Ratione excepturi molestiae ut non placeat unde aut. Sed et quia sit excepturi soluta deserunt aut. Sunt ea autem cumque quia nihil accusamus quo sed. Facere necessitatibus perspiciatis quibusdam asperiores.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(105, 26, 'Dr. Pauline Kertzmann', 'Et magnam illum qui. Magni at est aperiam. Non fugiat dolorem ut quia porro quasi omnis.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(106, 27, 'German Hessel', 'Voluptatum mollitia eligendi enim inventore itaque aut. Voluptatem maiores amet aut aut provident dolorum harum.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(107, 49, 'Ms. Elissa Rau', 'Assumenda sint magni deleniti dolorem nisi. Id voluptates soluta natus minima molestiae ut. Dolorem ducimus quo pariatur ipsa deserunt amet. Reprehenderit neque vitae quis at provident.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(108, 32, 'Bella Barrows', 'Minus maxime excepturi qui voluptas. Voluptatum dolorem quia fugiat a vel. Consequatur sed pariatur inventore ullam molestiae est nisi. Necessitatibus quia id aliquid. Rem voluptas odit quis tenetur tempora vero sit vitae.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(109, 25, 'Marion Lueilwitz', 'Dolor et repudiandae temporibus ex cupiditate neque. Possimus quos iusto facilis. Sequi est dicta id magni ipsam.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(110, 7, 'Hobart Kunde', 'Ab voluptas dicta earum blanditiis quasi et. Laboriosam ut fugit numquam quod et quaerat. Quia magni sit in nostrum.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(111, 6, 'Prof. Ressie Weber', 'Eaque velit pariatur aperiam dignissimos consequatur omnis. Nihil possimus laudantium et aut. Quisquam dolorum adipisci omnis rerum quis ut. Doloribus numquam nisi sapiente aut id.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(112, 48, 'Everardo Hyatt', 'Autem omnis sequi dolores dicta. Ut enim nam saepe enim libero blanditiis sit. Similique et enim odit non. Qui asperiores ipsum quis eos labore qui.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(113, 16, 'Jillian Bradtke', 'Et ea molestiae at qui et facilis porro officia. Velit provident laboriosam animi ut aperiam at. Autem est laborum consequatur mollitia officia similique labore doloremque. Voluptatem rerum voluptatum harum non veniam quod.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(114, 22, 'Dr. Gavin Little', 'Ducimus cumque debitis quia. Dignissimos doloremque aut minus eum velit ea quo. Tempora nemo maxime modi. Voluptatum et est repellendus iste.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(115, 41, 'Erich Howell', 'Quia quia veniam qui quia. Necessitatibus consectetur ab ea tempore. Eos repellat ipsam consequatur sed ut. Consequuntur qui temporibus adipisci aut.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(116, 47, 'Hellen Bode', 'Tenetur qui veritatis est sint a ipsa. Quia mollitia rerum sequi et cumque maxime quas iusto. Tenetur fugit expedita id qui sit assumenda aut.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(117, 48, 'Keara Padberg', 'Est aperiam optio esse quisquam fugiat in ut. Ut quam quis ullam cumque incidunt at et consequuntur. Sequi natus aut nemo earum exercitationem nihil voluptas perspiciatis. Numquam quos dolor ab error consequatur ut libero. Facere autem sint earum.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(118, 22, 'Vanessa Bergnaum', 'Aut tenetur enim et dolores nesciunt sapiente cupiditate voluptatem. Qui eos est temporibus dolor dicta at. Nostrum temporibus nisi cumque velit. Non facere consequatur quasi officia.', 0, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(119, 16, 'Wyman Hintz', 'Repellendus ut ut molestias ut hic deserunt. Alias aliquid repellat qui sed ipsa laudantium. Perspiciatis officiis pariatur aliquid quam fugiat. Ullam qui distinctio molestiae.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(120, 4, 'Clovis Batz', 'Asperiores explicabo nobis fugiat ipsa voluptatem ipsam. Reprehenderit aperiam molestiae commodi error explicabo nostrum. Minima eum qui amet est commodi voluptatem.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(121, 29, 'Miss Maude Heidenreich', 'Et voluptas expedita sunt saepe unde. Dolor corrupti nisi officiis totam. Dolores sed autem unde.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(122, 49, 'Sonya Schaden II', 'Et quis nemo dicta esse. Accusamus tempore voluptatem voluptatibus suscipit. Consequatur doloribus est aut eos quam. Voluptatem consequatur quis sunt nostrum sed nam.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(123, 37, 'Mr. Leif Lesch Sr.', 'Enim laboriosam sed tenetur molestiae aut voluptate atque. Autem voluptas officia qui possimus sed ut animi. Repellendus totam quaerat eius accusantium consequatur voluptatum in. Doloremque maxime magnam eum quas.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(124, 43, 'Melvina Gorczany', 'Est voluptates dolorum dicta et. Accusamus consequuntur quis ut et officiis. Ut illum qui aut nesciunt. Corrupti adipisci dolor porro esse eos autem.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(125, 24, 'Adolphus Daniel', 'Iusto sequi voluptatibus dignissimos consequatur dolores. Reprehenderit velit consequatur molestiae tempore. Nihil saepe dignissimos ad ut qui minima. Itaque quis harum et eos sit.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(126, 26, 'Whitney Langworth', 'Quos eum nesciunt nam saepe labore. Velit odio eum nihil ad nostrum. Ea suscipit optio deserunt ut rerum tenetur. Cum earum ad enim qui voluptate aliquam sed.', 4, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(127, 24, 'Kacie Hartmann', 'Dolores quia deleniti beatae culpa perspiciatis dolorum. Repellat dolorem consectetur unde magnam quo sit dolor. Repellat libero et voluptas facilis. Dicta excepturi impedit nisi doloremque alias dolorem.', 3, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(128, 11, 'Ms. Annabel Zulauf I', 'Molestiae a aut cupiditate voluptatem iste repellendus. In culpa molestiae ipsam in ab facilis magnam. Autem cum qui eum deleniti. Similique ea rerum aut rerum error et. Deleniti quod perferendis perferendis.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(129, 49, 'Jimmie Konopelski II', 'Quas aut dicta in eveniet. Numquam qui eos possimus quo illum. Quo quia et consequatur quia. Corrupti consequatur nemo nemo excepturi tempore magnam.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(130, 39, 'Prof. Brown Hahn IV', 'Molestiae at quia dolores itaque quia laborum. Molestiae consectetur libero voluptas illum voluptatem. Beatae enim quae aut facilis dolores fugit possimus non. Et consequatur odit labore officiis.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(131, 43, 'Dr. Dawson Berge', 'Et velit blanditiis blanditiis dignissimos. Consectetur et ea praesentium a dolores harum nam. Minus fuga adipisci at enim vero vel sit. Labore vel quibusdam laudantium repellat sequi aut dolore expedita. Temporibus mollitia voluptatum impedit animi modi.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(132, 14, 'Orin Hill', 'Et fugiat quasi totam alias praesentium error. Ab blanditiis sunt natus dolores eos enim. Natus veritatis quia eos reprehenderit omnis nesciunt laboriosam.', 5, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(133, 20, 'Oleta Gorczany', 'Animi fugit autem maiores quibusdam corporis. Sint accusantium saepe dignissimos sequi fugit. Quo perspiciatis beatae ut suscipit.', 1, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(134, 19, 'Chesley Macejkovic', 'Dolor porro porro perspiciatis praesentium. Perspiciatis assumenda eos officiis rerum ea et placeat. Molestias labore est consequatur ut sunt reprehenderit laudantium rem.', 2, '2020-09-04 21:23:10', '2020-09-04 21:23:10'),
(135, 37, 'Miss Kaelyn Friesen', 'Exercitationem saepe quam accusantium. Ut molestias saepe ut molestias exercitationem. Ab rerum facere exercitationem tempora amet odit. Porro ex fuga ipsa non voluptatem nihil quis laudantium.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(136, 35, 'Clementine Upton', 'Minus similique omnis ipsam similique est accusantium reprehenderit. Dicta deleniti occaecati id. Esse eaque quidem ullam quo minus. Explicabo enim repellat rerum ut tempore. Culpa sit aliquid magnam culpa ipsum.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(137, 17, 'Walton Gleichner', 'Minus et in ducimus sed cumque natus. Et dolorum molestias dolorem explicabo numquam aut.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(138, 22, 'Retha Jaskolski PhD', 'Quam similique nesciunt quasi qui qui provident. Quis et ut modi alias. Qui sequi in excepturi sed corporis.', 1, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(139, 17, 'Lavinia Fahey', 'Laudantium illum maxime praesentium consequatur numquam. Unde repellendus quo animi voluptatibus esse nihil. Non sunt suscipit quia ut. Maxime reprehenderit necessitatibus dignissimos et adipisci architecto nostrum a. Sunt commodi sed beatae voluptatem saepe cum officia.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(140, 38, 'Dariana Blick DVM', 'Nesciunt qui excepturi qui quo quia possimus. Voluptatem nobis consequuntur vitae quod sint. Nulla non expedita iste libero. Exercitationem est soluta explicabo sequi quia aperiam. Debitis quas reiciendis deserunt ea est atque.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(141, 35, 'Ewald Mraz', 'Quibusdam veritatis aliquam nesciunt aliquam nostrum quaerat quod. Est ut vel illum corporis.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(142, 1, 'Kadin Harris Jr.', 'Sequi quae qui illo qui debitis vero rerum debitis. Tempora qui voluptatem nemo quis enim officiis repellat. Tempore nihil molestiae qui ipsa provident ut ad. Nostrum ut velit vitae sint dolorum reiciendis illum.', 1, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(143, 32, 'Cheyenne Prohaska', 'Voluptas id hic est expedita. Quibusdam porro ea ea et error autem. Reprehenderit excepturi est dolor impedit suscipit qui sed. Porro qui eligendi culpa quia aut cumque ea quia.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(144, 40, 'Prof. Leif Bartell MD', 'Nisi impedit repudiandae corrupti ut consequatur. Asperiores aliquam iusto consequatur hic maxime aut ratione. Beatae debitis harum aut voluptates. Atque dolores vitae magni necessitatibus maxime veniam.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(145, 24, 'Prof. Jerald Hills I', 'Labore quia dolorem expedita. Et commodi alias distinctio et natus autem sequi. Quidem unde qui est qui.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(146, 45, 'Lulu Schultz', 'Veniam quidem voluptas necessitatibus. Praesentium omnis magnam qui rem perferendis. Ea odit dolorem dolore aut quaerat consequatur ea. Qui magnam ut quos consectetur ea sint et ut.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(147, 14, 'Stacy Schumm', 'Voluptatibus consequatur sit porro quia rem qui. Consequatur nam consequatur nostrum eaque optio qui omnis. Quod neque atque quod magnam expedita. Qui deleniti quisquam a.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(148, 18, 'Abner Cronin', 'Voluptas et commodi voluptatem asperiores. Sit commodi voluptatem voluptatem rerum et. Cumque est laborum nihil enim.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(149, 18, 'Mara Deckow', 'Voluptatibus aut autem tenetur repellat occaecati reprehenderit. Occaecati ratione molestias quia qui voluptas accusamus hic. Sapiente mollitia rerum optio.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(150, 23, 'Dillan Romaguera', 'Enim at quo nemo rerum esse. Exercitationem odio aliquam labore quas. Neque quas ipsa blanditiis voluptatum aut commodi.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(151, 27, 'Mrs. Emma Reilly', 'Voluptate pariatur voluptates nobis quia. Maiores iste et minima nihil. Nisi et qui nesciunt quo. Natus adipisci et veritatis cupiditate itaque commodi.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(152, 41, 'Virginie Paucek', 'Cupiditate quia libero consectetur necessitatibus. Blanditiis totam accusantium qui odit repellendus temporibus cupiditate voluptatem. Expedita alias eum vitae reprehenderit dolorum. Soluta laboriosam dolor perferendis et vero.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(153, 15, 'Prof. Abby Altenwerth DDS', 'Ipsum dignissimos eos tempore dicta. Ut omnis accusantium esse libero et. Aut porro nostrum sequi omnis eum fugiat quod.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(154, 35, 'Mr. Johnathon Ryan', 'Et veritatis soluta est velit aspernatur quo. Qui et neque reiciendis neque eos. Quia dolores sapiente dignissimos vel enim voluptas et. Illum explicabo dolorum consequatur deserunt et qui.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(155, 49, 'Ms. Vicky Schmidt DVM', 'Reiciendis ea deleniti quo itaque cum. Omnis sint pariatur similique tempore natus et. Corporis et ut placeat assumenda. Voluptatem molestias accusantium deserunt culpa.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(156, 11, 'Maybelle Dietrich', 'Voluptates quia eos labore. Repellat accusantium et aperiam laborum. Nisi eveniet quisquam minima non. Et sapiente quam nihil suscipit. Inventore rerum unde iure harum quas aliquam.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(157, 34, 'Simeon Haag', 'Voluptatum libero tempora aspernatur aut dignissimos. Qui nesciunt nostrum explicabo quia voluptatibus aspernatur. Rerum est molestiae qui molestiae sint. Tempore nesciunt unde minima ab.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(158, 1, 'Justine Bernhard', 'Hic et et pariatur vitae asperiores et. Sed nobis modi dolor fugiat maxime laboriosam. Est magni laboriosam maiores quia ullam. Reprehenderit saepe voluptas modi autem reiciendis dolores.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(159, 46, 'Alessandra Mosciski', 'Rerum amet consequuntur eos autem unde veniam ut. Eos aut numquam laborum. Laboriosam quia tenetur in natus fuga expedita.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(160, 6, 'Marian Kulas', 'Nostrum in corporis qui ipsa voluptatum repudiandae occaecati. Saepe laborum eos est exercitationem impedit veniam minima.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(161, 17, 'Dr. Jerrold Hill IV', 'Consequatur temporibus eum repudiandae quisquam quam mollitia. Perspiciatis reiciendis labore provident harum itaque voluptatem. Alias dolores ut id fugit molestias repellendus nesciunt ad. Et sunt suscipit quam et.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(162, 6, 'Esther Metz', 'Voluptatem repellat similique et rerum minus est quis. Veritatis omnis temporibus velit repellendus. Eum aut molestiae iusto sequi nostrum voluptatem ut ullam. Minus possimus expedita nihil earum.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(163, 32, 'Prof. Giovanni Kreiger', 'Aut dolores beatae officiis sequi doloribus. Consequatur numquam labore eaque esse. Odit sed aut repellat vel. Eos esse aut quibusdam fugit commodi.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(164, 47, 'May Wintheiser', 'Reiciendis quo quaerat debitis ratione. Sed libero nisi debitis sed. Quasi nesciunt expedita est et voluptatem impedit. Possimus dolorem nesciunt architecto doloremque nobis.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(165, 13, 'Omer Zieme', 'Ipsa rem ea tenetur eligendi voluptas occaecati. At nihil quia eum perferendis incidunt eum dolorem. Est a illo iste molestiae deserunt dolor. Mollitia et iste ipsam et.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(166, 2, 'Ibrahim Adams', 'Nulla in aperiam omnis laudantium ut nemo. Et ipsa et adipisci omnis. Quas blanditiis enim neque beatae.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(167, 36, 'Braden Muller', 'Nostrum quia error enim dolorum harum dolorum. Doloremque maxime ut culpa ut unde qui. Aliquid at numquam ut ea quo omnis. Quibusdam excepturi nisi quod vel et.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(168, 28, 'Prof. Enoch Friesen IV', 'Sunt sed illum omnis ut. Temporibus provident aut cum odio quas enim ipsa. Eos dolores occaecati optio accusamus ab reiciendis. Deleniti consequatur blanditiis eos est et exercitationem.', 1, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(169, 20, 'Amy McCullough', 'Voluptatem est est voluptas mollitia. Sit quo inventore molestias. Neque pariatur tempora dolor laborum harum. Et laborum corrupti modi voluptatum.', 1, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(170, 20, 'Mozell Towne', 'Dolores ut reiciendis temporibus vel ipsam. Hic porro molestiae molestiae. Similique eaque rerum et porro quaerat est. Quia perspiciatis odio dicta quo culpa eum voluptatibus qui.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(171, 28, 'Brandt Lowe', 'Est similique ratione consequuntur distinctio beatae. Odio rerum aut ipsum quis aperiam cumque. Ea qui sed ut nobis voluptas est tenetur. Consequatur sint sint sit nostrum.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(172, 34, 'Corbin Ritchie', 'Qui cumque asperiores non et velit aut. Dolore aut atque illo maiores consequatur aut qui. Necessitatibus modi dolorem sequi error maiores repudiandae reprehenderit.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(173, 42, 'Mr. Valentin Ankunding DDS', 'Libero tenetur possimus sint. Quas eos sequi aliquid dolores soluta deleniti. Temporibus aliquid enim nesciunt et sed sint natus nostrum.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(174, 5, 'Evie Considine', 'Est et ut id. Dicta voluptas fuga iste ut officia ullam. Non atque neque sint. Repellat exercitationem esse qui tempore commodi.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(175, 13, 'Marcos Goldner', 'Rerum vel voluptates ea ut sit. Qui sed aliquam voluptatem quaerat dolorem distinctio. Veniam dolorem architecto in excepturi ipsa beatae laboriosam inventore.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(176, 24, 'Marian Blanda', 'Eum rerum debitis quo. Rerum et tempore cumque tempora. Minus porro sunt aut. Et ut ad aut in voluptas. Deserunt et impedit eligendi nobis maxime nisi.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(177, 17, 'Juwan Reichert I', 'Id ratione tenetur voluptas ut praesentium tempore minus at. Occaecati ad cumque deleniti est accusamus sit. Consectetur qui asperiores est. Similique inventore id veritatis nostrum ad cumque adipisci.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(178, 43, 'Karl Goodwin', 'Corporis et odit quo delectus unde non. Maxime non odit doloremque qui delectus quidem. Corporis aperiam voluptatem et error unde laudantium. Nam et dicta dignissimos id voluptatem.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(179, 34, 'Tavares Schmeler', 'Quasi suscipit ipsam delectus voluptatem quo. Dolor velit voluptas aliquid omnis et maiores non. Sed aut consequatur consequuntur aspernatur voluptas officia eveniet. Similique quia fugiat numquam quo voluptatem.', 4, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(180, 29, 'Otho Bayer', 'Ut ea maiores sunt et saepe occaecati. Quia in ex consequuntur et. Voluptatibus sit harum omnis non ex accusamus.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(181, 13, 'Melody Schuster', 'Et nihil quia nam aliquid. Commodi vitae eum ullam. Accusantium laborum fugiat doloribus.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(182, 16, 'Dr. Janelle Goldner', 'Ea et aperiam voluptas corrupti. Consectetur eum corporis ipsam sapiente beatae hic. Exercitationem eos quibusdam perferendis laborum deserunt atque nobis.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(183, 1, 'Vern Bradtke', 'At praesentium et eum quasi. Aut deleniti distinctio aliquid sunt est sunt possimus. Laudantium vel necessitatibus illum.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(184, 20, 'Jaqueline Wunsch', 'Nihil in omnis voluptatem voluptatum. Aut est quam voluptatem. Labore corporis at cumque atque temporibus hic veritatis. Reiciendis totam ratione aut.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(185, 41, 'Devin Gusikowski', 'Ullam et id provident itaque vel iure. Quidem cumque maiores dicta esse quasi nemo voluptas accusantium. Aut aspernatur pariatur nihil amet. Omnis non ex consequatur modi voluptatem nemo qui sit.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(186, 20, 'Kellen Kihn', 'Dolores quis enim praesentium quam et eos. Enim ab enim accusantium fuga rerum quis odio.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(187, 33, 'Mrs. Tabitha Stamm Jr.', 'Quidem fuga quia dignissimos sit. Et architecto laudantium libero consequatur iste molestiae. Dolor pariatur et eaque natus similique voluptatum.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(188, 37, 'Jayme Nader', 'Et alias optio quia. Aut hic dicta quam ut voluptatem. Sapiente enim tempora reiciendis quidem.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(189, 44, 'Stuart Mitchell DVM', 'Dolor aut autem ratione. Et voluptates minima amet aut quia exercitationem ducimus. Illo molestiae eaque nesciunt sed doloribus cumque. Tempora quas aut vitae debitis autem repudiandae alias eveniet.', 2, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(190, 26, 'Prof. Adeline Steuber', 'Fuga et odio in consequatur pariatur ut tempore aliquam. Vero sapiente aperiam eos vitae. Aut quasi repellat nam a accusantium reiciendis debitis. Corrupti exercitationem corrupti iusto est hic excepturi praesentium.', 5, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(191, 6, 'Delphia McGlynn', 'Amet esse ab exercitationem ab ea quo. Sit aperiam nam non consequatur. Et atque vel vel sed sed praesentium. Minus consequatur aut expedita sed quo numquam id.', 0, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(192, 47, 'Helga Hammes', 'Fuga consectetur consequatur voluptas tempora harum laudantium. Officiis velit molestiae et rem rerum vitae sapiente. Dolores temporibus qui officia aliquam distinctio praesentium.', 3, '2020-09-04 21:23:11', '2020-09-04 21:23:11'),
(193, 45, 'Louie Pacocha I', 'Nihil provident cum sit pariatur quas quidem. Corporis optio perferendis deserunt sit sit. Minima assumenda a tempore sit accusantium ut. Non fuga magni et eius.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(194, 14, 'Kody Howell', 'Ea fugiat ut nihil dignissimos recusandae. Est ea deleniti vero. Ipsa itaque soluta ut omnis.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(195, 16, 'Mr. Coby Streich Jr.', 'Iure harum atque sapiente nam deleniti reprehenderit quis. Sed dolor fuga debitis ad esse et ad. Reprehenderit minima quasi accusamus omnis ut voluptatem ducimus. Dicta suscipit consequatur minima distinctio rem culpa et voluptas.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(196, 25, 'Mrs. Faye Walker V', 'Dolores dolores et iusto dolor eius autem rem quasi. Vel est incidunt eligendi magni commodi. Maxime ipsam fugit ipsa dolor. Saepe quo eligendi reiciendis officia quo quia voluptatem.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(197, 21, 'Axel Gibson', 'Et repudiandae sed tempora sunt delectus. Autem libero qui neque perspiciatis voluptatum excepturi non. At voluptatibus in modi sint porro necessitatibus.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(198, 7, 'Hollie Kutch', 'Aliquid non qui quia. Earum a sint nihil quidem sed modi pariatur ipsum. Illo omnis est architecto amet rem minus.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(199, 37, 'Jayce Quigley', 'Tempore perspiciatis aut omnis rem omnis. Earum et et quae odit ea esse atque. Exercitationem eum autem quis quibusdam. Voluptas quia dolores est.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(200, 34, 'Verna Carter MD', 'Et odit amet harum rerum laborum eum nobis. Vel qui sequi architecto facere illum. Rerum omnis dolorem dolores quia. Exercitationem ab non commodi similique id nihil rerum.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(201, 14, 'Prof. Carmel VonRueden', 'Et voluptates vitae et aut voluptatem non aut. Aperiam soluta quia et. Sit maiores reiciendis iusto sunt.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(202, 23, 'Ollie Kerluke', 'Exercitationem debitis magnam consequatur voluptates commodi et amet. Vero repellendus dolorem sed rerum aliquam. Qui aut est eveniet. Odio nesciunt qui ut accusamus sed magni.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(203, 16, 'Asha Ledner', 'Eaque soluta consectetur rerum neque incidunt. Aspernatur ut eius id repudiandae sit sapiente eveniet.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(204, 3, 'Vladimir Turcotte IV', 'Qui ut ea vel alias est est. Accusantium ut ut sequi quia distinctio itaque magnam. Hic perspiciatis ex excepturi ad quaerat nam. Architecto sit illum est similique voluptates.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(205, 40, 'Dawson McCullough', 'Vel suscipit delectus voluptates et ea reiciendis. Dolorum repudiandae quia quos qui nemo.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(206, 23, 'Margaretta Hayes', 'Rem quo vero natus. Hic natus voluptatem dolores sit ut. Perspiciatis ea nostrum et qui iusto molestias quo.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(207, 4, 'Dr. Agnes Kerluke', 'Ratione rem unde sunt odio eius velit. Aut nulla dolorem quibusdam omnis sit. Adipisci vero fuga eos aliquam corrupti. Dolores et est ut minima.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(208, 35, 'Lessie Heathcote', 'Quia rerum laudantium excepturi aut id ducimus in fuga. Sint deserunt ipsa animi quae nesciunt recusandae et. Architecto tempore excepturi doloremque placeat. Dignissimos similique quasi quo natus. Qui autem accusantium voluptatum consequatur excepturi mollitia.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(209, 39, 'Dr. Juliet Jones', 'Quas quo itaque vitae earum voluptatum totam est. Dicta voluptas ad aperiam eius.', 0, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(210, 14, 'Jarod Witting DDS', 'Fugiat quo cumque expedita at aliquam repellat. Qui sit earum reprehenderit voluptates reprehenderit quo unde. Saepe sapiente cumque commodi illum.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(211, 24, 'Prof. Forest Mante Jr.', 'Quis nulla soluta sit dolores quia inventore. Nam mollitia nesciunt quod voluptatum excepturi nostrum voluptatibus possimus. Aut doloremque fuga et maxime.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(212, 19, 'Prof. Rubye Rowe', 'Non numquam eaque ut doloribus voluptas vitae. Adipisci rerum sunt aspernatur. Magnam est explicabo qui quae soluta esse. Minus repudiandae harum quisquam nulla accusantium non quo ducimus.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(213, 23, 'Jeremie Bergstrom', 'Illo sed facilis non illo ut autem saepe. Aliquam et laborum odio accusamus rem dolores dolores. Sequi dicta perspiciatis debitis aut ipsam.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(214, 49, 'Amaya Beier', 'Qui ipsa repudiandae facilis error beatae temporibus aut. Ullam qui est pariatur aliquid. Ipsum et dolorum accusantium labore aut id natus. Ipsum nostrum minus corrupti saepe quae ad suscipit mollitia.', 0, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(215, 37, 'Casper Denesik III', 'Rerum numquam aperiam inventore atque et. Eligendi incidunt eum voluptas recusandae odit corrupti. Consequatur dolor aperiam quasi dolorum ut fugit ut.', 0, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(216, 3, 'Carolyne Wuckert', 'Autem quod modi delectus dolorum soluta iure. Eligendi et quisquam a quo. Aut numquam consectetur animi ducimus cupiditate dicta rerum accusamus.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(217, 46, 'Jamil Beatty', 'Voluptates qui nulla dolorem iste. Eius vitae id neque voluptatem quia. Quo sint velit saepe repellendus id error sit. Et eum quod hic voluptas sapiente accusamus ut.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(218, 21, 'Cleveland Reynolds', 'Qui ut perferendis minima sint impedit ea. Et qui sunt necessitatibus.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(219, 15, 'Lexi Kemmer', 'Adipisci velit ea sit dolor vel ex voluptatum. Sed possimus magni nihil ullam. Voluptas aut necessitatibus et odit.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(220, 17, 'Catalina Kuhic Sr.', 'Saepe eum velit ullam ipsam. Nemo quia tenetur in vitae maxime est ad. Unde mollitia aspernatur et sed est ipsum suscipit unde.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(221, 48, 'Luther Predovic', 'Sit et distinctio quis quo. Quis dolore qui dolorem officia animi. Necessitatibus qui ut impedit enim. Rerum optio placeat officiis dolorem dolores.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(222, 42, 'Cathryn Hyatt', 'Laborum id nisi ut omnis minus. Consequuntur accusamus similique et ut voluptatem. Quas et aliquid quisquam voluptas molestiae accusantium. Ut at consequuntur at sit aut voluptatem nemo sit. At quos aut voluptatibus voluptatem sequi.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(223, 35, 'Dejuan Koepp', 'Laudantium et in in expedita. Aut accusantium voluptas consequatur maiores sit voluptate quas recusandae. Autem velit architecto minus qui est autem qui.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(224, 9, 'Miss Maci Vandervort IV', 'Ad in fuga non voluptates voluptates sit. Voluptatibus expedita doloribus voluptates quam.', 3, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(225, 11, 'Colby Ullrich V', 'Cumque expedita ut suscipit hic autem. Voluptates amet hic molestiae labore asperiores qui aut rem. Hic ipsa impedit totam qui magni consequatur laborum. Expedita sequi qui nam dolor. Aspernatur voluptate debitis ipsa natus beatae officia.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(226, 42, 'Mrs. Kiara Quigley', 'Dolorem est eligendi dolor tempora. Nihil et at illum atque id eveniet laboriosam. Praesentium delectus voluptatem quo ut. Distinctio eius adipisci similique praesentium sunt eligendi.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(227, 31, 'Mrs. Victoria Kassulke', 'Ipsa nemo omnis corporis hic. Illum alias et et eum atque porro.', 5, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(228, 24, 'Alayna Stehr III', 'Totam quaerat et nam dolorem laudantium. Iure reprehenderit nihil iste saepe velit. Corporis eos velit rerum quia.', 1, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(229, 48, 'Dr. Stephan Zieme', 'Aspernatur voluptatibus numquam itaque maxime. Iste nulla dolores molestiae soluta blanditiis culpa. Occaecati pariatur aut facilis culpa. Vel velit amet blanditiis non similique.', 2, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(230, 32, 'Dr. Thomas Ferry V', 'Omnis rem aliquid et ex aperiam ab sed. Omnis nisi fugit tenetur. Beatae maiores est dolores officiis molestiae.', 4, '2020-09-04 21:23:12', '2020-09-04 21:23:12'),
(231, 1, 'Georgette Nicolas', 'Nostrum id est maiores ut. Nostrum rerum est maxime alias est. Quis quia ut error voluptatem officiis. Molestiae officiis laudantium dolor temporibus. Laborum repellendus reiciendis exercitationem.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(232, 50, 'Melba Homenick', 'Omnis expedita praesentium voluptatum qui officia aliquid. Esse ut fuga consequatur facere inventore hic labore. Id laborum a quia natus. Sit sed illo quibusdam expedita.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(233, 5, 'Crystal Medhurst DDS', 'Porro ducimus ea aut non harum quisquam. Et quia itaque vero amet illum commodi aliquid. Incidunt omnis debitis debitis sit doloremque.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(234, 34, 'Mr. Joaquin Murazik I', 'Quia repellat sequi sequi aut aliquid nam reprehenderit. Et quasi perferendis atque occaecati temporibus optio fugiat. Qui eius vel fugit est.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(235, 20, 'Dr. Hortense Howell', 'Ea consequuntur consequatur at. Ducimus pariatur dolor quis aut laudantium recusandae. Soluta nesciunt id quis ut ad voluptas.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(236, 42, 'Braeden Bartoletti', 'Ut cum ut fugit iusto odio officiis. Accusantium commodi at sit. Nihil et a harum et ipsum est eum.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(237, 6, 'Mr. Stephen Funk Jr.', 'Ex voluptas eius molestias libero quasi. Ad repellendus exercitationem qui nihil quaerat.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(238, 16, 'Emmitt Stracke I', 'Sunt dignissimos maiores consequuntur velit. Placeat molestias laborum voluptatum ea facere sed. Eligendi sapiente modi ut perferendis distinctio mollitia sed.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(239, 40, 'Miss Lauren Kunze', 'Ut qui rem ratione officiis unde placeat neque. Ducimus adipisci dolorem suscipit ea nihil sunt sed ut. Quidem modi molestiae dolore quaerat cum eos hic. Aspernatur corporis quasi provident blanditiis et rerum. Nihil eum harum ut a officia.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(240, 45, 'Dr. Marianne Blanda DVM', 'Unde aut quo dicta sequi aut. Quas molestias velit deserunt. Voluptatum nostrum voluptas maxime et.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(241, 36, 'Claudie Gusikowski', 'Autem repudiandae mollitia voluptatibus perspiciatis est repellat odit. Quisquam quia totam sed et recusandae. Iste quos maxime laboriosam quos maxime facere voluptatem rem.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(242, 38, 'Dr. Doris Weimann', 'Error sequi iure dolore soluta delectus eius. Iste facere consequuntur consectetur ipsa. Omnis harum consequatur qui consequatur. Cum culpa reiciendis sit tempore.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(243, 36, 'Dr. Camden Herzog V', 'Eos est assumenda omnis eligendi. Natus quod qui doloremque est deserunt. Autem eum distinctio a vel.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(244, 19, 'Brionna Swift', 'Vitae fugit laudantium beatae et error iste voluptas. Et officia omnis qui temporibus. Eveniet omnis sequi perspiciatis vel est voluptatem. Reprehenderit sint maiores delectus ipsa est. Fugit est doloribus iure necessitatibus asperiores.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(245, 26, 'Jasmin Torp', 'Id iure iure itaque sint dolorum reiciendis aut aut. Sed adipisci et omnis soluta libero ex. Dolorem repellat sunt voluptates voluptatum asperiores culpa.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(246, 40, 'Dejah Heller', 'Velit consequuntur vitae sint quia numquam. Labore illo maiores ducimus ad nobis repellendus quas. Repellat ea porro in cumque iusto necessitatibus soluta dolorem. Quasi porro aliquam commodi alias aut voluptas.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(247, 11, 'Prof. Tyler Carroll', 'Repudiandae non aspernatur voluptate velit non recusandae. Explicabo consequatur minus quas nesciunt vero. Fuga veniam accusamus molestiae blanditiis minus.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(248, 50, 'April Schuster', 'Vitae voluptates debitis consequuntur accusantium recusandae delectus sit. Et voluptatem delectus deserunt beatae eveniet. Dolorem accusamus eaque autem ad ad dignissimos.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(249, 40, 'Dr. Otto Bosco', 'Tempora quo neque enim enim veritatis deleniti. Asperiores fugit accusantium est sint in est consequatur enim. Repudiandae molestiae quaerat atque. Maiores consequuntur architecto et ipsa illum corporis architecto.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(250, 35, 'Eryn Wintheiser', 'Expedita voluptas culpa possimus commodi minus distinctio. Quam molestiae autem dolor laboriosam et id autem omnis. Qui iusto inventore inventore libero qui.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(251, 42, 'Bethel Towne', 'Quisquam ea et neque assumenda error. Ut impedit et voluptatibus voluptatum delectus quia quia. Ipsum consequatur illo et illo et ut quia. Dicta omnis omnis in error incidunt.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(252, 18, 'Bulah Lynch', 'Non quod earum id quidem sunt neque eius. Perferendis sint repudiandae sit et. Aspernatur est saepe maxime excepturi.', 4, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(253, 16, 'Dr. Talon Farrell', 'Sit est et recusandae architecto velit sed. Fugiat aliquam quos eos quos fuga officiis repellat. Enim corporis excepturi consequatur ex qui est. Vero recusandae maxime consequuntur magnam autem numquam expedita.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(254, 49, 'Mr. Kareem Botsford I', 'Consequuntur aut vitae qui architecto enim sed neque. Ipsam quo reiciendis molestiae minus id iusto. Eveniet quia asperiores atque doloremque eligendi asperiores.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(255, 49, 'Gregg Ernser', 'Quisquam occaecati non molestiae rerum a. Voluptate nobis eveniet ut est. Iure illum sint quisquam molestiae. Omnis culpa quia tenetur id enim impedit commodi.', 4, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(256, 16, 'Daniella Kuhic', 'Ullam illum aliquid rerum. Sit eum voluptatem ipsum blanditiis molestias. Soluta dolorem architecto eos.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(257, 42, 'Miss Annabel Hettinger', 'Dolorem quis soluta excepturi est doloribus fuga. Et accusamus veritatis animi. Itaque nesciunt quas omnis aut sunt atque. Beatae sit ut ea possimus doloremque enim laborum.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(258, 17, 'Steve Brakus', 'Recusandae officia vel quos pariatur deleniti optio. Vel aperiam soluta est. Dolores odit pariatur rerum rem aut eligendi sunt. Dicta maxime neque odio aut sequi explicabo ratione.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(259, 3, 'Mercedes Hill', 'Animi aspernatur fugit consequatur natus non maiores. Fugit ad nesciunt laboriosam omnis aspernatur.', 4, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(260, 29, 'Mr. Berry Ruecker Jr.', 'Explicabo quod voluptas sed omnis assumenda aut. Sunt tempore possimus aliquam ea assumenda quo et. Et qui nisi dignissimos qui. Iste aut atque neque consequatur consequatur voluptates.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(261, 37, 'Leilani Funk I', 'Sit ut et culpa est hic. Nam ullam velit aperiam molestiae voluptatem. Quo aut autem impedit delectus et ipsa sit ipsum.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(262, 31, 'Camden Cronin', 'Ea sit minima quidem quisquam quis praesentium voluptatem. Fugiat molestiae voluptatem vel quae. Distinctio accusamus animi omnis dolor. Maxime assumenda nisi numquam odit.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(263, 44, 'Prof. Dameon Jakubowski III', 'Voluptas pariatur qui ipsum quo illo suscipit rerum. Qui rerum ut qui qui voluptate corrupti ipsa enim. Quod voluptas possimus dolorem at.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(264, 7, 'Freddie Purdy', 'Mollitia pariatur incidunt reiciendis error tempora quia quasi. Est cumque sed nemo voluptatibus voluptatem. Mollitia enim ad eos facere.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(265, 17, 'Maye Simonis', 'Eum non rerum esse. Vero voluptatum dolore aut. Qui dolor ipsum minus ipsa aut. Voluptas qui est officia ut.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(266, 1, 'Dagmar Witting V', 'Sed doloribus dolorem libero quo dolorem repudiandae quidem. Adipisci enim nostrum deserunt voluptate voluptatem. Perspiciatis omnis hic fuga consequatur in placeat soluta.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(267, 24, 'Salvatore Treutel', 'Assumenda ab autem recusandae commodi odit totam aperiam. Eius beatae alias dignissimos neque alias. Consequuntur ut nihil sit voluptatibus ut ea molestias. Eaque beatae ipsum assumenda non adipisci quia inventore.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(268, 11, 'Mr. Akeem Rippin', 'Ut dolore est tempore quaerat. Velit vel quasi sed repellat et.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(269, 26, 'Ms. Nina Padberg PhD', 'Dolorem excepturi ut itaque pariatur sunt. Nihil autem repudiandae numquam. Et quae occaecati assumenda vero. Nobis voluptatum quod quos sint quasi velit.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(270, 36, 'Brant Dietrich', 'Dolorum dolorem voluptas voluptatem et sunt totam. Eos soluta quia unde at similique dolor fugiat eum. Beatae et voluptatem autem sunt ut et.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(271, 32, 'Leanna Muller', 'Saepe dolores beatae non. Consectetur quasi tenetur sed esse ut optio repellendus omnis. Eos consectetur ut voluptas qui.', 4, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(272, 39, 'Jamir Gerlach', 'Eligendi aut earum iste voluptatum. Accusamus eaque ea molestias incidunt tempore neque. Numquam et cum voluptatem cum beatae autem repellat. Cum labore facilis et qui.', 0, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(273, 33, 'Stan Jaskolski', 'Doloremque deleniti accusantium et alias dolorem. Odit excepturi occaecati odio corrupti beatae cum eius.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(274, 1, 'Stewart Wisozk Sr.', 'Iste in harum inventore ut repellat consequatur. Corrupti asperiores consequuntur eos aut dolores est sit itaque. Dolorum eius perferendis vitae unde tenetur iure.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(275, 27, 'Noemie Gleichner', 'Omnis non cumque quis iusto et illo voluptates. Aut qui quaerat mollitia provident sit ab eum. Aut quod ducimus incidunt corporis id perspiciatis. Quis rerum eos molestias reiciendis.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(276, 42, 'Vidal Brakus MD', 'Est nam qui architecto assumenda esse perspiciatis perferendis. Totam omnis odit vel assumenda ut dolores. Iusto rerum ipsa natus eligendi.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(277, 9, 'Jalyn VonRueden', 'Non quia optio perferendis nisi amet est. Expedita qui et aut dolore. Quaerat tempore accusantium at adipisci maiores cum. Perferendis sunt dignissimos ex sed expedita recusandae.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(278, 29, 'Vanessa Kuhic', 'Quia ratione magni eius consectetur aliquam. Non aspernatur voluptates omnis voluptatem.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(279, 22, 'Kiarra Erdman I', 'Dolores explicabo quam incidunt magni ad. Impedit velit blanditiis occaecati quis illum assumenda ut. Optio delectus placeat blanditiis ea facilis labore excepturi. Odio rem repudiandae deserunt ut.', 2, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(280, 6, 'Ernest Walter', 'Ipsam aut ab qui dolor. Tenetur nam ut et velit voluptatum modi. Itaque et quo eum eos est. Quia recusandae sint odio magnam et.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(281, 24, 'Dr. Orval Okuneva', 'Officia et tenetur quis in. Recusandae necessitatibus sit atque officia sunt labore. Rerum repellat aut ipsum accusantium sunt nihil sunt porro.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(282, 32, 'Chris Haley', 'Repudiandae aut vero libero et dolor veniam enim fugit. Perferendis quibusdam saepe cumque omnis. Perspiciatis cupiditate aut ut. Maxime beatae facere a totam beatae cupiditate.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(283, 3, 'Michelle Fay', 'Ut eaque consequatur in ut. Aut doloremque nesciunt incidunt aliquid est aut. Delectus rerum porro sint. Deleniti reiciendis aliquam ut quo quia velit amet minus.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(284, 23, 'Alexander Kulas Jr.', 'Excepturi reprehenderit quam ut. Non culpa fuga et ab. Tempora quo neque iste exercitationem facilis. Qui voluptas rerum sed cumque.', 3, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(285, 34, 'Alize Swaniawski', 'Id non voluptatem eum impedit nobis totam qui. Unde libero nulla veniam aliquid iure excepturi illum. Laborum et ipsa voluptates doloremque et quia. Deserunt officiis voluptatem sint.', 1, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(286, 37, 'Lambert Zemlak', 'Dolorem adipisci consequatur ab qui quae rem officiis aut. Deleniti magni aperiam voluptatem quam molestiae delectus. Et est et est incidunt. Exercitationem vitae nihil repellendus et voluptates.', 5, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(287, 36, 'Delfina Kohler', 'Itaque beatae vel voluptatem quaerat et eum magni ab. Ipsam sit et commodi. Ut nam natus impedit velit.', 4, '2020-09-04 21:23:13', '2020-09-04 21:23:13'),
(288, 20, 'Jannie Conroy', 'Maiores facere et laborum mollitia provident. Id itaque laborum aspernatur consequatur voluptatum cumque quod pariatur. Quos reiciendis nam possimus. Repudiandae itaque inventore nulla omnis.', 0, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(289, 21, 'Fausto Terry', 'Incidunt ad accusamus fugit nihil in ipsa placeat. Adipisci ut omnis pariatur in porro laborum ipsum. Nam veritatis deserunt quo enim. Ducimus atque molestias pariatur est expedita.', 3, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(290, 45, 'Lavon Ullrich DDS', 'Assumenda itaque beatae rerum repudiandae delectus sunt. Quas reprehenderit officiis minima quo. Sint in labore beatae nisi ipsum molestias aut minima.', 5, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(291, 37, 'Gilda Ziemann', 'Nostrum vero est et iure alias aliquam sed. Labore pariatur rem tempora est nemo asperiores amet earum.', 5, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(292, 38, 'Johnathan Lindgren', 'Quia qui voluptas aut quam. Qui iste ipsam sed autem. Possimus ipsa ut consectetur et possimus reprehenderit voluptas tempora. Facilis nobis qui id magnam culpa.', 1, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(293, 23, 'Ernesto Gorczany PhD', 'Eum qui delectus numquam aliquam unde. Dolorum mollitia eius quia omnis doloremque voluptatum cupiditate. Et aperiam commodi dignissimos molestias.', 0, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(294, 35, 'Armani Will', 'Deserunt fugit ducimus animi et. Quia quidem repudiandae sed soluta rerum rem. Voluptas repudiandae aut ut libero vel ipsum non voluptatem. Fugiat natus ut error.', 1, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(295, 33, 'Sadye Muller', 'Libero occaecati incidunt omnis autem. Odit et et aspernatur veniam ex ut. Magni velit et incidunt autem expedita quis. Perferendis numquam aut tempora natus qui et.', 2, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(296, 33, 'Oda Parker', 'Et dignissimos odio eaque iure veritatis. Asperiores enim cupiditate dicta ut magnam.', 5, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(297, 41, 'Cayla Grant II', 'Dignissimos earum exercitationem odio praesentium occaecati aliquid. Aut vel quaerat quas vel minus eos. Voluptas expedita maiores nostrum et praesentium sunt et. Harum non quia nobis quis exercitationem voluptas rerum.', 4, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(298, 45, 'Tyra Thompson', 'Possimus harum nemo et ullam. Dolorem id cumque officia soluta. Dolorem amet quaerat et veniam provident.', 1, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(299, 39, 'Thomas Heaney PhD', 'Sit architecto repudiandae ea quam. Delectus sed voluptatem nobis aut voluptas porro consectetur. Dicta sit quis laudantium.', 1, '2020-09-04 21:23:14', '2020-09-04 21:23:14'),
(300, 24, 'Jared Schuppe', 'Inventore ut sed et enim. Omnis dolores cum sunt ullam omnis adipisci. Quis tempora molestias repellendus natus amet blanditiis similique.', 1, '2020-09-04 21:23:14', '2020-09-04 21:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ola Kozey', 'andreanne.lynch@example.com', '2020-09-04 21:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TdH3CpxvFU', '2020-09-04 21:23:06', '2020-09-04 21:23:06'),
(2, 'Dr. Jalon Roberts II', 'louisa13@example.org', '2020-09-04 21:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CPCLWJE34T', '2020-09-04 21:23:06', '2020-09-04 21:23:06'),
(3, 'Miss Leanne Feeney', 'bauer@example.net', '2020-09-04 21:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pSJgaffkBy', '2020-09-04 21:23:06', '2020-09-04 21:23:06'),
(4, 'Melany Volkman MD', 'carter.lueilwitz@example.org', '2020-09-04 21:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mps44xcv33', '2020-09-04 21:23:06', '2020-09-04 21:23:06'),
(5, 'Kay Carter', 'icie81@example.net', '2020-09-04 21:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4xkMcVzcZO', '2020-09-04 21:23:06', '2020-09-04 21:23:06');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
