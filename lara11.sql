-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 04:40 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara11`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `brand_image`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Ray-Ban', 'cool sunglasses', 'public/admin/brand-images/download (9).png', 1, '2019-11-14 03:27:11', '2019-11-23 02:08:54'),
(11, 'Apple', 'best electronic company', 'public/admin/brand-images/download.png', 1, '2019-11-20 13:09:01', '2019-11-23 02:08:35'),
(12, 'gucci', 'best', 'public/admin/brand-images/download (1).png', 1, '2019-11-23 02:10:11', '2019-11-23 02:10:29'),
(13, 'Levi\'s', 'best jeans maker', 'public/admin/brand-images/levis123-11-19.png', 1, '2019-11-23 02:11:18', '2019-11-23 02:11:18'),
(14, 'Denim', 'jeans company', 'public/admin/brand-images/download (5)23-11-19.png', 1, '2019-11-23 02:11:55', '2019-11-23 02:11:55'),
(15, 'Adidas', 'best shoe maker', 'public/admin/brand-images/Adidas-Logo-Transparent-Image23-11-19.png', 1, '2019-11-23 02:12:56', '2019-11-23 02:12:56'),
(16, 'samsung', 'samsung inc.', 'public/admin/brand-images/download (11)23-11-19.png', 1, '2019-11-23 02:39:39', '2019-11-23 02:39:39'),
(17, 'nike', 'cool sneaker', 'public/admin/brand-images/images (1)23-11-19.jpg', 1, '2019-11-23 02:45:00', '2019-11-23 02:45:00'),
(18, 'Dior', 'one of the best brands.', 'public/admin/brand-images/images (4)23-11-19.png', 1, '2019-11-23 03:51:58', '2019-11-23 03:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_desc`, `cat_image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'electronics', 'awesome gadget', 'public/admin/category-images/b15.jpg', 1, '2019-11-10 11:14:01', '2019-11-14 02:26:18'),
(5, 'watch', 'cool watches', 'public/admin/category-images/ep4.png', 0, '2019-11-10 11:28:31', '2019-11-23 02:07:22'),
(6, 'Shirt', 'awesome shirt', 'public/admin/category-images/baa3.jpg', 0, '2019-11-10 13:25:35', '2019-11-23 02:06:51'),
(8, 'Shoe', 'best shoes, sneakers in town', 'public/admin/category-images/Adidas-Shoes-PNG-Picture.png', 1, '2019-11-14 03:28:29', '2019-11-23 02:07:06'),
(9, 'eos', 'Molestiae dolores vitae quia qui voluptatem expedita illo.', 'https://lorempixel.com/640/480/?76709', 0, '2019-11-17 13:37:29', '2019-11-20 12:46:46'),
(10, 'suscipit', 'Molestiae eveniet quod enim adipisci.', 'https://lorempixel.com/640/480/?15769', 0, '2019-11-17 13:37:29', '2019-11-20 12:46:50'),
(11, 'suscipit', 'Minima aut labore sunt velit quibusdam neque.', 'https://lorempixel.com/640/480/?53306', 0, '2019-11-17 13:37:29', '2019-11-17 13:37:29'),
(12, 'mollitia', 'Est eum qui enim qui et quibusdam.', 'https://lorempixel.com/640/480/?81483', 0, '2019-11-17 13:37:29', '2019-11-20 12:46:34'),
(13, 'ut', 'Laboriosam corporis sunt inventore quia.', 'https://lorempixel.com/640/480/?71094', 0, '2019-11-17 13:37:29', '2019-11-20 12:47:15'),
(14, 'saepe', 'Quas optio repudiandae omnis.', 'https://lorempixel.com/640/480/?76449', 0, '2019-11-17 13:37:29', '2019-11-20 12:46:39'),
(15, 'laboriosam', 'Ut consequatur corporis ex inventore aut omnis error.', 'https://lorempixel.com/640/480/?85113', 0, '2019-11-17 13:37:29', '2019-11-20 12:47:01'),
(16, 'autem', 'Atque inventore libero aperiam sint non voluptate maxime.', 'https://lorempixel.com/640/480/?32151', 0, '2019-11-17 13:37:29', '2019-11-17 13:37:29'),
(17, 'optio', 'Quia veritatis facilis rerum et eum reiciendis dicta.', 'https://lorempixel.com/640/480/?52314', 0, '2019-11-17 13:37:29', '2019-11-20 12:47:07'),
(18, 'magni', 'Accusantium est quis molestias facilis molestiae.', 'https://lorempixel.com/640/480/?15619', 0, '2019-11-17 13:37:29', '2019-11-23 02:06:43'),
(19, 'Hat', 'cool hat', 'public/admin/category-images/Lampshade-Hat-Transparent-Image.png', 0, '2019-11-23 02:03:16', '2019-11-23 03:49:46'),
(20, 'Jeans', 'stylish jeans', 'public/admin/category-images/Jeggings-Free-PNG-Image.png', 1, '2019-11-23 02:04:15', '2019-11-23 02:04:15'),
(21, 'moneybag', 'cool moneybag', 'public/admin/category-images/Wallet-Transparent-Background-PNG.png', 1, '2019-11-23 02:04:52', '2019-11-23 02:34:12'),
(22, 'Jacket', 'cool jackets', 'public/admin/category-images/Leather-Coat-PNG-Image.png', 1, '2019-11-23 02:06:12', '2019-11-23 02:06:12'),
(23, 'Ladies wear', 'stylish ladies wear', 'public/admin/category-images/a7.png', 1, '2019-11-23 03:50:27', '2019-11-23 03:50:27'),
(24, 'watch', 'best', 'public/admin/category-images/Countdown-Watch-PNG-Image.png', 0, '2019-12-12 03:48:13', '2019-12-12 10:11:22'),
(25, 'watch', 'best watch', 'public/admin/category-images/Countdown-Watch-Transparent-Background-PNG.png', 0, '2019-12-12 05:36:20', '2019-12-12 05:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `phone_no`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nabila', 'Nishu', 'darling@gmail.com', '01813470130', 'armanitola,dhaka', '$2y$10$MMP3sXc.GJjvPGbqtn5wCuLLqV.00u1chsQB.nqFHONlFwlqYMCSe', '2019-12-03 12:40:11', '2019-12-03 12:40:11'),
(2, 'Rakib', 'Hasan', 'rakib@gmail.com', '01513470130', 'mirpur,dhaka', '$2y$10$WeRhhRaL3HpKx34f0N2LFO5mDIKjsv3vQ1RYeuzkEvO2z7BzjNZAS', '2019-12-04 10:55:56', '2019-12-04 10:55:56'),
(3, 'Kauser', 'Khan', 'kauser@gmail.com', '01413470132', 'malibagh,dhaka', '$2y$10$hIzg9WbaV3Y7SZ114cKWS.mC6wT5O085RslmLhxx2j4jpzfiLvq9q', '2019-12-04 12:05:25', '2019-12-04 12:05:25'),
(4, 'Maliha', 'Rahman', 'maliha@gmail.com', '01313470130', 'midford,dhaka', '$2y$10$WljKfBNNhTXoSNkwYfvF2.se2jqtnL9apbk3elShPVahUBxHJprhC', '2019-12-04 12:10:42', '2019-12-04 12:10:42'),
(5, 'Rupok', 'Rahman', 'rupok@gmail.com', '01313470135', 'armanitola,dhaka', '$2y$10$D0bZ8TARWTaDkQFL2y6VIurVHSkldxSXm4IV4rpUMepjye26/uQ5K', '2019-12-04 12:16:48', '2019-12-04 12:16:48'),
(6, 'Tarif', 'Haydar', 'tarif@gmail.com', '01913470135', 'bongshal,dhaka', '$2y$10$fvHY/5xs9gRD1eA7cXEM2.EmvlI9JhkKR1XtLrttTfYlaDOf.frny', '2019-12-04 12:53:12', '2019-12-04 12:53:12'),
(7, 'Sojib', 'Ahmed', 'sojib@gmail.com', '01513470136', 'mirpur,dhaka', '$2y$10$0s4Hmer6Y4PimhK9VmzKD.A9DrYWrIKeHfH605rAHeCT4NxRIDYD2', '2019-12-04 12:54:37', '2019-12-04 12:54:37'),
(8, 'Samer', 'Rahman', 'kauser@gmail.com', '01813470138', 'bongshal,dhaka', '$2y$10$o5SXTF2F8wNRA2A5fqpws.P8e8xFaelH2SLiAr3LAxODUbTsbeCsO', '2019-12-07 05:44:42', '2019-12-07 05:44:42'),
(9, 'Nabila', 'Khan', 'darling@gmail.com', '01513470135', 'bongshal,dhaka', '$2y$10$Y5GfJssR/Q5bZgPwy4PBuuNJ/UNfW92s5l9oknhpoZ00m2UaEDwHG', '2019-12-07 12:12:04', '2019-12-07 12:12:04'),
(10, 'Rakib', 'Rahman', 'rakib@gmail.com', '01913470137', 'mirpur,dhaka', '$2y$10$//d7S7e80KxFDMWIofT0TOGkHRs.AFTsCsKD7iZlMAE59MkK0jTfy', '2019-12-08 13:39:14', '2019-12-08 13:39:14'),
(11, 'Nabila', 'Kauser', 'darling@gmail.com', '01513470130', 'bongshal,dhaka', '$2y$10$swZGaGqxhzxwr7MJutD5/uw7jxfd1DHhfkghp7x2uQX5oTbkbJ126', '2019-12-10 05:14:14', '2019-12-10 05:14:14'),
(12, 'Samer', 'Rahman', 'kauser@gmail.com', '01313470135', 'malibagh,dhaka', '$2y$10$i7YBhP3ABFKW6Hja8g9RCO1nPV7h1Tb4lGKQ92jTXhPxzWMUnSC/u', '2019-12-12 14:23:51', '2019-12-12 14:23:51'),
(13, 'Sayem', 'Hasan', 'darling@gmail.com', '01313470135', 'mirpur,dhaka', '$2y$10$bKO1wUANcWyhRITYNMUvg.7PoZLrGBbwn4ryaB3bmICvTNS10avRG', '2019-12-13 02:13:39', '2019-12-13 02:13:39'),
(14, 'Nabila', 'Nishu', 'kauser@gmail.com', '01313470132', 'armanitola,dhaka', '$2y$10$tdcmhdx6rjqu.KWkkTZ8f.hSvJrjs49ovCrFuOoGZqGA6X8Ji2iJi', '2019-12-13 09:18:30', '2019-12-13 09:18:30'),
(15, 'Samer', 'Khan', 'rakib@gmail.com', '01313470130', 'midford,dhaka', '$2y$10$g9nCyy5cEfKpytJQ5Jp8EuNGRCAPJc58R6D88LixUwhzJHVYOXb6y', '2019-12-13 09:25:00', '2019-12-13 09:25:00'),
(16, 'Rakib', 'Khan', 'maliha@gmail.com', '01913470135', 'bongshal,dhaka', '$2y$10$QRTGlo1ZjwtXIyT8VPMLAOIwJLiF1/F/sjw3KlfTilYO6xSmEjoFq', '2019-12-26 01:10:56', '2019-12-26 01:10:56'),
(17, 'Abul', 'Kauser', 'kauser@gmail.com', '01913470131', 'armanitola,dhaka', '$2y$10$h6/0cR8v2y9ub3ltLVw/u.sYkcrrTKgv85CiQn37AXckvNGNUOQ6S', '2019-12-26 01:45:22', '2019-12-26 01:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_08_201130_create_categories_table', 2),
(4, '2019_11_12_182441_create_brands_table', 3),
(5, '2019_11_15_183724_create_products_table', 4),
(6, '2019_12_03_181741_create_customers_table', 5),
(7, '2019_12_04_183314_create_shippings_table', 6),
(8, '2019_12_07_165227_create_orders_table', 7),
(9, '2019_12_07_165359_create_payments_table', 7),
(10, '2019_12_07_165502_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 9, 4, 3448.20, 'pending', '2019-12-07 12:12:18', '2019-12-07 12:12:18'),
(2, 10, 5, 1657.50, 'pending', '2019-12-08 13:39:23', '2019-12-08 13:39:23'),
(3, 13, 6, 928.20, 'pending', '2019-12-13 02:14:02', '2019-12-13 02:14:02'),
(4, 16, 7, 2188.20, 'pending', '2019-12-26 01:11:07', '2019-12-26 01:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'Jeans', 700.00, 3, '2019-12-07 12:12:18', '2019-12-07 12:12:18'),
(2, 1, 22, 'nike prime', 420.00, 3, '2019-12-07 12:12:18', '2019-12-07 12:12:18'),
(3, 2, 20, 'Coat', 750.00, 2, '2019-12-08 13:39:23', '2019-12-08 13:39:23'),
(4, 3, 22, 'nike prime', 420.00, 2, '2019-12-13 02:14:03', '2019-12-13 02:14:03'),
(5, 4, 22, 'nike prime', 420.00, 5, '2019-12-26 01:11:07', '2019-12-26 01:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash', 'pending', '2019-12-07 12:12:18', '2019-12-07 12:12:18'),
(2, 2, 'cash', 'pending', '2019-12-08 13:39:23', '2019-12-08 13:39:23'),
(3, 3, 'cash', 'pending', '2019-12-13 02:14:03', '2019-12-13 02:14:03'),
(4, 4, 'cash', 'pending', '2019-12-26 01:11:07', '2019-12-26 01:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `coupon_price` double(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `product_price`, `coupon_price`, `category_id`, `brand_id`, `product_color`, `product_size`, `main_image`, `filename`, `created_at`, `updated_at`) VALUES
(16, 'iphone x', '<p>an apple product</p>', 2570.00, 2200.00, 4, 11, 'red', 'm', 'public/admin/product-images/main/iphone-xr-red-select-201809.png', '[\"public\\/admin\\/product-images\\/gallery\\/iphone-xr-coral-select-201809.png\",\"public\\/admin\\/product-images\\/gallery\\/iphone-xr-red-select-201809.png\"]', '2019-11-23 02:17:01', '2019-11-23 02:17:01'),
(17, 'Jeans', '<p>comfort jeans</p>', 700.00, 620.00, 20, 14, 'blue', 'xl', 'public/admin/product-images/main/Jeggings-PNG-Image-Transparent.png', '[\"public\\/admin\\/product-images\\/gallery\\/Jeggings-Free-PNG-Image.png\",\"public\\/admin\\/product-images\\/gallery\\/Jeggings-PNG-Image-Transparent.png\",\"public\\/admin\\/product-images\\/gallery\\/Short-Jean-PNG-High-Quality-Image.png\"]', '2019-11-23 02:31:04', '2019-11-23 02:31:04'),
(19, 'Wallet', '<p>leather wallet</p>', 120.00, 100.00, 21, 14, 'red', 'm', 'public/admin/product-images/main/Wallet-PNG-Image-Transparent.png', '[\"public\\/admin\\/product-images\\/gallery\\/Wallet-PNG-Image-Transparent.png\",\"public\\/admin\\/product-images\\/gallery\\/Wallet-Transparent-Background-PNG.png\"]', '2019-11-23 02:35:27', '2019-11-23 02:35:27'),
(20, 'Coat', '<p>comfortable coat</p>', 750.00, 660.00, 22, 12, 'white', 'l', 'public/admin/product-images/main/Long-Coat-PNG-Image-Background.png', '[\"public\\/admin\\/product-images\\/gallery\\/Leather-Coat-PNG-Image.png\",\"public\\/admin\\/product-images\\/gallery\\/Long-Coat-PNG-Image-Background.png\",\"public\\/admin\\/product-images\\/gallery\\/Men-Long-Coat-PNG-Transparent-Image.png\"]', '2019-11-23 02:37:17', '2019-11-23 02:37:17'),
(21, 'samsung s11', '<p>best phone in town</p>', 2100.00, 2000.00, 4, 16, 'white', 'l', 'public/admin/product-images/main/e1.jpg', '[\"public\\/admin\\/product-images\\/gallery\\/p1.jpg\",\"public\\/admin\\/product-images\\/gallery\\/ph2.png\",\"public\\/admin\\/product-images\\/gallery\\/ph4.png\"]', '2019-11-23 02:40:54', '2019-11-23 02:40:54'),
(22, 'nike prime', '<p>best and cool sneaker</p>', 420.00, 400.00, 8, 17, 'blue', 'l', 'public/admin/product-images/main/d3.jpg', '[\"public\\/admin\\/product-images\\/gallery\\/d1.jpg\",\"public\\/admin\\/product-images\\/gallery\\/d2.jpg\",\"public\\/admin\\/product-images\\/gallery\\/d3.jpg\"]', '2019-11-23 02:46:34', '2019-11-23 02:46:34'),
(23, 'Gown', '<p>wedding and casual gown</p>', 550.00, 500.00, 23, 18, 'white', 'xl', 'public/admin/product-images/main/Cocktail-Dress-PNG-Photo.png', '[\"public\\/admin\\/product-images\\/gallery\\/Cocktail-Dress-PNG-Photo.png\",\"public\\/admin\\/product-images\\/gallery\\/Cocktail-Dress-PNG-Pic.png\",\"public\\/admin\\/product-images\\/gallery\\/Cocktail-Dress-PNG-Transparent-Image.png\"]', '2019-11-23 03:53:33', '2019-11-23 03:53:33'),
(24, 'samsung j7', '<p>latest model of samsung</p>', 2500.00, 2400.00, 4, 16, 'white', 'm', 'public/admin/product-images/main/nokia_6_2-front_ice.png', '[\"public\\/admin\\/product-images\\/gallery\\/e4.jpg\",\"public\\/admin\\/product-images\\/gallery\\/ph2.png\",\"public\\/admin\\/product-images\\/gallery\\/ph4.png\"]', '2019-11-24 14:08:12', '2019-11-24 14:08:12'),
(25, 'adidas dark', '<p>new black edition</p>', 1200.00, 1100.00, 8, 15, 'blue', 'xl', 'public/admin/product-images/main/Adidas-Shoes-PNG-Transparent-Image.png', '[\"public\\/admin\\/product-images\\/gallery\\/2.png\",\"public\\/admin\\/product-images\\/gallery\\/Adidas-Shoes-PNG-Picture.png\",\"public\\/admin\\/product-images\\/gallery\\/Adidas-Shoes-PNG-Transparent-Image.png\"]', '2019-11-24 14:10:26', '2019-11-24 14:10:26'),
(26, 'Xiaomi', '<p>cool and stylish smart phone</p>', 12000.00, 8000.00, 4, 11, '---Select Color---', 'l', 'public/admin/product-images/main/iphone-xr-red-select-201809.png', '[\"public\\/admin\\/product-images\\/gallery\\/iphone-xr-coral-select-201809.png\",\"public\\/admin\\/product-images\\/gallery\\/iphone-xr-red-select-201809.png\"]', '2019-12-13 02:20:36', '2019-12-13 02:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_no`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Tarif Haydar', 'tarif@gmail.com', '01913470135', 'bongshal,dhaka', '2019-12-04 12:53:17', '2019-12-04 12:53:17'),
(2, 'Sojib Ahmed', 'sojib@gmail.com', '01513470136', 'mirpur,dhaka', '2019-12-04 12:54:41', '2019-12-04 12:54:41'),
(3, 'Samer Rahman', 'kauser@gmail.com', '01813470138', 'bongshal,dhaka', '2019-12-07 05:44:47', '2019-12-07 05:44:47'),
(4, 'Nabila Khan', 'darling@gmail.com', '01513470135', 'bongshal,dhaka', '2019-12-07 12:12:08', '2019-12-07 12:12:08'),
(5, 'Rakib Rahman', 'rakib@gmail.com', '01913470137', 'mirpur,dhaka', '2019-12-08 13:39:19', '2019-12-08 13:39:19'),
(6, 'Sayem Hasan', 'darling@gmail.com', '01313470135', 'mirpur,dhaka', '2019-12-13 02:13:47', '2019-12-13 02:13:47'),
(7, 'Rakib Khan', 'maliha@gmail.com', '01913470135', 'bongshal,dhaka', '2019-12-26 01:11:02', '2019-12-26 01:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samer', 'admin@gmail.com', NULL, '$2y$10$NoBVdBsQkJyx22K8WwQ4v..owsUPPPOprRHF3r9Ftv3aZRXiyGDsy', NULL, '2019-11-07 13:37:32', '2019-11-07 13:37:32');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
