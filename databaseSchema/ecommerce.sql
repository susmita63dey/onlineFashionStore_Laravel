-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2022 at 10:03 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 3, '2022-08-09 10:20:06', '2022-08-09 23:09:19'),
(5, 2, 4, 1, '2022-08-10 00:03:46', '2022-08-10 00:03:46'),
(6, 2, 5, 1, '2022-08-10 00:06:20', '2022-08-10 00:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(2, 'saree', 'saree', 'gorgete saree, silk saree, cotton saree', 0, 1, '1660115174.jpeg', 'gorgete saree, silk saree, cotton saree', 'heavy work saree, simple saree', 'partywear, casual wear', '2022-08-08 07:04:26', '2022-08-10 01:47:41'),
(3, 'Kurti', 'Kurti', 'cotton kurti, silk kurti, emboidered kurti', 0, 1, '1660115236.jpeg', 'cotton kurti, silk kurti, anarkali kurti', 'cotton kurti, silk kurti, anarkali kurti', 'cotton kurti, silk kurti, anarkali kurti wear', '2022-08-08 09:37:28', '2022-08-10 01:50:18'),
(4, 'jeans', 'jeans', 'denim jeans, straight jeans', 0, 1, '1660115343.jpeg', 'denim jeans, straight jeans', 'denim jeans, straight jeans', 'denim jeans, straight jeans', '2022-08-09 06:01:36', '2022-08-10 01:51:56'),
(5, 'dress', 'dress', 'short dress, long dress, maxi dress', 0, 1, '1660115696.jpeg', 'short dress, long dress, maxi dress', 'short dress, long dress, maxi dress', 'short dress, long dress, maxi dress', '2022-08-09 06:02:10', '2022-08-10 01:52:42'),
(6, 'tops', 'tops', 'cotton top, partywear top, silk top', 0, 1, '1660115766.jpeg', 'cotton top, partywear top, silk top', 'cotton top, partywear top, silk top', 'cotton top, partywear top, silk top', '2022-08-09 06:02:40', '2022-08-10 01:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_08_110817_create_categories_table', 2),
(6, '2022_08_09_043813_create_products_table', 3),
(7, '2022_08_09_143432_create_carts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 3, 'InWeave', 'InWeave', 'Women Orange Solid Kurta with Palazzos & Floral Print Dupatta', 'Women Orange Solid Kurta with Palazzos & Floral Print Dupatta', '599', '450', '1660031938.jpeg', '5', '18', 0, 0, 'Orange solid Kurta with Palazzos with dupatta', 'Square neck, sleeveless shoulder straps', 'Solid Palazzos\r\nElasticated waistband', '2022-08-09 02:28:58', '2022-08-10 02:29:32'),
(3, 2, 'Soch', 'Soch', 'Coral Floral Embroidered Silk Blend Tussar Sare', 'Coral Floral Embroidered Silk Blend Tussar Sare', '2999', '2599', '1660112402.jpg', '0', '18', 0, 1, 'Coral tussar saree', 'The saree comes with an unstitched blouse piece', 'The saree comes with an unstitched blouse piece', '2022-08-09 05:27:50', '2022-08-10 00:50:02'),
(4, 4, 'Roadster', 'Roadster', 'Women Blue Narrow Wide Leg High-Rise Clean Look Stretchable Jeans', 'Women Blue Narrow Wide Leg High-Rise Clean Look Stretchable Jeans', '804', '799', '1660044874.jpeg', '10', '18', 0, 1, 'Blue medium wash 5-pocket high-rise jeans, clean look, heavy fade,', 'Narrow Wide Leg', '98.5% cotton 1.5% elastane\r\nMachine-wash', '2022-08-09 06:04:34', '2022-08-09 06:04:34'),
(5, 5, 'Antheaa', 'Antheaa', 'Black & Rust Orange Floral Print Tiered Midi Fit & Flare Dress with Ruffles', 'Black & Rust Orange Floral Print Tiered Midi Fit & Flare Dress with Ruffles', '529', '499', '1660044965.jpeg', '30', '18', 0, 1, 'Black and rust orange floral print woven tiered midi fit and flare dress', 'Black and rust orange floral print woven tiered midi fit and flare dress', 'Black and rust orange floral print woven tiered midi fit and flare dress', '2022-08-09 06:06:05', '2022-08-09 06:06:05'),
(7, 3, 'KALINI', 'KALINI-kurta', 'Women Blue Ethnic Motifs Kurti', 'Blue solid Kurti with Palazzos with dupatta', '1599', '1299', '1660117203.jpeg', '30', '18', 0, 0, 'Ethnic motifs solid', 'Blue solid Kurti with Palazzos with dupatta', 'Blue solid Kurti with Palazzos with dupatta', '2022-08-10 02:10:03', '2022-08-10 02:30:01'),
(8, 3, 'PANIT', 'PANIT-kurti', 'Women Yellow Pleated Thread Work Kurta with Palazzos & With Dupatta', 'Women Yellow Pleated Thread Work Kurta with Palazzos & With Dupatta', '699', '550', '1660117335.jpeg', '15', '18', 0, 0, 'Yellow self design Kurta with Palazzos with dupatta', 'Yellow self design Kurta with Palazzos with dupatta', 'Yellow self design Kurta with Palazzos with dupatta', '2022-08-10 02:12:15', '2022-08-10 02:30:31'),
(9, 2, 'Saree mall', 'Saree mall', 'Saree Mall Floral Saree', 'Saree Mall Floral Saree', '2399', '1999', '1660117457.jpeg', '20', '18', 0, 1, 'Dress up or dress down this modish saree for any ethnic function. I', 'Dress up or dress down this modish saree for any ethnic function. I', 'Dress up or dress down this modish saree for any ethnic function. I', '2022-08-10 02:14:17', '2022-08-10 02:14:17'),
(10, 2, 'Anouk', 'Anouk-saree', 'Sea Green & Yellow Pure Georgette Floral Printed Saree', 'Sea Green & Yellow Pure Georgette Floral Printed Saree', '2599', '2399', '1660117576.jpeg', '25', '18', 0, 0, 'Sea Green and Yellow printed saree and has an embellished border', 'Sea Green and Yellow printed saree and has an embellished border', 'Sea Green and Yellow printed saree and has an embellished border', '2022-08-10 02:16:16', '2022-08-10 02:30:48'),
(11, 4, 'SASSAFRAS', 'SASSAFRAS-jeans', 'Women Blue Pure Cotton Relaxed Fit High-Rise Clean Look Cropped Jeans', 'Women Blue Pure Cotton Relaxed Fit High-Rise Clean Look Cropped Jeans', '699', '599', '1660117773.jpeg', '30', '18', 0, 1, 'Blue medium wash 5-pocket high-rise cropped jeans, clean look, light fade, has a button and zip closure, and waistband with belt loops', 'Blue medium wash 5-pocket high-rise cropped jeans, clean look, light fade, has a button and zip closure, and waistband with belt loops', 'Blue medium wash 5-pocket high-rise cropped jeans, clean look, light fade, has a button and zip closure, and waistband with belt loops', '2022-08-10 02:19:33', '2022-08-10 02:19:33'),
(12, 5, 'plusS', 'plusS-dress', 'Women red Smocked Dress', 'Women red Smocked Dress', '2399', '2200', '1660117958.jpeg', '15', '18', 0, 1, 'A contemporary dress with a nod to classic styles, this piece is a must-have. It has beautifully designed with shoulder straps and a lovely sleeveless design.', 'A contemporary dress with a nod to classic styles, this piece is a must-have. It has beautifully designed with shoulder straps and a lovely sleeveless design.', 'A contemporary dress with a nod to classic styles, this piece is a must-have. It has beautifully designed with shoulder straps and a lovely sleeveless design.', '2022-08-10 02:22:38', '2022-08-10 02:22:38'),
(13, 6, 'URBANIC', 'URBANIC-top', 'Floral Print Bralette Crop Top', 'Floral Print Bralette Crop Top', '349', '329', '1660118171.jpeg', '10', '18', 0, 1, 'Shoulder straps, short, shoulder straps sleeves Woven', 'Shoulder straps, short, shoulder straps sleeves\r\nWoven', 'Shoulder straps, short, shoulder straps sleeves\r\nWoven', '2022-08-10 02:26:11', '2022-08-10 02:26:11'),
(14, 6, 'Tokyo Talkies', 'TokyoTalkies-top', 'Embroidered Crop Top', 'Embroidered Crop Top', '1199', '1149', '1660118304.png', '10', '18', 0, 0, 'embroidered woven regular top, has an off-shoulder neck, and three-quarter sleeves', 'embroidered woven regular top, has an off-shoulder neck, and three-quarter sleeves', 'embroidered woven regular top, has an off-shoulder neck, and three-quarter sleeves', '2022-08-10 02:28:24', '2022-08-10 02:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Susmita Dey', 'susmitadey@gmail.com', NULL, '$2y$10$0f61U6iEP5hfyRI6gKkhge5kTm3jpxDoo4ZKODRkOFpYpGU1gZcGO', 1, NULL, '2022-08-08 02:33:16', '2022-08-08 02:33:16'),
(2, 'Tina Sarma', 'tina@gmail.com', NULL, '$2y$10$MDh0gu8Vs8tU79byDpoRCeWJX74PMP8yFEnwiAbhw9YGE4aevMNie', 0, NULL, '2022-08-08 03:23:08', '2022-08-08 03:23:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
