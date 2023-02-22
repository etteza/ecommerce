-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2022 at 12:17 PM
-- Server version: 10.3.32-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satotaonlinebaza_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '01726122917', 'admin@gmail.com', '271650206_20210910102334_12219701.jpg', NULL, '$2y$10$vPfhmUxUIXTIX.FJOLadaeVNoNrQKczJhbD/stOSaUgq1DIOcShS.', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2021-09-10 04:23:34'),
(4, 'Imran Khan', '01961363546', 'imrankhan@gmail.com', 'avatar.jpg', NULL, '$2y$10$2Hgy7PMf3xCkd9yS8H5JZeXjY8duHqLAvYMmcGximDAOKSE5OLS..', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(5, 'Md Abubakar', '01775566584', 'a@gmail.com', 'avatar.jpg', NULL, '$2y$10$803mOVc2m9UvPmFZeSuNAONkQzcp/sD9hCwb4M7ZXnSgejm/5a0KW', NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(23, 'মর্ডান ফুড', 'public/media/brand/060821_11_53_37.jfif', NULL, NULL),
(24, 'এ সি আই', 'public/media/brand/150821_07_19_36.jpeg', NULL, NULL),
(25, 'বসুন্ধরা', 'public/media/brand/041121_19_22_08.jpeg', NULL, NULL),
(26, 'ফ্রেশ', 'public/media/brand/150821_07_29_40.png', NULL, NULL),
(27, 'তীর', 'public/media/brand/150821_07_17_42.png', NULL, NULL),
(28, 'প্রাণ', 'public/media/brand/150821_08_30_17.jpeg', NULL, NULL),
(29, 'রূপচাঁদা', 'public/media/brand/041121_19_25_10.jpeg', NULL, NULL),
(31, 'রুচিতা ফুড', 'public/media/brand/110921_12_09_07.png', NULL, NULL),
(32, 'তাজ', 'public/media/brand/110921_12_51_16.jpeg', NULL, NULL),
(33, 'পুষ্টি', 'public/media/brand/110921_12_05_23.png', NULL, NULL),
(34, 'BD FOOD', 'public/media/brand/150921_16_00_13.jpg', NULL, NULL),
(35, 'রুচি', 'public/media/brand/160921_07_18_58.jpg', NULL, NULL),
(36, 'Ispahani', 'public/media/brand/180921_12_22_16.jpg', NULL, NULL),
(37, 'Taaza', 'public/media/brand/180921_12_16_17.jpg', NULL, NULL),
(38, 'COCA COLA', 'public/media/brand/180921_15_35_45.jpg', NULL, NULL),
(39, 'SPRITE', 'public/media/brand/180921_15_57_46.jpg', NULL, NULL),
(40, '7UP', 'public/media/brand/180921_15_46_47.jpg', NULL, NULL),
(41, 'CLEMON', 'public/media/brand/180921_15_47_48.jpg', NULL, NULL),
(42, 'MOJO', 'public/media/brand/180921_15_54_49.jpg', NULL, NULL),
(43, 'PEPSI', 'public/media/brand/180921_15_34_53.jpg', NULL, NULL),
(44, 'MAM', 'public/media/brand/180921_17_58_14.jpg', NULL, NULL),
(45, 'AQUAFINA', 'public/media/brand/180921_17_23_17.jpg', NULL, NULL),
(46, 'UNCOMON', 'public/media/brand/180921_18_51_32.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'মাছ এবং মাংস', '2019-10-11 06:24:19', '2019-10-11 06:24:19'),
(5, 'রান্নাবান্না', '2019-10-17 08:16:00', '2019-10-17 08:16:00'),
(6, 'ফল এবং শাক-সবঝিসমুহ', '2019-10-20 10:18:30', '2019-10-20 10:18:30'),
(7, 'পানীয়', '2019-10-20 10:18:40', '2019-10-20 10:18:40'),
(8, 'বাসা ও পরিষ্কারের সামগ্রী', '2019-10-20 10:19:43', '2019-10-20 10:19:43'),
(9, 'পোকা নিধনকারী সামগ্রী', '2019-10-20 10:19:51', '2019-10-20 10:19:51'),
(11, 'প্রসাধন সামগ্রী', '2021-07-26 05:29:40', '2021-07-26 05:29:40'),
(13, 'মর্ডাণ হারবাল পণ্য', '2021-08-06 05:39:16', '2021-08-06 05:39:16'),
(14, 'সাস্থ্য বিষয়ক দ্রব্য', '2021-08-10 11:05:09', '2021-08-10 11:05:09'),
(19, 'পোষা পাখি ও প্রাণীর খাবার সামগ্রী', '2021-08-24 07:02:37', '2021-08-24 07:02:37'),
(20, 'গৃহস্থালি জিনিসপত্র', '2021-08-24 07:17:21', '2021-08-24 07:17:21'),
(21, 'শিশুদের ব্যবহার্য', '2021-08-24 07:19:45', '2021-08-24 07:19:45'),
(23, 'শিশুদের খাবার', '2021-08-25 14:03:59', '2021-08-25 14:03:59'),
(25, 'ভাজা পোড়া', '2021-08-25 14:12:01', '2021-08-25 14:12:01'),
(27, 'অফিস পণ্যসমুহ', '2021-08-29 06:59:03', '2021-08-29 06:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2019_10_10_135206_create_categories_table', 2),
(6, '2019_10_10_135221_create_subcategories_table', 2),
(7, '2019_10_10_135236_create_brands_table', 2),
(8, '2019_10_15_152304_create_coupons_table', 3),
(9, '2019_10_15_154357_create_newslaters_table', 4),
(10, '2019_10_16_054617_create_products_table', 5),
(11, '2019_10_21_153355_create_post_category_table', 6),
(12, '2019_10_21_153417_create_posts_table', 6),
(13, '2019_10_25_140504_create_wishlists_table', 7),
(14, '2019_11_19_144943_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2019_11_28_124814_create_orders_table', 10),
(21, '2019_11_28_124827_create_order_details_table', 10),
(22, '2019_11_28_124843_create_shipping_table', 10),
(23, '2019_12_10_145038_create_subscribers_table', 11),
(24, '2019_12_10_145333_create_seo_table', 12),
(25, '2019_12_12_144824_create_sitesetting_table', 13),
(26, '2014_10_12_000000_create_users_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sohidulislam353@gmail.com', '2019-10-15 06:50:03', NULL),
(2, 'sohidulislam@gmail.com', '2019-10-15 15:51:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SDrHy9raVskWZ2SKC9rzPQWLl7OBSuRH2Itplvss', 'http://localhost', 1, 0, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41'),
(2, NULL, 'Laravel Password Grant Client', 'hWD1ovG64xGFLKy6VsFc58ngKu4DVu8PFxJzrNKA', 'http://localhost', 0, 1, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(2, '1', 'stripe', 'card_1FjnCRElDWEjvc0dveBreDLT', '20700', 'txn_1FjnCSElDWEjvc0dcrZuHTJk', '5ddfcdd5cc496', '200', '7', '0', '207', '3', '0', 'November', '28-11-19', '2019', '1378831', NULL, NULL),
(3, '5', 'stripe', 'card_1FkWm7ElDWEjvc0d6xkq4zBi', '24700', 'txn_1FkWmAElDWEjvc0dbwukZ6P3', '5de27a2e2ab28', '220', '7', '0', '247', '3', '2', 'November', '30-11-19', '2019', '273121', NULL, NULL),
(4, '4', 'stripe', 'card_1ForWPElDWEjvc0dE06wAcpP', '487', 'txn_1ForWRElDWEjvc0djexIeIrz', '5df23d962dd21', '480.00', '7', '0', '487', '3', '0', 'December', '12-12-19', '2019', '2347112', NULL, NULL),
(5, '4', 'stripe', 'card_1FordHElDWEjvc0dtSiwT4jP', '407', 'txn_1FordJElDWEjvc0dVJJBtYUu', '5df23f40871e5', '400.00', '7', '0', '407', '0', '0', 'December', '12-12-19', '2019', '414640', NULL, NULL),
(6, '5', 'stripe', 'card_1FsO0AElDWEjvc0d8ohmsx8y', '67', 'txn_1FsO0DElDWEjvc0d3LODtSUP', '5dff0e3288e97', '60.00', '7', '0', '67', '0', '0', 'December', '22-12-19', '2019', '111001', NULL, NULL),
(7, '5', 'stripe', 'card_1FsO0AElDWEjvc0dCFfEib3U', '67', 'txn_1FsO0DElDWEjvc0dQFKZfBgA', '5dff0e3288e97', '60.00', '7', '0', '67', '3', '0', 'December', '22-12-19', '2019', '130471', NULL, NULL),
(8, '5', 'stripe', 'card_1FsUZAElDWEjvc0dbKzIzpDv', '157', 'txn_1FsUZCElDWEjvc0dcYLARsk0', '5dff70c054773', '130', '7', '0', '157', '0', '0', 'December', '22-12-19', '2019', '592522', NULL, NULL),
(9, '4', 'Cash on Delivary', NULL, '0', NULL, NULL, '200.00', '7', NULL, '207', '3', '0', 'August', '06-08-21', '2021', '695596', NULL, NULL),
(10, '4', 'Cash on Delivary', NULL, '0', NULL, NULL, '200.00', '7', NULL, '207', '3', '0', 'August', '06-08-21', '2021', '458700', NULL, NULL),
(11, '5', 'Cash on Delivary', NULL, '0', NULL, NULL, '150.00', '7', NULL, '157', '1', '0', 'August', '06-08-21', '2021', '291041', NULL, NULL),
(12, '6', 'Cash on Delivary', NULL, '0', NULL, NULL, '200.00', '7', NULL, '207', '0', '0', 'August', '06-08-21', '2021', '371182', NULL, NULL),
(13, '2', 'Cash on Delivary', NULL, '0', NULL, NULL, '195', '7', NULL, '207', '3', '0', 'August', '07-08-21', '2021', '234118', NULL, NULL),
(14, '9', 'Cash on Delivary', NULL, '0', NULL, NULL, '400.00', '7', NULL, '407', '1', '0', 'August', '13-08-21', '2021', '389732', NULL, NULL),
(15, '11', 'Cash on Delivary', NULL, '0', NULL, NULL, '140.00', '7', NULL, '147', '0', '0', 'September', '18-09-21', '2021', '371547', NULL, NULL),
(16, '11', 'Cash on Delivary', NULL, '0', NULL, NULL, '850.00', '7', NULL, '857', '0', '0', 'September', '18-09-21', '2021', '950579', NULL, NULL),
(17, '12', 'Cash on Delivary', NULL, '0', NULL, NULL, '60.00', '7', NULL, '67', '0', '0', 'September', '20-09-21', '2021', '981629', NULL, NULL),
(18, '13', 'Cash on Delivary', NULL, '0', NULL, NULL, '200.00', '7', NULL, '207', '0', '0', 'November', '09-11-21', '2021', '157069', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 2, '21', 'Yellow Smart Watch', 'Yellow', NULL, '2', '70', '140', NULL, NULL),
(2, 2, '18', 'Women Jacket', 'Blue', 'Sm', '2', '30', '60', NULL, NULL),
(3, 3, '23', 'JBl Speaker', 'Black', NULL, '2', '100', '200', NULL, NULL),
(4, 3, '20', 'Men Smart Watch', 'Black', NULL, '1', '40', '40', NULL, NULL),
(5, 4, '23', 'JBl Speaker', 'Black', NULL, '1', '100', '100', NULL, NULL),
(6, 4, '21', 'Yellow Smart Watch', 'Yellow', NULL, '2', '70', '140', NULL, NULL),
(7, 4, '16', 'Computer Desk', 'Black', NULL, '1', '240', '240', NULL, NULL),
(8, 5, '22', 'Canon 1100D', 'Black', NULL, '1', '400', '400', NULL, NULL),
(9, 6, '18', 'Women Jacket', 'yellow', 'Xl', '2', '30', '60', NULL, NULL),
(10, 7, '18', 'Women Jacket', 'yellow', 'Xl', '2', '30', '60', NULL, NULL),
(11, 8, '21', 'Yellow Smart Watch', 'Yellow', NULL, '1', '70', '70', NULL, NULL),
(12, 8, '20', 'Men Smart Watch', 'Black', NULL, '2', '40', '80', NULL, NULL),
(13, 9, '2', 'Men\'s Black Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(14, 10, '2', 'Men\'s Black Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(15, 11, '26', 'মাশরুম টুথপেস্ট', NULL, NULL, '1', '150', '150', NULL, NULL),
(16, 12, '2', 'Men\'s Black Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(17, 13, '3', 'Mens Wood Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(18, 14, '2', 'Men\'s Black Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(19, 14, '3', 'Mens Wood Watch', NULL, NULL, '1', '200', '200', NULL, NULL),
(20, 15, '46', 'চিনিগুরা চাল ১ কেজি', NULL, NULL, '2', '70', '140', NULL, NULL),
(21, 16, '90', 'এ সি আই পিওর সয়াবিন তেল ৫ লিটার', NULL, NULL, '1', '720', '720', NULL, NULL),
(22, 16, '96', 'তাজ সরিষা তেল ৫০০ মিলি', NULL, NULL, '1', '130', '130', NULL, NULL),
(23, 17, '205', 'রসুন দেশি ৫০০ গ্রাম', NULL, NULL, '1', '60', '60', NULL, NULL),
(24, 18, '148', 'মর্ডান ম রিচ গুড়া', NULL, NULL, '1', '100', '100', NULL, NULL),
(25, 18, '149', 'মর্ডান হলুদ গুড়া', NULL, NULL, '1', '100', '100', NULL, NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_bn`, `post_image`, `details_en`, `details_bn`, `created_at`, `updated_at`) VALUES
(3, 2, 'hello learn hunter', 'হ্যালো শিকারী শিখুন', 'public/media/post/1648020855193806.jpg', '<strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span>', 'Lorem Ipsum কেবল মুদ্রণ এবং টাইপসেটিং শিল্পের ডামি পাঠ্য। লোরেম ইপসাম 1500 এর দশক থেকে শিল্পের স্ট্যান্ডার্ড ডামি পাঠ্যরূপে রয়েছেন, যখন কোনও অজানা প্রিন্টার একটি প্রকারের গ্যালি নেন এবং কোনও ধরণের নমুনার বই তৈরি করতে স্ক্র্যাম্বল করে bled এটি কেবল পাঁচটি শতাব্দীই বেঁচে নেই, বৈদ্যুতিন টাইপসেটেটিংয়ে ঝাঁপিয়ে পড়েছে, মূলত অপরিবর্তিত রয়েছে। ১৯60০ এর দশকে এটি লোরেম ইপসাম প্যাসেজ সহ লেটারসেট শীট প্রকাশের সাথে জনপ্রিয় হয়েছিল এবং আরও সম্প্রতি এলডাস', NULL, NULL),
(4, 2, 'This is the second post of ecommerce', 'এটি ইকমার্সের দ্বিতীয় পোস্ট', 'public/media/post/1650702364583191.png', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like</span>', '<div><br></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 24px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে কোনও পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠকের পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে racted লরেম ইপসাম ব্যবহারের বিষয়টি হ\'ল এটিতে চিঠিপত্রের কম-বেশি স্বাভাবিক বিতরণ থাকে, যেমন \'এখানে সামগ্রী, এখানে সামগ্রী\' ব্যবহার করার বিপরীতে, এটি পড়ার মতো ইংরাজির মতো দেখায়। অনেক ডেস্কটপ প্রকাশনা প্যাকেজ এবং ওয়েব পৃষ্ঠার সম্পাদক এখন লোরেম ইপসামকে তাদের ডিফল্ট মডেল পাঠ্য হিসাবে ব্যবহার করেন এবং \'লরেম ইপসাম\' অনুসন্ধানের ফলে তাদের শৈশবকালীন অনেকগুলি ওয়েবসাইট উন্মোচিত হবে। বিভিন্ন সংস্করণ কয়েক বছর ধরে বিকশিত হয়েছে, কখনও দুর্ঘটনার দ্বারা, কখনও কখনও উদ্দেশ্য (ইনজেকশনের হাস্যরস এবং এর মতো</span><br></div>', NULL, NULL),
(5, 3, 'This is the third post of ecommerce', 'এটি ইকমার্সের তৃতীয় পোস্ট', 'public/media/post/1650702829671403.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like', '<pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 24px; line-height: 32px; background-color: rgb(248, 249, 250); border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; font-family: inherit; overflow: hidden; width: 283px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(34, 34, 34);\"><span tabindex=\"0\" lang=\"bn\">এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে কোনও পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠকের পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে racted লরেম ইপসাম ব্যবহারের বিষয়টি হ\'ল এটিতে চিঠিপত্রের কম-বেশি স্বাভাবিক বিতরণ থাকে, যেমন \'এখানে সামগ্রী, এখানে সামগ্রী\' ব্যবহার করার বিপরীতে, এটি পড়ার মতো ইংরাজির মতো দেখায়। অনেক ডেস্কটপ প্রকাশনা প্যাকেজ এবং ওয়েব পৃষ্ঠার সম্পাদক এখন লোরেম ইপসামকে তাদের ডিফল্ট মডেল পাঠ্য হিসাবে ব্যবহার করেন এবং \'লরেম ইপসাম\' অনুসন্ধানের ফলে তাদের শৈশবকালীন অনেকগুলি ওয়েবসাইট উন্মোচিত হবে। বিভিন্ন সংস্করণ কয়েক বছর ধরে বিকশিত হয়েছে, কখনও দুর্ঘটনার দ্বারা, কখনও কখনও উদ্দেশ্য </span></pre>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(1, 'Offer', 'অফার ', NULL, NULL),
(2, 'Service', 'সার্ভিস ', NULL, NULL),
(3, 'Event', 'ইভেন্ট ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` float(18,2) NOT NULL,
  `customer_poin` float(18,2) NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `regular_price`, `customer_poin`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(46, 5, 86, 26, 'চিনিগুরা চাল ১ কেজি', '101', '100', NULL, NULL, NULL, '70', 75.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710948952149710.jpg', 'public/media/product/1710948952262606.jpg', 'public/media/product/1710948952302832.jpg', 1, NULL, NULL),
(47, 5, 86, 27, 'নাজিরশাল চাল প্রিমিয়াম ৫ কেজি', '102', '20', '<p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6252.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Origin: Bangladesh</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6252.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">One of the finest quality rice available in the market at a reasonable&nbsp;</p>', NULL, NULL, '300', 330.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710949247771279.jpg', 'public/media/product/1710949247833213.jpg', 'public/media/product/1710949247872346.jpg', 1, NULL, NULL),
(48, 5, 86, 27, 'মিনিকেট চাল প্রিমিয়াম ৫ কেজি', '103', '200', '<p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6373.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Chaldal is offering the most popular Rice in Bangladesh now available at affordable price.</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6373.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Rice Type: Miniket Premium.</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6373.4.0.1.0.1.4.$line-2\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p6373.4.0.1.0.1.4.$line-3\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Net Weight 5 kg.</p>', NULL, NULL, '320', 340.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710949659370439.jpg', 'public/media/product/1710949659437294.jpg', 'public/media/product/1710949659480955.jpg', 1, NULL, NULL),
(49, 5, 86, 27, 'চাষী সুগন্ধি চিনিগুঁড়া চাল ২ কেজি', '104', '30', NULL, NULL, NULL, '200', 220.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710949856895409.jpg', 'public/media/product/1710949856938579.jpg', 'public/media/product/1710949856966364.jpg', 1, NULL, NULL),
(50, 5, 86, 28, 'প্রান চিনিগুঁড়া চাল ২ কেজি', '105', '40', '<p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p3916.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Pran Chinigura Aromatic Rice (Polau). Fresh and Clean,</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p3916.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Vacuum Packed. Pran Chinigura Rice can be use in Biriyani, Polau, Firni, Kheer,&nbsp;</p>', NULL, NULL, '210', 230.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710950524435445.jpg', 'public/media/product/1710950524489057.jpg', 'public/media/product/1710950524516381.jpg', 1, NULL, NULL),
(51, 5, 86, 29, 'রুপচাঁদা চিনিগুঁড়া প্রিমিয়াম সুগন্ধি চাল ১ কেজি', '106', '60', '<p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Original Chinigura Aroma .</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-2\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">No presence of broken and big grain.</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-3\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-4\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Ensures non sticky polao .</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-5\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-6\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Processed for 3 months .</p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-7\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".208ipzf5fyy.6.2.0.0.0.0.2.5.1.0:$p9833.4.0.1.0.1.4.$line-8\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Best for all types of polao, biriyani&nbsp;</p>', NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710950836983987.jpg', 'public/media/product/1710950837042486.jpg', 'public/media/product/1710950837076310.jpg', 1, NULL, NULL),
(52, 5, 86, 26, 'ফ্রেশ চিনিগুড়া চাল ১ কেজি', '107', '80', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710950966208822.jpg', 'public/media/product/1710950966262052.jpg', 'public/media/product/1710950966305861.jpg', 1, NULL, NULL),
(53, 5, 86, 29, 'রুপচাঁদা মিনিকেট চাল ৫ কেজি', '108', '70', NULL, NULL, NULL, '330', 350.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710951182987252.jpg', 'public/media/product/1710951183027801.jpg', 'public/media/product/1710951183051898.jpg', 1, NULL, NULL),
(54, 5, 86, 29, 'রুপচাঁদা নাজিরশাল চাল ৫ কেজি', '109', '80', NULL, NULL, NULL, '380', 400.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710951335653585.jpg', 'public/media/product/1710951335717854.jpg', 'public/media/product/1710951335756725.jpg', 1, NULL, NULL),
(55, 5, 86, 28, 'প্রান নাজিরশাল চাল ৫ কেজি', '110', '80', NULL, NULL, NULL, '370', 390.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710951762022574.jpg', 'public/media/product/1710951762087612.jpg', 'public/media/product/1710951762127240.jpg', 1, NULL, NULL),
(56, 5, 96, 24, 'এ সি আই পিওর সুজি ৫০০ গ্রাম', '120', '50', NULL, NULL, NULL, '32', 34.00, 4.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710960521598087.jpg', 'public/media/product/1710960521653000.jpg', 'public/media/product/1710960521686815.jpg', 1, NULL, NULL),
(57, 5, 96, 26, 'ফ্রেশ সুজি ৫০০ গ্রাম', '121', '60', NULL, NULL, NULL, '32', 34.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710960631906701.jpg', 'public/media/product/1710960631932076.jpg', 'public/media/product/1710960631951322.jpg', 1, NULL, NULL),
(58, 5, 96, 25, 'বসুন্ধরা সুজি ৫০০ গ্রাম', '122', '60', NULL, NULL, NULL, '33', 34.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710960905578630.jpg', 'public/media/product/1710960905644211.jpg', 'public/media/product/1710960905684183.jpg', 1, NULL, NULL),
(59, 5, 96, 33, 'পুষ্টি সুজি ৫০০ গ্রাম', '23', '60', NULL, NULL, NULL, '32', 32.00, 4.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710961005890109.jpg', 'public/media/product/1710961005945553.jpg', 'public/media/product/1710961005982900.jpg', 1, NULL, NULL),
(60, 5, 96, 27, 'তীর সেমোলিনা সুজি ৫০০ গ্রাম', '124', '60', NULL, NULL, NULL, '32', 32.00, 4.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710961900098554.jpg', 'public/media/product/1710961900160064.jpg', 'public/media/product/1710961900199754.jpg', 1, NULL, NULL),
(61, 5, 96, 25, 'বসুন্ধরা ভার্মিসেল্লি সেমাই ২০০ গ্রাম', '125', '50', NULL, NULL, NULL, '33', 33.00, 4.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710962047705990.jpg', 'public/media/product/1710962047753153.jpg', 'public/media/product/1710962047782820.jpg', 1, NULL, NULL),
(62, 5, 96, 34, 'বিডি সেমাই ২০০ গ্রাম', '126', '60', NULL, NULL, NULL, '35', 36.00, 4.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710962524053181.jpg', 'public/media/product/1710962524117426.jpg', 'public/media/product/1710962524158722.jpg', 1, NULL, NULL),
(63, 5, 96, 28, 'বনফুল লাচ্ছা সেমাই ২০০ গ্রাম', '127', '80', NULL, NULL, NULL, '34', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710968315708953.jpg', 'public/media/product/1710968315749929.jpg', 'public/media/product/1710968315771687.jpg', 1, NULL, NULL),
(64, 5, 96, 25, 'কক সেমাই ২০০ গ্রাম', '128', '80', NULL, NULL, NULL, '34', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710968478520519.jpg', 'public/media/product/1710968478586395.jpg', 'public/media/product/1710968478628696.jpg', 1, NULL, NULL),
(65, 5, 96, 25, 'বসুন্ধরা লাচ্ছা সেমাই ২০০ গ্রাম', '129', '80', NULL, NULL, NULL, '35', 35.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710968655189370.jpg', 'public/media/product/1710968655252301.jpg', 'public/media/product/1710968655292437.jpg', 1, NULL, NULL),
(66, 5, 96, 26, 'রাঁধুনি সেমাই ২০০ গ্রাম', '130', '80', NULL, NULL, NULL, '34', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710968886987143.jpg', 'public/media/product/1710968887013415.jpg', 'public/media/product/1710968887027944.jpg', 1, NULL, NULL),
(67, 5, 96, 33, 'ডেকো ভার্মিসেল্লি সেমাই ২০০ গ্রাম', '131', '80', NULL, NULL, NULL, '34', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710969581136771.jpg', 'public/media/product/1710969581202802.jpg', 'public/media/product/1710969581244755.jpg', 1, NULL, NULL),
(68, 5, 96, 28, 'প্রাণ ভার্মিসেলি সেমাই ২০০ গ্রাম', '132', '80', NULL, NULL, NULL, '34', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710971124201855.jpg', 'public/media/product/1710971124264257.jpg', 'public/media/product/1710971124301495.jpg', 1, NULL, NULL),
(69, 5, 94, 28, 'ছোলা বুট ডাল ১ কেজি', '133', '80', NULL, NULL, NULL, '75', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710971519799747.jpg', 'public/media/product/1710971519830332.jpg', 'public/media/product/1710971519849266.jpg', 1, NULL, NULL),
(70, 5, 94, 28, 'মশুর ডাল (দেশি) ১ কেজি', '134', '80', NULL, NULL, NULL, '105', 110.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710971721412368.jpg', 'public/media/product/1710971721462000.jpg', 'public/media/product/1710971721494009.jpg', 1, NULL, NULL),
(71, 5, 94, 25, 'মুগ ডাল ৫০০ গ্রাম', '135', '80', NULL, NULL, NULL, '80', 85.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710971838575828.jpg', 'public/media/product/1710971838630060.jpg', 'public/media/product/1710971838671159.jpg', 1, NULL, NULL),
(72, 5, 94, 26, 'বুট ডাল ৫০০ গ্রাম', '136', '80', NULL, NULL, NULL, '45', 50.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710971951161746.jpg', 'public/media/product/1710971951262850.jpg', 'public/media/product/1710971951302287.jpg', 1, NULL, NULL),
(73, 5, 94, 26, 'ফ্রেশ মশুর ডাল ১ কেজি', '137', '80', NULL, NULL, NULL, '110', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972070419109.jpg', 'public/media/product/1710972070471670.jpg', 'public/media/product/1710972070510811.jpg', 1, NULL, NULL),
(74, 5, 94, 24, 'ডাবলি বুট ৫০০ গ্রাম প্যাকেট', '138', '80', NULL, NULL, NULL, '40', 45.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972186804118.jpg', 'public/media/product/1710972186855470.jpg', 'public/media/product/1710972186899737.jpg', 1, NULL, NULL),
(75, 5, 94, 28, 'প্রান মুগ ডাল ৫০০ গ্রাম', '139', '80', NULL, NULL, NULL, '85', 90.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972275113399.jpg', 'public/media/product/1710972275150353.jpg', 'public/media/product/1710972275178672.jpg', 1, NULL, NULL),
(76, 5, 94, 28, 'প্রান মশুর ডাল (দেশি) ৫০০ গ্রাম', '140', '80', NULL, NULL, NULL, '60', 66.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972383924830.jpg', 'public/media/product/1710972383952489.jpg', 'public/media/product/1710972383973190.jpg', 1, NULL, NULL),
(77, 5, 94, 33, 'পুষ্টি দেশি মশুর ডাল ১ কেজি', '141', '80', '<p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p18651.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Lentils are edible pulses or seeds that belong to the legume family. These lentils mostly consist of two halves covered in a husk. Both the seeds are lens-shaped, which is probably why they are named Lens culinaris in Latin. They are also one of the oldest known sources of food, dating back more than 9,000 years.</p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p18651.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">When it comes to affordable healthy eating, PUSTI lentils are your new best friend. PUSTI Deshi Moshur Dal is a nutritional powerhouse, offering plenty of essential nutrients that benefit your health, and they\'re also extremely versatile in the kitchen, so you can eat&nbsp;</p>', NULL, NULL, '105', 110.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972736315158.webp', 'public/media/product/1710972736887429.webp', 'public/media/product/1710972736922539.webp', 1, NULL, NULL),
(78, 5, 94, 24, 'এ সি আই পিওর মশুর ডাল ১ কেজি', '142', '80', NULL, NULL, NULL, '115', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710972848477126.jpg', 'public/media/product/1710972848530691.jpg', 'public/media/product/1710972848571296.jpg', 1, NULL, NULL),
(79, 5, 90, 26, 'ফ্রেশ সয়াবিন তেল ৫ লিটার', '143', '80', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil cont</span>', NULL, NULL, '720', 760.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710973162085164.jpg', 'public/media/product/1710973162141985.jpg', 'public/media/product/1710973162174366.jpg', 1, NULL, NULL),
(80, 5, 90, 26, 'ফ্রেশ সয়াবিন তেল ২ লিটার', '144', '80', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vi</span>', NULL, NULL, '300', 320.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710973356274448.jpg', 'public/media/product/1710973356370607.jpg', 'public/media/product/1710973356393532.jpg', 1, NULL, NULL),
(81, 5, 90, 33, 'পুষ্টি সয়াবিন তেল ৫ লিটার', '145', '80', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">PUSTI Soyabean Oil’ is a flagship premium brand in soyabean oil market of Bangladesh. Due to excellence in sourcing and state-of-the-art German refining technology, ‘PUSTI Soyabean Oil’ preserves the inherent goodness and properties of soyabean to give consumers light, tasty and healthy edible oil. The great taste enhancer along with their quality has won the consumer loyalty across Bangladesh. As these oils are rich in Polyunsaturated Fatty Acids, they help in keeping cholesterol level under check and are preferred by health-conscious home makers</span>', NULL, NULL, '710', 730.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710973493269785.jpg', 'public/media/product/1710973493340601.jpg', 'public/media/product/1710973493386058.jpg', 1, NULL, NULL),
(82, 5, 90, 33, 'পুস্টি সয়াবিন তেল ২ লিটার', '146', '80', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">‘PUSTI Soyabean Oil’ is a flagship premium brand in soyabean oil market of Bangladesh. Due to excellence in sourcing and state-of-the-art German refining technology, ‘PUSTI Soyabean Oil’ preserves the inherent goodness and properties of soyabean to give consumers light, tasty and healthy edible oil. The great taste enhancer along with their quality has won the consumer loyalty across Bangladesh. As these oils are rich in Polyunsaturated Fatty Acids, they help in keeping cholester</span>', NULL, NULL, '290', 300.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710973639656885.jpg', 'public/media/product/1710973639722965.jpg', 'public/media/product/1710973639764459.jpg', 1, NULL, NULL),
(83, 5, 90, 29, 'রূপচাঁদা সয়াবিন তেল ৫ লিটার', '148', '80', '<p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2443.4.0.1.0.1.4.$line-0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">First Vitamin A fortified Soyabean Oil.</p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2443.4.0.1.0.1.4.$line-1\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2443.4.0.1.0.1.4.$line-2\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Increases immunity.</p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2443.4.0.1.0.1.4.$line-3\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2443.4.0.1.0.1.4.$line-4\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Strengthens bone&nbsp;</p>', NULL, NULL, '740', 760.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710977795771648.jpg', 'public/media/product/1710977795834326.jpg', 'public/media/product/1710977795875281.jpg', 1, NULL, NULL),
(84, 5, 90, 29, 'রূপচাঁদা সয়াবিন তেল ২ লিটার', '149', '80', '<p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2442.4.0.1.0.1.4.$line-2\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">First Vitamin A fortified Soyabean Oil.</p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2442.4.0.1.0.1.4.$line-3\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2442.4.0.1.0.1.4.$line-4\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Increases immunity.</p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2442.4.0.1.0.1.4.$line-5\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".9kiimxvgk0.6.2.0.0.0.0.2.5.1.0:$p2442.4.0.1.0.1.4.$line-6\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Strengthens bone &amp; teeth.</p>', NULL, NULL, '310', 320.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710977923164475.jpg', 'public/media/product/1710977923192460.jpg', 'public/media/product/1710977923209560.jpg', 1, NULL, NULL),
(85, 5, 90, 27, 'তীর সয়াবিন তেল ৫ লিটার', '150', '80', NULL, NULL, NULL, '700', 720.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978065633154.jpg', 'public/media/product/1710978065695219.jpg', 'public/media/product/1710978065729110.jpg', 1, NULL, NULL),
(86, 5, 90, 27, 'তীর সয়াবিন তেল ২ লিটার', '151', '80', NULL, NULL, NULL, '300', 320.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978180972990.jpg', 'public/media/product/1710978181013888.jpg', 'public/media/product/1710978181046913.jpg', 1, NULL, NULL),
(87, 5, 90, 25, 'বসুন্ধরা ফর্টিফাইড সয়াবিন  ১ লিটার', '152', '80', NULL, NULL, NULL, '150', 155.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978527608598.jpg', 'public/media/product/1710978527661441.jpg', 'public/media/product/1710978527691695.jpg', 1, NULL, NULL),
(88, 5, 90, 25, 'Bashundhara Soybean Oil 5 Ltr', '153', '80', NULL, NULL, NULL, '700', 730.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978695893269.jpg', 'public/media/product/1710978695947066.jpg', 'public/media/product/1710978695976492.jpg', 1, NULL, NULL),
(89, 5, 90, 25, '2Ltr Bashundhara Fortified Soyabean Oil', '154', '80', NULL, NULL, NULL, '280', 300.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978857354135.jpg', 'public/media/product/1710978857407282.jpg', 'public/media/product/1710978857438134.jpg', 1, NULL, NULL),
(90, 5, 90, 24, 'এ সি আই পিওর সয়াবিন তেল ৫ লিটার', '155', '80', NULL, NULL, NULL, '720', 760.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710978982590444.jpg', 'public/media/product/1710978982639425.jpg', 'public/media/product/1710978982675021.jpg', 1, NULL, NULL),
(91, 5, 90, 24, 'এ সি আই পিওর সয়াবিন তেল ২ লিটার', '156', '80', NULL, NULL, NULL, '300', 320.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710979176490512.jpg', 'public/media/product/1710979176552353.jpg', 'public/media/product/1710979176596234.jpg', 1, NULL, NULL),
(92, 5, 90, 32, 'তাজ সরিষা তেল ৫ লিটার', '157', '80', NULL, NULL, NULL, '1250', 1300.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711676347440535.jpg', 'public/media/product/1710983341111045.jpg', 'public/media/product/1710983341127197.jpg', 1, NULL, NULL),
(93, 5, 90, 32, 'তাজ সরিষা তেল ২ লিটার', '158', '80', NULL, NULL, NULL, '520', 550.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711676398656004.jpg', 'public/media/product/1710983482871751.jpg', 'public/media/product/1710983482881130.jpg', 1, NULL, NULL),
(94, 5, 90, 32, 'তাজ সরিষা তেল ৮ লিটার', '159', '80', NULL, NULL, NULL, '155O', 1600.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1710983605882309.jpg', 'public/media/product/1710983605903843.jpg', 'public/media/product/1710983605915881.jpg', 1, NULL, NULL),
(95, 5, 90, 32, 'তাজ সরিষা তেল ১ কেজি', '160', '80', NULL, NULL, NULL, '250', 265.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711676475127287.jpg', 'public/media/product/1710983752818241.jpg', 'public/media/product/1710983752835602.jpg', 1, NULL, NULL),
(96, 5, 90, 32, 'তাজ সরিষা তেল ৫০০ মিলি', '161', '80', NULL, NULL, NULL, '130', 135.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711676525807782.jpg', 'public/media/product/1710983844416729.jpg', 'public/media/product/1710983844437930.jpg', 1, NULL, NULL),
(97, 5, 93, 26, 'ফ্রেশ সুপার প্রিমিয়াম (ভ্যাকুয়াম) লবণ ১ কেজি', '162', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711018558652212.jpg', 'public/media/product/1711018558732191.jpg', 'public/media/product/1711018558773338.jpg', 1, NULL, NULL),
(98, 5, 93, 24, 'আখের চিনি ১ কেজি', '163', '100', NULL, NULL, NULL, '76', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711018728040743.jpg', 'public/media/product/1711018728078239.jpg', 'public/media/product/1711018728103767.jpg', 1, NULL, NULL),
(99, 5, 93, 24, 'এ সি আই পিওর লবন ১ কেজি', '164', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711018877001557.jpg', 'public/media/product/1711018877063986.jpg', 'public/media/product/1711018877151852.jpg', 1, NULL, NULL),
(100, 5, 93, 26, 'ফ্রেশ পরিশোধিত চিনি ১ কেজি', '165', '100', NULL, NULL, NULL, '78', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019041525498.jpg', 'public/media/product/1711019041584523.jpg', 'public/media/product/1711019041621260.jpg', 1, NULL, NULL),
(101, 5, 93, 27, 'তীর চিনি ১ কেজি', '166', '100', NULL, NULL, NULL, '75', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019157338484.jpg', 'public/media/product/1711019157384074.jpg', 'public/media/product/1711019157421545.jpg', 1, NULL, NULL),
(102, 5, 93, 27, 'তাল মিসরি ২০০ গ্রাম', '167', '80', NULL, NULL, NULL, '38', 40.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019295382076.jpg', 'public/media/product/1711019295444466.jpg', 'public/media/product/1711019295532834.jpg', 1, NULL, NULL),
(103, 5, 93, 26, 'সাদ বিট লবণ ১০০ গ্রাম', '168', '80', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019433257308.jpg', 'public/media/product/1711019433322237.jpg', 'public/media/product/1711019433363233.jpg', 1, NULL, NULL),
(104, 5, 93, 24, 'এসিআই পিওর লবণ ৫০০ গ্রাম', '169', '80', NULL, NULL, NULL, '17', 18.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019554401519.jpg', 'public/media/product/1711019554517359.jpg', 'public/media/product/1711019554560499.jpg', 1, NULL, NULL),
(105, 5, 93, 28, 'ফিটফুড হিমালায়া পিংক লবণ ১৫০ গ্রাম', '170', '80', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019705971983.jpg', 'public/media/product/1711019706033966.jpg', 'public/media/product/1711019706080752.jpg', 1, NULL, NULL),
(106, 5, 93, 27, 'টপ টেস্টিং লবণ ১০০ গ্রাম', '171', '80', NULL, NULL, NULL, '35', 40.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711019944307723.jpg', 'public/media/product/1711019944339189.jpg', 'public/media/product/1711019944355491.jpg', 1, NULL, NULL),
(107, 5, 93, 27, 'চিনি ১ কেজি', '172', '800', NULL, NULL, NULL, '78', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711020167056229.jpg', 'public/media/product/1711020167121750.jpg', 'public/media/product/1711020167164014.jpg', 1, NULL, NULL),
(108, 5, 93, 28, 'প্রাণ লবন ১ কেজি', '173', '80', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711020279269921.jpg', 'public/media/product/1711020279320890.jpg', 'public/media/product/1711020279361215.jpg', 1, NULL, NULL),
(109, 5, 91, 28, 'প্রান প্রিমিয়াম ঘি ৪০০ গ্রাম', '174', '100', NULL, NULL, NULL, '500', 550.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711020930802905.jpg', 'public/media/product/1711020930866123.jpg', 'public/media/product/1711020930904550.jpg', 1, NULL, NULL),
(110, 5, 91, 24, 'আড়ং ডেইরি খাঁটি ঘি ৪০০ গ্রাম', '175', '80', NULL, NULL, NULL, '500', 550.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711021093120924.jpg', 'public/media/product/1711021093173503.jpg', 'public/media/product/1711021093213367.jpg', 1, NULL, NULL),
(111, 5, 91, 26, 'মিল্ক ভিটা ঘি ৪০০ গ্রাম', '176', '100', NULL, NULL, NULL, '540', 550.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711021205946326.jpg', 'public/media/product/1711021206050193.jpg', 'public/media/product/1711021206093166.jpg', 1, NULL, NULL),
(112, 5, 88, 28, 'প্রান আমের আচার ৪০০ গ্রাম', '177', '100', NULL, NULL, NULL, '140', 150.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022152149079.jpg', 'public/media/product/1711022152179836.jpg', 'public/media/product/1711022152198680.jpg', 1, NULL, NULL),
(113, 5, 88, 35, 'রুচি আম আচার ২০০ গ্রাম', '178', '80', NULL, NULL, NULL, '70', 80.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022301834041.jpg', 'public/media/product/1711022301885115.jpg', 'public/media/product/1711022301924232.jpg', 1, NULL, NULL),
(114, 5, 88, 35, 'রুচি রসুন আচার ২০০ গ্রাম', '179', '80', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022416605608.jpg', 'public/media/product/1711022416657023.jpg', 'public/media/product/1711022416695959.jpg', 1, NULL, NULL),
(115, 5, 88, 34, 'বিডি তেঁতুলের চাটনি ৫০০ গ্রাম', '180', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022553231004.jpg', 'public/media/product/1711022553294490.jpg', 'public/media/product/1711022553333797.jpg', 1, NULL, NULL),
(116, 5, 88, 35, 'রুচি জলপাই আচার ৪০০ গ্রাম', '181', '80', NULL, NULL, NULL, '120', 130.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022712098776.jpg', 'public/media/product/1711022712177023.jpg', 'public/media/product/1711022712226683.jpg', 1, NULL, NULL),
(117, 5, 88, 28, 'প্রান জলপাই আচার ৪০০ গ্রাম', '182', '80', NULL, NULL, NULL, '130', 140.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022825632861.jpg', 'public/media/product/1711022825686729.jpg', 'public/media/product/1711022825726875.jpg', 1, NULL, NULL),
(118, 5, 88, 28, 'প্রান রসুন আচার ৩০০ গ্রাম', '183', '80', NULL, NULL, NULL, '120', 120.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711022925907989.jpg', 'public/media/product/1711022925964267.jpg', 'public/media/product/1711022926003576.jpg', 1, NULL, NULL),
(119, 5, 88, 23, 'মর্ডান আম আচার', '184', '100', NULL, NULL, NULL, '150', 200.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711024295920017.jpg', 'public/media/product/1711024295964443.jpg', 'public/media/product/1711024295995478.jpg', 1, NULL, NULL),
(120, 5, 88, 23, 'মর্ডান আমলকী আচার', '185', '100', NULL, NULL, NULL, '160', 200.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711024953725301.jpg', 'public/media/product/1711024953797749.jpg', 'public/media/product/1711024953845316.jpg', 1, NULL, NULL),
(121, 5, 87, 32, 'আহমেদ সাদা সিরকা ৫০০ মিলি', '186', '60', NULL, NULL, NULL, '60', 65.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048264966151.jpg', 'public/media/product/1711048136148434.jpg', 'public/media/product/1711048136176150.jpg', 1, NULL, NULL),
(122, 5, 87, 27, 'আহমেদ কেওরা পানি ২০০ মিলি', '187', '60', NULL, NULL, NULL, '25', 30.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048386356527.jpg', 'public/media/product/1711048386379815.jpg', 'public/media/product/1711048386396300.jpg', 1, NULL, NULL),
(123, 5, 87, 28, 'আহমেদ সাদা সিরকা ৩২৫ মিলি', '188', '60', NULL, NULL, NULL, '25', 30.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048517866648.jpg', 'public/media/product/1711048517927352.jpg', 'public/media/product/1711048517965511.jpg', 1, NULL, NULL),
(124, 5, 87, 33, 'রাঁধুনী কাসুন্দি ২৮৫ মিলি', '189', '60', NULL, NULL, NULL, '90', 100.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048650060976.jpg', 'public/media/product/1711048650122024.jpg', 'public/media/product/1711048650159905.jpg', 1, NULL, NULL),
(125, 5, 87, 34, 'বিডি সিরকা ৬৫০ মিলি', '190', '60', NULL, NULL, NULL, '80', 90.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048757261687.jpg', 'public/media/product/1711048757359618.jpg', 'public/media/product/1711048757398167.jpg', 1, NULL, NULL),
(126, 5, 87, 28, 'প্রান কৃত্রিম ভিনেগার ৬৫০ মিলি', '191', '60', NULL, NULL, NULL, '40', 50.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711048905763211.jpg', 'public/media/product/1711048905805231.jpg', 'public/media/product/1711048905830954.jpg', 1, NULL, NULL),
(127, 5, 87, 26, 'কেওরা জল 200 মিলি', '192', '60', NULL, NULL, NULL, '25', 30.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711049935108234.jpg', 'public/media/product/1711049935150777.jpg', 'public/media/product/1711049935177187.jpg', 1, NULL, NULL),
(128, 5, 89, 32, 'জিরা ১০০ গ্রাম', '193', '80', NULL, NULL, NULL, '38', 40.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052104514377.jpg', 'public/media/product/1711052104571327.jpg', 'public/media/product/1711052104605688.jpg', 1, NULL, NULL),
(129, 5, 89, 32, 'দারুচিনি ১০০ গ্রাম', '194', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052172705050.jpg', 'public/media/product/1711052172763925.jpg', 'public/media/product/1711052172804542.jpg', 1, NULL, NULL),
(130, 5, 89, 32, 'এলাচি ৫০ গ্রাম', '195', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052261931354.jpg', 'public/media/product/1711052261972462.jpg', 'public/media/product/1711052262005250.jpg', 1, NULL, NULL),
(131, 5, 89, 32, 'রাঁধুনী হলুদ গুঁড়া ২০০ গ্রাম', '196', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052425457231.jpg', 'public/media/product/1711052425518100.jpg', 'public/media/product/1711052425557735.jpg', 1, NULL, NULL),
(132, 5, 89, 32, 'রাঁধুনী মরিচ গুঁড়া ২০০ গ্রাম', '197', '80', NULL, NULL, NULL, '75', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052588512880.jpg', 'public/media/product/1711052588581805.jpg', 'public/media/product/1711052588623756.jpg', 1, NULL, NULL),
(133, 5, 89, 32, 'শুকনা মরিচ ১০০ গ্রাম', '198', '100', NULL, NULL, NULL, '25', 30.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052675771193.jpg', 'public/media/product/1711052675799602.jpg', 'public/media/product/1711052675820029.jpg', 1, NULL, NULL),
(134, 5, 89, 32, 'তেজপাতা ১০০ গ্রাম', '199', '100', NULL, NULL, NULL, '22', 25.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052782162718.jpg', 'public/media/product/1711052782199188.jpg', 'public/media/product/1711052782228222.jpg', 1, NULL, NULL),
(135, 5, 89, 28, 'আস্ত গোলমরিচ ৫০ গ্রাম', '200', '80', NULL, NULL, NULL, '90', 100.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052863303123.jpg', 'public/media/product/1711052863355624.jpg', 'public/media/product/1711052863395794.jpg', 1, NULL, NULL),
(136, 5, 89, 28, 'লবঙ্গ ৫০ গ্রাম', '201', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711052959300902.jpg', 'public/media/product/1711052959351960.jpg', 'public/media/product/1711052959390831.jpg', 1, NULL, NULL),
(137, 5, 89, 29, 'রাঁধুনী ধনিয়া গুঁড়া ২০০ গ্রাম', '202', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053089107747.jpg', 'public/media/product/1711053089159368.jpg', 'public/media/product/1711053089196034.jpg', 1, NULL, NULL),
(138, 5, 89, 32, 'কালো জিরা ১০০ গ্রাম', '203', '80', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053191659145.jpg', 'public/media/product/1711053191778384.jpg', 'public/media/product/1711053191826120.jpg', 1, NULL, NULL),
(139, 5, 89, 27, 'আলু বোখারা ১০০ গ্রাম', '204', '80', NULL, NULL, NULL, '60', 65.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053284491100.jpg', 'public/media/product/1711053284542939.jpg', 'public/media/product/1711053284585215.jpg', 1, NULL, NULL),
(140, 5, 89, 32, 'মেথি ১০০ গ্রাম', '205', '80', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053388585546.jpg', 'public/media/product/1711053388639266.jpg', 'public/media/product/1711053388680249.jpg', 1, NULL, NULL),
(141, 5, 89, 32, 'রাঁধুনী রোস্টের মশলা ৩৫ গ্রাম', '206', '80', NULL, NULL, NULL, '100', 320.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053615757111.jpg', 'public/media/product/1711053615824152.jpg', 'public/media/product/1711053615866705.jpg', 1, NULL, NULL),
(142, 5, 89, 32, 'রাঁধুনী জিরা গুঁড়া ২০০ গ্রাম', '207', '80', NULL, NULL, NULL, '140', 150.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053771326530.jpg', 'public/media/product/1711053771389263.jpg', 'public/media/product/1711053771429030.jpg', 1, NULL, NULL),
(143, 5, 89, 28, 'আখরোট ১০০ গ্রাম', '208', '80', NULL, NULL, NULL, '140', 150.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711053936984546.jpg', 'public/media/product/1711053937046589.jpg', 'public/media/product/1711053937086243.jpg', 1, NULL, NULL),
(144, 5, 89, 28, 'প্রান হলুদ গুড়া জার ২০০ গ্রাম', '209', '80', NULL, NULL, NULL, '95', 95.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711054043698318.jpg', 'public/media/product/1711054043749446.jpg', 'public/media/product/1711054043788307.jpg', 1, NULL, NULL),
(145, 5, 89, 28, 'প্রান মরিচ গুড়া জার ২০০ গ্রাম', '210', '80', NULL, NULL, NULL, '110', 120.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711054445381752.jpg', 'public/media/product/1711054445444796.jpg', 'public/media/product/1711054445493569.jpg', 1, NULL, NULL),
(146, 5, 89, 33, 'ধনিয়া ১০০ গ্রাম', '211', '80', NULL, NULL, NULL, '28', 30.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711213836572963.jpg', 'public/media/product/1711213836649891.jpg', 'public/media/product/1711213836693940.jpg', 1, NULL, NULL),
(147, 5, 88, 23, 'মর্ডান হট রসুনের আচার', '212', '100', NULL, NULL, NULL, '150', 180.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711216984144696.jpg', 'public/media/product/1711216984215634.jpg', 'public/media/product/1711216984262962.jpg', 1, NULL, NULL),
(148, 5, 89, 23, 'মর্ডান ম রিচ গুড়া', '214', '100', NULL, NULL, NULL, '100', 120.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711218148691131.jpg', 'public/media/product/1711218148741911.jpg', 'public/media/product/1711218148775444.jpg', 1, NULL, NULL),
(149, 5, 88, 23, 'মর্ডান হলুদ গুড়া', '215', '100', NULL, NULL, NULL, '100', 120.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711218279792627.jpg', 'public/media/product/1711218279853506.jpg', 'public/media/product/1711218279893993.jpg', 1, NULL, NULL),
(150, 7, 97, 37, 'ব্রুক বন্ড তাজা ব্ল্যাক চা ৪০০ গ্রাম', '216', '80', NULL, NULL, NULL, '180', 200.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711219914064335.jpg', 'public/media/product/1711219988504652.jpg', 'public/media/product/1711220021143705.jpg', 1, NULL, NULL),
(151, 7, 97, 37, 'ব্রুক বন্ড তাজা ব্ল্যাক টি ২০০ গ্রাম', '217', '100', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711219846959681.jpg', 'public/media/product/1711219847038203.jpg', 'public/media/product/1711219847087430.jpg', 1, NULL, NULL),
(152, 7, 97, 37, 'ব্রুক বন্ড তাজা টি ব্যাগ ৫০ টি ১০০ গ্রাম', '218', '100', NULL, NULL, NULL, '90', 100.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711220488016847.jpg', 'public/media/product/1711220512847655.jpg', 'public/media/product/1711220531470806.jpg', 1, NULL, NULL),
(153, 7, 97, 36, 'ইস্পাহানি মির্জাপুর বেস্ট লিফ চা ৪০০ গ্রাম', '219', '80', NULL, NULL, NULL, '190', 200.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711220734471709.jpg', 'public/media/product/1711220734512451.jpg', 'public/media/product/1711220734537956.jpg', 1, NULL, NULL),
(154, 7, 97, 36, 'ইস্পাহানি মির্জাপুর বেস্ট লিফ চা ২০০ গ্রাম', '220', '100', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711220847568037.jpg', 'public/media/product/1711220847644729.jpg', 'public/media/product/1711220847685116.jpg', 1, NULL, NULL),
(155, 7, 97, 36, 'ইস্পাহানি মির্জাপুর টি ব্যাগ ৫০ টি', '221', '80', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711221009260302.jpg', 'public/media/product/1711221009323417.jpg', 'public/media/product/1711221009361953.jpg', 1, NULL, NULL),
(156, 7, 97, 36, 'ইস্পাহানি ব্লেন্ডার চয়েজ প্রিমিয়াম গ্রিন টি ৫০ টি', '222', '80', NULL, NULL, NULL, '180', 190.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711221212102886.jpg', 'public/media/product/1711221212145954.jpg', 'public/media/product/1711221212172777.jpg', 1, NULL, NULL),
(157, 7, 97, 26, 'ফ্রেশ প্রিমিয়াম মাসালা চা ৫০ গ্রাম', '223', '100', NULL, NULL, NULL, '95', 100.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711221481624974.jpg', 'public/media/product/1711221481690366.jpg', 'public/media/product/1711221481732722.jpg', 1, NULL, NULL),
(158, 7, 97, 33, 'পুস্টি গোল্ডেন টি ৫০০ গ্রাম', '224', '80', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711221756251464.jpg', 'public/media/product/1711221756294428.jpg', 'public/media/product/1711221756320048.jpg', 1, NULL, NULL),
(159, 7, 97, 33, 'পুষ্টি ব্ল্যাক চা ৪০০ গ্রাম', '225', '100', NULL, NULL, NULL, '100', 200.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711222623770321.jpg', 'public/media/product/1711222623890170.jpg', 'public/media/product/1711222623925291.jpg', 1, NULL, NULL),
(160, 7, 98, 34, 'তোরা বিকা কেপাচিনো (২৫ গ্রাম*৬) ৬ টি', '226', '100', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711222929921536.jpg', 'public/media/product/1711222930035859.jpg', 'public/media/product/1711222930076826.jpg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `regular_price`, `customer_poin`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(161, 7, 98, 36, 'নেসলে নেসক্যাফে ক্রিমি ল্যাটে কফি মিক্স স্যাসেট ১৮ গ্রাম ১২ টি', '227', '80', NULL, NULL, NULL, '100', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711223143116366.jpg', 'public/media/product/1711223143184087.jpg', 'public/media/product/1711223143229146.jpg', 1, NULL, NULL),
(162, 7, 98, 36, 'নেসলে নেসক্যাফে ৩ ইন ১ কফি মিক্স স্যাসেট ১৫ গ্রাম ১২ টি', '228', '80', NULL, NULL, NULL, '120', 120.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711223364847715.jpg', 'public/media/product/1711223364891041.jpg', 'public/media/product/1711223364918236.jpg', 1, NULL, NULL),
(163, 7, 98, 36, 'নেসলে নেসক্যাফে ক্লাসিক ইনস্ট্যান্ট কফি জার ৫০ গ্রাম', '229', '80', NULL, NULL, NULL, '165', 170.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711223623952166.jpg', 'public/media/product/1711223624017193.jpg', 'public/media/product/1711223624057411.jpg', 1, NULL, NULL),
(164, 7, 98, 37, 'নেসলে নেসক্যাফে ক্লাসিক ইনস্ট্যান্ট কফি জার ১০০ গ্রাম', '230', '100', NULL, NULL, NULL, '300', 320.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711224144880029.jpg', 'public/media/product/1711224144953250.jpg', 'public/media/product/1711224145001745.jpg', 1, NULL, NULL),
(165, 7, 98, 37, 'নেসলে নেসক্যাফে ক্লাসিক ইনস্ট্যান্ট কফি জার ২০০ গ্রাম', '231', '80', NULL, NULL, NULL, '460', 500.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711224296953333.jpg', 'public/media/product/1711224297015920.jpg', 'public/media/product/1711224297058570.jpg', 1, NULL, NULL),
(166, 7, 98, 36, 'নেসলে কফি মেট কফি ক্রিমার বক্স ৪৫০ গ্রাম', '232', '80', NULL, NULL, NULL, '290', 300.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711224438241428.jpg', 'public/media/product/1711224438293661.jpg', 'public/media/product/1711224438335347.jpg', 1, NULL, NULL),
(167, 7, 100, 43, 'পেপসি পেট ২.২৫ লিটার', '233', '100', NULL, NULL, NULL, '90', 100.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711232979502774.jpg', 'public/media/product/1711232979621110.jpg', 'public/media/product/1711232979660044.jpg', 1, NULL, NULL),
(168, 7, 100, 43, 'পেপসি পেট ১ লিটার', '234', '100', NULL, NULL, NULL, '45', 50.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711233099875323.jpg', 'public/media/product/1711233099905812.jpg', 'public/media/product/1711233099925343.jpg', 1, NULL, NULL),
(169, 7, 100, 43, 'পেপসি ডায়েট পেট ৫০০ মিলি', '235', '100', NULL, NULL, NULL, '35', 35.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711233232765768.jpg', 'public/media/product/1711233232816141.jpg', 'public/media/product/1711233232853688.jpg', 1, NULL, NULL),
(170, 7, 100, 43, 'পেপসি ৬০০ মিলি', '236', '100', NULL, NULL, NULL, '34', 35.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711233383375302.jpg', 'public/media/product/1711233383434892.jpg', 'public/media/product/1711233383468786.jpg', 1, NULL, NULL),
(171, 7, 100, 38, 'কোকা-কোলা ১.২৫ লিটার', '237', '100', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711233518848651.jpg', 'public/media/product/1711233518887605.jpg', 'public/media/product/1711233518911743.jpg', 1, NULL, NULL),
(172, 7, 100, 38, 'কোকা-কোলা ২.২৫ লিটার', '238', '100', NULL, NULL, NULL, '110', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711233895848088.jpg', 'public/media/product/1711233895889725.jpg', 'public/media/product/1711233895915478.jpg', 1, NULL, NULL),
(173, 7, 100, 38, 'কোকা-কোলা ক্যান ২৫০ মিলি', '239', '100', NULL, NULL, NULL, '40', 45.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234034368379.jpg', 'public/media/product/1711234034483075.jpg', 'public/media/product/1711234034521656.jpg', 1, NULL, NULL),
(174, 7, 100, 38, 'কোক লাইট ক্যান ২৫০ মিলি', '240', '100', NULL, NULL, NULL, '40', 45.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234160017498.jpg', 'public/media/product/1711234160060146.jpg', 'public/media/product/1711234160085984.jpg', 1, NULL, NULL),
(175, 7, 100, 38, 'কোকা-কোলা ৬০০ মিলি', '241', '100', NULL, NULL, NULL, '40', 40.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234321243025.jpg', 'public/media/product/1711234321304910.jpg', 'public/media/product/1711234321347916.jpg', 1, NULL, NULL),
(176, 7, 100, 39, 'স্প্রাইট ৬০০ মিলি', '242', '100', NULL, NULL, NULL, '35', 40.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234505150707.jpg', 'public/media/product/1711234505261005.jpg', 'public/media/product/1711234505317629.jpg', 1, NULL, NULL),
(177, 7, 100, 39, 'স্প্রাইট ২.২৫ লিটার', '243', '100', NULL, NULL, NULL, '110', 120.00, 14.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234709847980.jpg', 'public/media/product/1711234709899020.jpg', 'public/media/product/1711234709933389.jpg', 1, NULL, NULL),
(178, 7, 100, 39, 'স্প্রাইট ১.২৫ লিটার', '244', '100', NULL, NULL, NULL, '75', 80.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711234860851032.jpg', 'public/media/product/1711234860882347.jpg', 'public/media/product/1711234860901423.jpg', 1, NULL, NULL),
(179, 7, 100, 41, 'ক্লেমন ২ লিটার', '245', '100', NULL, NULL, NULL, '100', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235148550653.jpg', 'public/media/product/1711235148590400.jpg', 'public/media/product/1711235148611099.jpg', 1, NULL, NULL),
(180, 7, 100, 39, 'স্প্রাইট ক্যান ২৫০ মিলি', '246', '100', NULL, NULL, NULL, '34', 40.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235302972499.jpg', 'public/media/product/1711235303016076.jpg', 'public/media/product/1711235303041623.jpg', 1, NULL, NULL),
(181, 7, 100, 40, '৭ আপ ২.২৫ লিটার', '247', '100', NULL, NULL, NULL, '110', 120.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235449488163.jpg', 'public/media/product/1711235449552901.jpg', 'public/media/product/1711235449595492.jpg', 1, NULL, NULL),
(182, 7, 100, 40, '৭ আপ পেট ১ লিটার', '248', '100', NULL, NULL, NULL, '55', 60.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235596027496.jpg', 'public/media/product/1711235596071157.jpg', 'public/media/product/1711235596106798.jpg', 1, NULL, NULL),
(183, 7, 100, 40, '৭ আপ পেট ৬০০ মিলি', '249', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235731965517.jpg', 'public/media/product/1711235732010854.jpg', 'public/media/product/1711235732087208.jpg', 1, NULL, NULL),
(184, 7, 100, 42, 'মোজো পেট ২৫০ মিলি', '250', '100', NULL, NULL, NULL, '35', 40.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711235905423564.jpg', 'public/media/product/1711235905484622.jpg', 'public/media/product/1711235905524583.jpg', 1, NULL, NULL),
(185, 7, 100, 26, 'ফ্রেশ মেজেনডা ২৫০ মিলি', '251', '100', NULL, NULL, NULL, '15', 16.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711237356667155.jpg', 'public/media/product/1711237356704763.jpg', 'public/media/product/1711237356727423.jpg', 1, NULL, NULL),
(186, 7, 101, 44, 'মাম খাবার পানি ৪.৫ লিটার', '252', '100', NULL, NULL, NULL, '75', 80.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711239839077586.jpg', 'public/media/product/1711239839129461.jpg', 'public/media/product/1711239839162250.jpg', 1, NULL, NULL),
(187, 7, 101, 26, 'সুপার ফ্রেশ খাবার পানি ২ লিটার', '253', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240137545406.jpg', 'public/media/product/1711240137606633.jpg', 'public/media/product/1711240137647767.jpg', 1, NULL, NULL),
(188, 7, 101, 44, 'মাম খাবার পানি ২ লিটার', '254', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240267899734.jpg', 'public/media/product/1711240267951536.jpg', 'public/media/product/1711240267989944.jpg', 1, NULL, NULL),
(189, 7, 101, 26, 'সুপার ফ্রেশ খাবার পানি ৮ লিটার', '255', '100', NULL, NULL, NULL, '95', 100.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240391746789.jpg', 'public/media/product/1711240391796887.jpg', 'public/media/product/1711240391821773.jpg', 1, NULL, NULL),
(190, 7, 101, 45, 'অ্যাকুয়াফিনা খাবার পানি ১`৫ লিটার', '256', '100', NULL, NULL, NULL, '25', 30.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240518164629.jpg', 'public/media/product/1711240518229449.jpg', 'public/media/product/1711240518271509.jpg', 1, NULL, NULL),
(191, 7, 101, 45, 'অ্যাকুয়াফিনা খাবার পানি ৫০০ মিলি', '257', '100', NULL, NULL, NULL, '15', 16.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240669343260.jpg', 'public/media/product/1711240669394759.jpg', 'public/media/product/1711240669435128.jpg', 1, NULL, NULL),
(192, 7, 101, 26, 'সুপার ফ্রেশ খাবার পানি ৫ লিটার', '258', '100', NULL, NULL, NULL, '75', 80.00, 10.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240764824125.jpg', 'public/media/product/1711240764906164.jpg', 'public/media/product/1711240764947116.jpg', 1, NULL, NULL),
(193, 7, 101, 44, 'মাম খাবার পানি ৫০০ মিলি', '259', '100', NULL, NULL, NULL, '15', 16.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711240973045921.jpg', 'public/media/product/1711240973108860.jpg', 'public/media/product/1711240973150568.jpg', 1, NULL, NULL),
(194, 7, 101, 26, 'সুপার ফ্রেশ খাবার পানি ৫০০ মিলি', '260', '100', NULL, NULL, NULL, '15', 16.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711241178027830.jpg', 'public/media/product/1711241178098690.jpg', 'public/media/product/1711241178140750.jpg', 1, NULL, NULL),
(195, 7, 102, 46, 'হরলিক্স হেলথ এন্ড নিউট্রিশন ড্রিংক জার ২৫০ গ্রাম', '261', '100', NULL, NULL, NULL, '190', 200.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711243061293437.jpg', 'public/media/product/1711243061360929.jpg', 'public/media/product/1711243061387204.jpg', 1, NULL, NULL),
(196, 7, 102, 46, 'হরলিক্স হেলথ এন্ড নিউট্রিশন ড্রিংক চকলেট জার ৫০০ গ্রাম', '262', '100', NULL, NULL, NULL, '350', 360.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711243293150182.jpg', 'public/media/product/1711243293193039.jpg', 'public/media/product/1711243293219111.jpg', 1, NULL, NULL),
(197, 7, 102, 46, 'নেসলে মিলো একটিভ-গো চকলেট পাউডার ড্রিংক টিন ৪০০ গ্রাম', '263', '100', NULL, NULL, NULL, '430', 450.00, 30.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711244242719604.jpg', 'public/media/product/1711244242785341.jpg', 'public/media/product/1711244242827952.jpg', 1, NULL, NULL),
(198, 7, 102, 46, 'গ্লাক্সোজ-ডি এনার্জি ড্রিংক বিআইবি ২০০ গ্রাম', '264', '100', NULL, NULL, NULL, '90', 100.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711244551494139.jpg', 'public/media/product/1711244551557091.jpg', 'public/media/product/1711244551596718.jpg', 1, NULL, NULL),
(199, 7, 102, 46, 'ইস্পি ইনস্ট্যান্ট পাউডার ড্রিংক (অরেঞ্জ) ২৫০ গ্রাম', '265', '100', NULL, NULL, NULL, '120', 130.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711244764879244.jpg', 'public/media/product/1711244764914857.jpg', 'public/media/product/1711244764938945.jpg', 1, NULL, NULL),
(200, 6, 82, 46, 'দেশি ডায়মন্ড আলু  ১ কেজি', '266', '100', NULL, NULL, NULL, '20', 25.00, 2.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711245655564924.jpg', 'public/media/product/1711245655609929.jpg', 'public/media/product/1711245655635709.jpg', 1, NULL, NULL),
(201, 6, 82, 46, 'লাল পিঁয়াজ ইম্পোর্টেড ১ কেজি', '267', '100', NULL, NULL, NULL, '42', 45.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711245770443956.jpg', 'public/media/product/1711245770475758.jpg', 'public/media/product/1711245770501541.jpg', 1, NULL, NULL),
(202, 6, 82, 46, 'দেশী পিঁয়াজ ১ কেজি', '268', '100', NULL, NULL, NULL, '45', 50.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711245939474323.jpg', 'public/media/product/1711245939526057.jpg', 'public/media/product/1711245939566216.jpg', 1, NULL, NULL),
(203, 6, 82, 46, 'রসুন আমদানিকৃত  ৫০০ গ্রাম', '269', '100', NULL, NULL, NULL, '60', 65.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711246406038212.jpg', 'public/media/product/1711246406070050.jpg', 'public/media/product/1711246406085878.jpg', 1, NULL, NULL),
(204, 6, 82, 46, 'আদা দেশি ±১০ গ্রাম)৫০০ গ্রাম', '270', '100', NULL, NULL, NULL, '32', 35.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711246496341010.jpg', 'public/media/product/1711246496392415.jpg', 'public/media/product/1711246496431676.jpg', 1, NULL, NULL),
(205, 6, 82, 46, 'রসুন দেশি ৫০০ গ্রাম', '271', '100', NULL, NULL, NULL, '60', 65.00, 5.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1711246592080973.jpg', 'public/media/product/1711246592124659.jpg', 'public/media/product/1711246592206603.jpg', 1, NULL, NULL),
(206, 14, 131, 23, 'Mushroom Toothpaste', '72', '500', NULL, NULL, NULL, '140', 160.00, 20.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1715853097792129.jpg', 'public/media/product/1715853098469712.jpg', 'public/media/product/1715853098496537.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'LH Ecommerce', 'Learn Hunter', 'Ecommerce,Online Store', 'lorem ipsum etc etce ect ;learn hunter is one of the best youtibe channle .....', '112d12812891', '217312381', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '0', '7', 'Echovel', 'echovel18@gmail.com', '01900000000', 'Dhaka mirpur 1204 muktobangla', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '2', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'Dhaka gandaria sadhona', 'Dhaka', NULL, NULL),
(2, '3', 'Masud Khan', '01961363543', 'sohidulislam353@gmail.com', 'Dhaka Dhanmondi 32 Kalabagan math', 'Dhaka', NULL, NULL),
(3, '4', 'Sohidul Islam', '01961363543', 'sohidulislam343@gmail.com', 'Dhaka Dhanmondi 32 Kalabagan math', 'Dhaka', NULL, NULL),
(4, '5', 'Masud Khan', '01961363543', 'sohidulislam@gmail.com', 'sadas', 'sdas', NULL, NULL),
(5, '6', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'sadas', 'sdas', NULL, NULL),
(6, '7', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'sadas', 'sdas', NULL, NULL),
(7, '8', 'Sohidul Islam', '01961363543', 'sohidulislam@gmail.com', 'sadas', 'sdas', NULL, NULL),
(8, '9', 'Md Abubakar', '01775566584', NULL, 'Barguna', NULL, NULL, NULL),
(9, '10', 'Md Abubakar', '01775566584', NULL, 'Barguna', NULL, NULL, NULL),
(10, '11', 'Md. Abubakar', '01726122917', NULL, 'amtalar par', NULL, NULL, NULL),
(11, '12', 'Abdus sakur', '01714511430', NULL, 'Barguna powrosaba', NULL, NULL, NULL),
(12, '13', 'Garlic', '01726122917', NULL, 'Barguna sadar,Barguna', NULL, NULL, NULL),
(13, '14', 'lyo9', '01930074028', NULL, 'parirkhal,barguna', NULL, NULL, NULL),
(14, '15', 'H M Bayzid', '01716372397', NULL, 'Barguna', NULL, NULL, NULL),
(15, '16', 'H M Bayzid', '01716372397', NULL, 'Barguna', NULL, NULL, NULL),
(16, '17', 'asadul', '01723624071', NULL, 'jjjjj', NULL, NULL, NULL),
(17, '18', 'abdus shakur', '01714514130', NULL, 'Barguna Lakur Tala', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01716372397', '01961363543', 'sohidulislam353@gmail.com', 'Satota Online Bazar', 'Barguna Sador', 'https://www.facebook.com/pie24', 'https://www.facebook.com/pie24', 'https://www.facebook.com/pie24', 'https://www.facebook.com/pie24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(69, 22, 'গরুর গোশত', NULL, NULL),
(70, 22, 'খাসির মাংস', NULL, NULL),
(75, 26, 'কমলা', NULL, NULL),
(76, 26, 'মাল্টা', NULL, NULL),
(77, 26, 'নাস পাতি', NULL, NULL),
(78, 26, 'খেজুর', NULL, NULL),
(82, 6, 'তাজা সবজি', NULL, NULL),
(83, 6, 'তাজা ফল', NULL, NULL),
(84, 4, 'মাংস', NULL, NULL),
(85, 4, 'হিমায়িত মাছ', NULL, NULL),
(86, 5, 'চাল', NULL, NULL),
(87, 5, 'কালারস ও ফ্লেভারস', NULL, NULL),
(88, 5, 'আচার', NULL, NULL),
(89, 5, 'মশলা', NULL, NULL),
(90, 5, 'তেল', NULL, NULL),
(91, 5, 'ঘি', NULL, NULL),
(92, 5, 'রেডি মিক্স', NULL, NULL),
(93, 5, 'লবন এবং চিনি', NULL, NULL),
(94, 5, 'ডাল', NULL, NULL),
(95, 5, 'স্পেশাল উপকরন', NULL, NULL),
(96, 5, 'সেমাই ও সুজি', NULL, NULL),
(97, 7, 'চা', NULL, NULL),
(98, 7, 'কফি', NULL, NULL),
(99, 7, 'জুস', NULL, NULL),
(100, 7, 'কোমল পানীয়', NULL, NULL),
(101, 7, 'পানি', NULL, NULL),
(102, 7, 'সিরাপ এবং পাউডার ড্রিংক', NULL, NULL),
(103, 8, 'এয়ার ফ্রেশনার', NULL, NULL),
(104, 8, 'বাসনের ডিটারজেনট', NULL, NULL),
(105, 8, 'পরিচ্ছন্নতার সামগ্রী', NULL, NULL),
(106, 8, 'রান্নাঘরের সামগ্রী', NULL, NULL),
(107, 8, 'লন্ড্রি', NULL, NULL),
(109, 8, 'পোকা নিধনকারী সামগ্রী', NULL, NULL),
(110, 8, 'জুতোর সামগ্রী', NULL, NULL),
(111, 8, 'টেবিল এর সামগ্রী এবং ময়লার ব্যাগ', NULL, NULL),
(112, 8, 'খাবার বাসন', NULL, NULL),
(113, 8, 'পরিষ্কারের সামগ্রী', NULL, NULL),
(114, 27, 'ব্যাটারি', NULL, NULL),
(115, 27, 'লিখন এবং অঙ্কন', NULL, NULL),
(116, 27, 'অরগানাইসিং', NULL, NULL),
(117, 27, 'প্রিন্টিং', NULL, NULL),
(118, 11, 'কাপড় কেনাকাটা', NULL, NULL),
(119, 11, 'মহিলাদের ব্যবহার্য', NULL, NULL),
(120, 11, 'পুরুষদের ব্যবহার্য', NULL, NULL),
(121, 11, 'হেয়ার কালার', NULL, NULL),
(122, 11, 'মুখের ব্যবহার্য', NULL, NULL),
(123, 11, 'ত্বক এর ব্যবহার্য', NULL, NULL),
(124, 11, 'হ্যান্ড ওয়াশ', NULL, NULL),
(125, 11, 'টিস্যু এবং ওয়াইপ্স', NULL, NULL),
(126, 11, 'ট্যালকম পাউডার', NULL, NULL),
(127, 14, 'ফুড সাপ্লিমেন্টস', NULL, NULL),
(128, 14, 'ঔষধি দ্রব্যাদি এবং হজম এর জন্য', NULL, NULL),
(129, 14, 'ফার্স্ট এইড', NULL, NULL),
(130, 14, 'পরিবার পরিকল্পনা', NULL, NULL),
(131, 14, 'এন্টিসেপ্টিক্স', NULL, NULL),
(132, 14, 'বয়স্ক ডায়পার', NULL, NULL),
(133, 14, 'কিটোর খাবার', NULL, NULL),
(134, 20, 'লাইট ও বৈদ্যুতিক', NULL, NULL),
(135, 20, 'টুলস ও হার্ডওয়্যার', NULL, NULL),
(136, 20, 'রান্নাঘর যন্ত্রপাতি', NULL, NULL),
(137, 21, 'নবজাতকের প্রয়োজনীয়তা', NULL, NULL),
(138, 21, 'ডায়পারিং', NULL, NULL),
(139, 21, 'ফিডার', NULL, NULL),
(140, 23, 'খাবার সামগ্রী', NULL, NULL),
(141, 21, 'গোসল এবং ত্বক সুরক্ষার সামগ্রী', NULL, NULL),
(142, 21, 'শিশুর আনুষাঙ্গিক', NULL, NULL),
(143, 21, 'শিশুর মুখের ব্যবহার্য', NULL, NULL),
(144, 4, 'শুঁটকি মাছ', NULL, NULL),
(145, 13, 'Toothpaste', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Abubaka', '01726122917', NULL, NULL, '$2y$10$OTQ20dKUNHeyupEkgC9ZBehFgnvVm2oQVDGEM7c2kAe37JJ3HeS5S', NULL, '2021-08-05 13:39:55', '2021-08-05 14:28:29'),
(2, 'Md Faruque Hossain', '01726122916', NULL, NULL, '$2y$10$z5v2em4.MTLmMwI6JNLe2O7MyjmKuP6SixBwHxcymegtszcg.pZ9K', NULL, '2021-08-05 14:33:03', '2021-08-05 14:33:03'),
(3, 'Admin', '01726122915', NULL, NULL, '$2y$10$rrYhTPB..3b6aZ1zr/F0HuPq6SoME1jV5Ds4I1zRgXd/P45BlzyGq', NULL, '2021-08-05 14:47:45', '2021-08-05 14:47:45'),
(4, 'Admin-2', '01726122914', NULL, NULL, '$2y$10$cef.rOsDPlKdz4ofcyUTcev4JpZ9phNEUn/MovYXZOAwyBzNVRR1i', NULL, '2021-08-05 15:20:12', '2021-08-05 23:04:08'),
(5, 'Md. Abubakar', '01726122000', NULL, NULL, '$2y$10$zMSABI3RPjRD5QaOxTH7vuFMqxi/wVMO9vYsW59Wt8n2k9MD6.NJ.', NULL, '2021-08-06 06:05:25', '2021-08-06 06:05:25'),
(6, 'Abdus sakur', '01714511430', NULL, NULL, '$2y$10$aAHuD5oa0LYpbSMOxoo3zORC4t6c3pEyygZY.8/saUPIHbQVkzxIW', NULL, '2021-08-06 06:13:23', '2021-08-06 06:13:23'),
(7, 'Nasim Uddin', '01309395594', NULL, NULL, '$2y$10$nu6Yszh2WptqOGnQK8SITeMYeS6vdT4sKqfn3K4fWVfWAm7RKZpjy', NULL, '2021-08-06 14:19:33', '2021-08-06 14:19:33'),
(8, 'H M Bayzid', '01752551097', NULL, NULL, '$2y$10$bcmf/U.3znucyXIFc754Be7NmKj.bAZeKnQjSmob2HWrTLxLn6vD.', NULL, '2021-08-07 05:00:49', '2021-08-07 05:00:49'),
(9, 'lyo9', '01930074028', NULL, NULL, '$2y$10$40UDYSEcFgRGVjgQPhCzVeKRm/2wI.W09NjdYTuXcCj08VChzi0Zy', NULL, '2021-08-13 11:39:32', '2021-08-13 11:39:32'),
(10, 'Md Issa Alam', '01781491396', NULL, NULL, '$2y$10$q6bCfPYI90PiXTD3rnu4MOasAhCNHU4H0z3Hy8.DnFizMDyEF/BD.', NULL, '2021-08-29 07:04:53', '2021-08-29 07:04:53'),
(11, 'Mamuna', '01716372397', NULL, NULL, '$2y$10$7gWeP2IlHU9VOc1hQui0P.cdhsi8eOAdz2sq/WyZUDzUgFKPdaCUy', NULL, '2021-09-18 16:17:16', '2021-09-18 16:17:16'),
(12, 'asadul', '01723624071', NULL, NULL, '$2y$10$DlgoTVyoIYsy8lt7fH8bt.2G96b3n2W1l46rwkM3lXNlRDk/B8X7a', NULL, '2021-09-20 12:51:28', '2021-09-20 12:53:15'),
(13, 'abdus shakur', '01714514130', NULL, NULL, '$2y$10$Q8LOlYTUTqfcLZ/W3YiOWeYVTF3qzGoAbozKdI43a.b6iON31cvjq', NULL, '2021-11-05 05:47:19', '2021-11-05 05:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 15, NULL, NULL),
(7, 3, 13, NULL, NULL),
(8, 3, 17, NULL, NULL),
(12, 5, 17, NULL, NULL),
(13, 5, 22, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
