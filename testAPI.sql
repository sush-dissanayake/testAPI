-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2020 at 04:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testAPI`
--
CREATE DATABASE IF NOT EXISTS `testAPI` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testAPI`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--
-- Creation: Aug 22, 2020 at 05:19 PM
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `failed_jobs`:
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 05:19 PM
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `migrations`:
--

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_08_20_110553_create_products_table', 1),
(10, '2020_08_21_071306_create_seller_table', 1),
(11, '2020_08_21_141415_create_product_seller_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 07:06 PM
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `oauth_access_tokens`:
--

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1cf519a5ac71af1148a6cb6d9a8c3178d550c2871c1654e855b75dc5589fbf550ad59416f0c42f21', 1, 2, NULL, '[]', 0, '2020-08-22 13:36:37', '2020-08-22 13:36:37', '2020-08-22 19:36:37'),
('64c7abeaa15442c46960bb529db2e5c141c8de9dddbc4edbddf7fc322c1105a593f153d54475bc38', 1, 2, NULL, '[]', 0, '2020-08-22 12:27:17', '2020-08-22 12:27:17', '2020-08-22 18:27:17'),
('bf0500fb058dd0825daf214934a8a9a58fb117eff8264dd5733a63891717d2810a48de8ac6e1763d', 1, 2, NULL, '[]', 0, '2020-08-22 12:59:24', '2020-08-22 12:59:24', '2020-08-22 18:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--
-- Creation: Aug 22, 2020 at 05:19 PM
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `oauth_auth_codes`:
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 05:53 PM
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `oauth_clients`:
--

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'am551c8XNmdXwjF5tqy2KojU17pbsZA4tEwsvIDi', NULL, 'http://localhost', 1, 0, 0, '2020-08-22 12:23:59', '2020-08-22 12:23:59'),
(2, NULL, 'Laravel Password Grant Client', 'cp3thrYh0gOJZidhcUlpMttfSs0O84BnhAFxc5PB', 'users', 'http://localhost', 0, 1, 0, '2020-08-22 12:23:59', '2020-08-22 12:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 05:53 PM
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `oauth_personal_access_clients`:
--

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-22 12:23:59', '2020-08-22 12:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 07:06 PM
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `oauth_refresh_tokens`:
--

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('4712d5724cd6bfc7d3e7146d008ed641993b2bb049853ddcb86a4e4bca26187660914e1ea3c2e57a', '64c7abeaa15442c46960bb529db2e5c141c8de9dddbc4edbddf7fc322c1105a593f153d54475bc38', 0, '2021-08-22 17:57:17'),
('92f9a934be82fd464995acf83c12c4e7650bd003da59cfcb61da0a6b51404e90b7e06b662dce29fe', 'bf0500fb058dd0825daf214934a8a9a58fb117eff8264dd5733a63891717d2810a48de8ac6e1763d', 0, '2021-08-22 18:29:24'),
('969cea83bf85fa8912a039db984ac88099019fda60becb340c4bc668bc52cc0f7a54d7bf9dad29d0', '1cf519a5ac71af1148a6cb6d9a8c3178d550c2871c1654e855b75dc5589fbf550ad59416f0c42f21', 0, '2021-08-22 19:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--
-- Creation: Aug 22, 2020 at 05:19 PM
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `password_resets`:
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 06:30 PM
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `products`:
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Deleniti.', 'Temporibus et libero hic.', '129.03', '', 79, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(2, 'Eaque et.', 'Omnis culpa facilis perspiciatis dolorem fugit.', '278.91', '', 68, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(3, 'Dicta non.', 'Et pariatur et eaque asperiores aspernatur odit.', '281.31', '', 61, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(4, 'Eos ab.', 'Hic provident voluptas totam est beatae.', '231.17', '', 88, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(5, 'Ab ex in.', 'Quam beatae nemo veritatis.', '264.78', '', 92, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(6, 'Inventore.', 'Sunt magni et molestiae et nemo voluptas.', '259.89', '', 98, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(7, 'Non dolor.', 'Eos cumque laboriosam facilis in debitis ipsa.', '242.73', '', 79, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(8, 'Ea ea.', 'Qui qui totam natus eum aut error odit sint.', '103.53', '', 72, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(9, 'Qui quos.', 'Iste dolorum voluptatum sunt rerum nostrum quia.', '219.67', '', 67, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(10, 'Fugiat ad.', 'Error ex natus ut harum qui porro veniam.', '196.76', '', 81, '2020-08-22 13:00:31', '2020-08-22 13:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_seller`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 06:30 PM
--

DROP TABLE IF EXISTS `product_seller`;
CREATE TABLE `product_seller` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  `seller_price` decimal(8,2) NOT NULL,
  `seller_stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `product_seller`:
--   `product_id`
--       `products` -> `id`
--   `seller_id`
--       `sellers` -> `id`
--

--
-- Dumping data for table `product_seller`
--

INSERT INTO `product_seller` (`product_id`, `seller_id`, `seller_price`, `seller_stock`, `created_at`, `updated_at`) VALUES
(3, 1, '437.48', 2, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(1, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(3, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(4, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(5, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(6, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(7, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(8, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(9, 2, '606.97', 9, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(1, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(2, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(3, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(4, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(6, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(7, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(8, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(9, 3, '508.66', 5, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(8, 4, '625.78', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(10, 4, '625.78', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(1, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(2, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(3, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(5, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(6, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(7, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(10, 5, '664.21', 10, '2020-08-22 13:00:31', '2020-08-22 13:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 06:30 PM
--

DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `sellers`:
--

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Autem sed.', '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(2, 'Aut.', '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(3, 'Minus et.', '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(4, 'Nam.', '2020-08-22 13:00:31', '2020-08-22 13:00:31'),
(5, 'Dolores.', '2020-08-22 13:00:31', '2020-08-22 13:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Aug 22, 2020 at 05:19 PM
-- Last update: Aug 22, 2020 at 05:55 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testuser', 'test@example.com', NULL, '$2y$10$QdFH/IfNIMbpYUPB64eYLehnSEy2QAW3LWcVQPRVDMYQZyisA7u9G', NULL, '2020-08-22 12:25:00', '2020-08-22 12:25:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_seller`
--
ALTER TABLE `product_seller`
  ADD UNIQUE KEY `product_seller_seller_id_product_id_unique` (`seller_id`,`product_id`),
  ADD KEY `product_seller_product_id_index` (`product_id`),
  ADD KEY `product_seller_seller_id_index` (`seller_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_seller`
--
ALTER TABLE `product_seller`
  ADD CONSTRAINT `product_seller_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_seller_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
