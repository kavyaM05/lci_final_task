-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2026 at 06:05 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `analytics_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_logs`
--

CREATE TABLE `booking_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_logs`
--

INSERT INTO `booking_logs` (`id`, `booking_id`, `action`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'created', '{\"customer_name\":\"John Doe\",\"customer_email\":\"john@example.com\",\"booking_date\":\"2026-01-23\",\"status\":\"pending\",\"updated_at\":\"2026-01-22T14:28:05.000000Z\",\"created_at\":\"2026-01-22T14:28:05.000000Z\",\"id\":1}', '2026-01-22 08:58:05', '2026-01-22 08:58:05', NULL),
(2, 2, 'created', '{\"customer_name\":\"Devu\",\"customer_email\":\"devudev@gmail.com\",\"booking_date\":\"2026-01-22\",\"status\":\"pending\",\"updated_at\":\"2026-01-22T14:29:57.000000Z\",\"created_at\":\"2026-01-22T14:29:57.000000Z\",\"id\":2}', '2026-01-22 08:59:57', '2026-01-22 08:59:57', NULL),
(3, 3, 'created', '{\"customer_name\":\"Devzu\",\"customer_email\":\"dezvudev@gmail.com\",\"booking_date\":\"2026-01-22\",\"status\":\"pending\",\"updated_at\":\"2026-01-22T14:36:47.000000Z\",\"created_at\":\"2026-01-22T14:36:47.000000Z\",\"id\":3}', '2026-01-22 09:06:47', '2026-01-22 09:06:47', NULL),
(4, 3, 'updated', '{\"id\":3,\"customer_name\":\"Sagar\",\"customer_email\":\"dezvudev@gmail.com\",\"status\":\"confirmed\",\"booking_date\":\"2026-01-22 00:00:00\",\"deleted_at\":null,\"created_at\":\"2026-01-22T14:36:47.000000Z\",\"updated_at\":\"2026-01-22T14:43:56.000000Z\"}', '2026-01-22 09:13:56', '2026-01-22 09:13:56', NULL),
(5, 3, 'deleted', NULL, '2026-01-22 09:19:11', '2026-01-22 09:19:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_logs`
--
ALTER TABLE `booking_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_logs`
--
ALTER TABLE `booking_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
