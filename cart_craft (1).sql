-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2025 at 01:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_craft`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(11) NOT NULL,
  `names` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `phone_number` varchar(55) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `gcash_number` varchar(55) NOT NULL,
  `gcash_name` varchar(255) NOT NULL,
  `gcash_qr_code` varchar(255) NOT NULL,
  `municipality` varchar(55) NOT NULL,
  `province` varchar(55) NOT NULL,
  `front_valid_id` varchar(255) NOT NULL,
  `back_valid_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'artist.webp',
  `user_type` char(1) NOT NULL DEFAULT 'c' COMMENT 'c - artists/creator',
  `user_status` char(1) NOT NULL DEFAULT 'p' COMMENT 'a - active \r\nb - banned\r\nd - declined\r\ni - inactive\r\np - pending	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `names`, `email`, `password`, `phone_number`, `specialization`, `date_registered`, `gcash_number`, `gcash_name`, `gcash_qr_code`, `municipality`, `province`, `front_valid_id`, `back_valid_id`, `image`, `user_type`, `user_status`) VALUES
(3, 'Kristine Zyra Mae Arevalo', 'arevalo@gmail.com', '12345678910', '09456823067', 'Painter', '2024-09-19 18:05:15', '', '', 'cashG.jpg', '', '', 'sample front.jpg', 'sample back.jpg', 'kzma.jpg', 'c', 'b'),
(4, 'Madel Jandra Bautista', 'bautista@gmail.com', '12345678910', '09456823067', 'Painter', '2024-09-20 21:14:03', '', '', '', '', '', 'sample front.jpg', 'sample back.jpg', 'madel.jpg', 'c', 'a'),
(5, 'Mark Erick Serrano', 'serrano@gmail.com', 'pass123', '09456823067', 'Painter, Pencil Drawing', '2024-10-08 16:20:58', '09456823067', 'Mark Erick Serrano', 'cashG.jpg', 'Libon', 'Albay', 'sample front.jpg', 'sample back.jpg', 'meow.jpg', 'c', 'a'),
(6, 'Justine Bragais', 'bragais@gmail.com', '12345678910', '09456823067', 'Painter, Pencil Drawing', '2024-10-08 16:21:40', '', '', '', 'Ligao', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(7, 'Elton Moises', 'moises@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:22:28', '', '', '', 'Ligao', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(8, 'Gwen Padua', 'padua@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:23:00', '', '', '', 'Ligao', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(9, 'Janna Anobling', 'anobling@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:23:52', '', '', '', 'Oas', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(10, 'Jem Casurog', 'casurog@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:24:28', '', '', '', 'Ligao', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(11, 'Lhea Pocaan', 'pocaan@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:24:56', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(12, 'Althea Lobos', 'lobos@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:25:24', '', '', '', 'Oas', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(13, 'Allysa Madara', 'madara@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:26:03', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(14, 'Rhea Mae Nasayao', 'nasayao@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:27:23', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(15, 'Francyn Essy Saculo', 'saculo@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:27:47', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(16, 'Juliana Alexa Salceda', 'salceda@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:28:22', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(17, 'Lee Carter Serra', 'serra@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:28:39', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'a'),
(18, 'Jonalyn Nas', 'nas@gmail.com', '12345678910', '09456823067', 'Painter', '2024-10-08 16:43:57', '', '', '', 'Polangui', 'Albay', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'b'),
(19, 'test qwe', 'artist@gmail.com', '1234', '09456823067', 'Painter', '2024-10-09 18:46:07', '', '', '', '', '', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'p'),
(20, 'test qwerty', 'artist2@gmail.com', '1234', '09456823067', 'Charcoal/Pencil Drawing', '2024-10-09 19:06:28', '', '', '', '', '', 'sample front.jpg', 'sample back.jpg', 'artist.webp', 'c', 'd'),
(21, 'jayvick', 'jayvick@gmail.com', 'jayvick', '09456823067', 'Digital Artist', '2024-12-01 21:40:45', '', '', '', '', '', 'frontsample.png', 'backsample.png', 'artist.webp', 'c', 'p'),
(22, 'artist record', 'artistrecord@gmail.com', 'record123', '+639456823067', 'Charcoal/Pencil Drawing', '2024-12-09 14:28:23', '', '', '', 'Libon', 'Albay', 'frontsample.png', 'backsample.png', 'artist.webp', 'c', 'a'),
(23, 'decline', 'decline@gmail.com', 'password', '09456823067', 'Digital Artist', '2024-12-09 16:06:13', '', '', '', '', '', 'bragais.jpg', 'CartCraft logo.png', 'artist.webp', 'c', 'p'),
(25, 'edith serrano', 'edith@gmail.com', 'edith123', '+63945683067', 'Painter', '2024-12-10 15:16:34', '', '', '', 'Libon', 'Albay', 'frontValidID.jpg', 'backValidID.jpg', 'artist.webp', 'c', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `bid_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bid_amount` decimal(10,2) NOT NULL,
  `bid_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`bid_id`, `product_id`, `user_id`, `bid_amount`, `bid_time`) VALUES
(1, 7, 5, 150000.00, '2024-11-20 22:13:19'),
(17, 7, 5, 200000.00, '2024-11-20 22:16:12'),
(18, 7, 5, 250000.00, '2024-11-20 23:04:12'),
(20, 7, 5, 250500.00, '2024-11-21 14:35:13'),
(22, 7, 5, 251000.00, '2024-11-22 01:06:50'),
(23, 7, 5, 251500.00, '2024-11-22 01:38:04'),
(24, 7, 5, 252000.00, '2024-11-22 01:45:05'),
(25, 7, 5, 252500.00, '2024-11-22 03:35:03'),
(29, 8, 5, 140000.00, '2024-11-22 10:38:30'),
(31, 8, 4, 150000.00, '2024-11-22 11:25:47'),
(32, 10, 5, 500000.00, '2024-11-22 14:58:28'),
(35, 12, 5, 15000.00, '2024-11-30 15:03:46'),
(36, 12, 5, 16000.00, '2024-12-01 13:33:58'),
(37, 49, 22, 6.00, '2024-12-09 07:05:20'),
(38, 49, 22, 10.00, '2024-12-09 07:05:35'),
(39, 49, 5, 20000.00, '2024-12-09 07:06:36'),
(40, 49, 22, 21000.00, '2024-12-09 07:07:23'),
(41, 51, 26, 1000.00, '2024-12-10 08:11:06'),
(42, 51, 27, 20000.00, '2024-12-10 08:11:16'),
(43, 51, 26, 1000000.00, '2024-12-10 08:11:33'),
(44, 17, 5, 22000.00, '2025-03-14 02:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `date_added`) VALUES
(64, 4, 1, '1', '2024-11-22 21:17:52'),
(70, 24, 3, '1', '2024-12-09 14:48:14'),
(72, 24, 13, '1', '2024-12-09 14:56:44'),
(74, 5, 1, '1', '2024-12-09 21:59:38'),
(75, 5, 13, '1', '2024-12-09 21:59:45'),
(84, 29, 1, '1', '2024-12-10 21:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `commission_orders`
--

CREATE TABLE `commission_orders` (
  `commission_order_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `artists_id` int(11) NOT NULL,
  `order_reference_number` varchar(13) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` float(12,2) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `names` varchar(55) NOT NULL,
  `emails` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `street` varchar(55) NOT NULL,
  `barangay` varchar(55) NOT NULL,
  `municipality` varchar(55) NOT NULL,
  `province` varchar(55) NOT NULL,
  `zip_code` varchar(55) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` char(1) NOT NULL DEFAULT 'p' COMMENT 'p - pending\r\ns - shipped\r\nd - delivered',
  `payment_method` varchar(55) NOT NULL COMMENT 'GCash or Card Payment',
  `gcash_reference_number` varchar(55) DEFAULT NULL,
  `account_names` varchar(55) DEFAULT NULL,
  `account_number` varchar(55) DEFAULT NULL,
  `gcash_date` date DEFAULT NULL,
  `gcash_time` time DEFAULT NULL,
  `gcash_proof` varchar(255) DEFAULT NULL,
  `card_holder` varchar(55) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `card_number` varchar(55) DEFAULT NULL,
  `expiration_date` varchar(5) DEFAULT NULL,
  `cvv_code` varchar(4) DEFAULT NULL,
  `order_received` datetime DEFAULT NULL,
  `order_shipped_time` datetime DEFAULT NULL,
  `down_payment` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_remaining_balance` decimal(10,2) DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `total_payment_status` enum('Pending','Paid') DEFAULT 'Pending',
  `total` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commission_orders`
--

INSERT INTO `commission_orders` (`commission_order_id`, `users_id`, `artists_id`, `order_reference_number`, `product_name`, `product_price`, `quantity`, `names`, `emails`, `phone_number`, `street`, `barangay`, `municipality`, `province`, `zip_code`, `order_date`, `status`, `payment_method`, `gcash_reference_number`, `account_names`, `account_number`, `gcash_date`, `gcash_time`, `gcash_proof`, `card_holder`, `email_address`, `card_number`, `expiration_date`, `cvv_code`, `order_received`, `order_shipped_time`, `down_payment`, `total_remaining_balance`, `shipping_fee`, `total_payment_status`, `total`) VALUES
(1, 5, 5, '6757B1200A686', 'Trafalgar Law', 12000.00, '1', 'commission test', 'markerickserrano1@gmail.com', '09456823067', 'Camagong', 'zone 5', 'Libon', 'Bulacan', '4507', '2024-12-10 11:10:24', 'p', 'GCash', '9264 1253 5612 1203', 'commission test', '09690696969', '2024-12-10', '11:10:00', 'GcashProof/alcohol.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6000.00, 150.00, 'Pending', '12150'),
(2, 5, 5, '6757D5435C800', 'Trafalgar Law', 12000.00, '1', 'commission test', 'commission@gmail.com', '09456823067', 'San Miguel', 'Zone 1', 'Oas', 'Bukidnon', '0926', '2024-12-10 13:44:35', 'p', 'GCash', '9264 1253 5612 1203', 'commission test', '09456823067', '2024-12-10', '12:51:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 150.00, 'Pending', '12150'),
(3, 5, 5, '6757D7E05D22E', 'Trafalgar Law', 12000.00, '1', 'commission test', 'commission@gmail.com', '09456823067', 'San Miguel', 'Zone 1', 'Oas', 'Bukidnon', '0926', '2024-12-10 13:55:44', 'p', 'GCash', '9264 1253 5612 1203', 'commission test', '09456823067', '2024-12-10', '12:51:00', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000.00, 6150.00, 150.00, 'Pending', '12150'),
(4, 27, 5, '6757FADB26A78', 'Four Head', 16000.00, '1', 'Madel Jandra Bautista', 'madel@gmail.com', '09456823213', 'San Miguel', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-10 16:24:59', 'p', 'GCash', '2019 186 047150', 'madel bautista', '09456823067', '2024-10-16', '09:24:00', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000.00, 8050.00, 50.00, 'Pending', '16050');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_time_liked` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `user_id`, `product_id`, `date_time_liked`) VALUES
(4, 4, 2, '2024-11-17 09:56:24'),
(5, 4, 1, '2024-11-17 09:56:32'),
(6, 6, 1, '2024-11-17 09:56:35'),
(7, 19, 1, '2024-11-17 09:56:38'),
(8, 18, 1, '2024-11-17 09:56:41'),
(9, 7, 1, '2024-11-17 09:56:43'),
(11, 4, 13, '2024-11-17 09:57:51'),
(13, 6, 13, '2024-11-17 09:57:57'),
(14, 6, 14, '2024-11-17 09:57:59'),
(15, 7, 13, '2024-11-17 09:58:03'),
(16, 17, 13, '2024-11-17 09:58:05'),
(17, 4, 3, '2024-11-17 09:58:08'),
(18, 6, 3, '2024-11-17 09:58:10'),
(19, 17, 1, '2024-11-17 09:58:12'),
(20, 6, 2, '2024-11-17 09:58:14'),
(102, 5, 44, '2024-12-01 10:05:59'),
(111, 5, 14, '2024-12-01 10:06:28'),
(112, 5, 2, '2024-12-01 10:06:30'),
(124, 5, 6, '2024-12-06 14:42:02'),
(125, 5, 19, '2024-12-06 14:43:35'),
(126, 5, 12, '2024-12-06 14:43:36'),
(128, 5, 7, '2024-12-06 15:24:37'),
(129, 5, 3, '2024-12-08 11:36:03'),
(130, 24, 1, '2024-12-09 14:34:49'),
(132, 24, 48, '2024-12-09 14:34:57'),
(133, 24, 13, '2024-12-09 14:56:09'),
(134, 22, 49, '2024-12-09 15:10:18'),
(139, 29, 13, '2024-12-10 15:48:18'),
(142, 29, 50, '2024-12-10 15:49:33'),
(143, 29, 3, '2024-12-10 15:55:06'),
(144, 29, 1, '2024-12-10 21:21:35'),
(145, 5, 17, '2025-03-14 10:08:23'),
(146, 5, 1, '2025-08-04 06:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `artists_id` int(11) NOT NULL,
  `order_reference_number` varchar(13) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` float(12,2) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `names` varchar(55) NOT NULL,
  `emails` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `street` varchar(55) NOT NULL,
  `barangay` varchar(55) NOT NULL,
  `municipality` varchar(55) NOT NULL,
  `province` varchar(55) NOT NULL,
  `zip_code` varchar(55) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` char(1) NOT NULL DEFAULT 'p' COMMENT 'p - pending\r\ns - shipped\r\nd - delivered',
  `payment_method` varchar(55) NOT NULL COMMENT 'GCash or Card Payment',
  `gcash_reference_number` varchar(55) DEFAULT NULL,
  `account_names` varchar(55) DEFAULT NULL,
  `account_number` varchar(55) DEFAULT NULL,
  `gcash_date` date DEFAULT NULL,
  `gcash_time` time DEFAULT NULL,
  `gcash_proof` varchar(255) DEFAULT NULL,
  `card_holder` varchar(55) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `card_number` varchar(55) DEFAULT NULL,
  `expiration_date` varchar(5) DEFAULT NULL,
  `cvv_code` varchar(4) DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `order_received` datetime DEFAULT NULL,
  `order_shipped_time` datetime DEFAULT NULL,
  `total` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `users_id`, `artists_id`, `order_reference_number`, `product_name`, `product_price`, `quantity`, `names`, `emails`, `phone_number`, `street`, `barangay`, `municipality`, `province`, `zip_code`, `order_date`, `status`, `payment_method`, `gcash_reference_number`, `account_names`, `account_number`, `gcash_date`, `gcash_time`, `gcash_proof`, `card_holder`, `email_address`, `card_number`, `expiration_date`, `cvv_code`, `shipping_fee`, `order_received`, `order_shipped_time`, `total`) VALUES
(1, 4, 4, '1', 'Girl with a Blue Earring', 133999.00, '1', 'kristine zyra mae arevalo', '', '+639456823067', 'Zone 1', 'Camagong', 'Oas', 'Albay', '4205', '2024-09-15 22:50:48', 'd', 'GCash', '1234 5678 9123', 'Kristine Zyra Mae', '+639983514612', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999.00'),
(2, 5, 3, '0', 'Sunset', 999999.00, '1', 'Mark Erick Serrano', '', '+639456823067', 'Zone 1', 'Camagong', 'Oas', 'Albay', '4205', '2024-09-22 22:50:59', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Kristine Zyra Mae', 'kristine@example.com', '1111 2222 3333 4444', '12/25', '123', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '259999.00'),
(3, 17, 5, '0', 'Balloon', 99999.00, '1', 'customer', '', '09456823067', 'Zone 1', 'Camagong', 'Oas', 'Albay', '4205', '2024-10-09 09:58:55', 'd', 'GCash', '1234 5678 9124', 'Kristine Zyra Mae', '+639983514612', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '99999.00'),
(4, 4, 5, '0', 'Trafalgar Law', 1599.00, '1', 'Madel Jandra Bautista', '', '+639456823067', 'Zone 5', 'San Francisco', 'Libon', 'Albay', '4205', '2024-10-11 22:18:09', 'd', 'GCash', '1234 5678 9125', 'Mark Erick Serrano', '+639456823067', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1599.00'),
(5, 5, 5, '0', 'Four Head', 125999.00, '1', 'Kristine zyra mae arevalo', '', '+639456823067', 'Zone 3', 'San Francisco', 'Libon', 'Albay', '4205', '2024-10-13 22:18:25', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Mark Erick Serrano', 'markerickserrano1@gmail.com', '2222 3333 4444 5555', '12/05', '926', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '125999.00'),
(16, 4, 5, '0', 'Balloon', 1000.00, '2', 'mark erick boss', '', '09456823067', 'camagong', 'zone 1', 'Libon', 'Albay', '4421', '2024-11-15 21:01:58', 's', 'GCash', '123456789012', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '2000'),
(17, 4, 11, '0', 'Leaves', 139999.00, '1', 'mark erick boss', '', '09456823067', 'camagong', 'zone 1', 'Libon', 'Albay', '1253', '2024-11-15 21:26:34', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1253@gmail.com', '1234 5678 9012 3456', '2024-', '1253', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(18, 5, 5, '0', 'Balloon', 1000.00, '3', 'Bossing Kyot ko', '', '09456823067', 'camagong', 'zone 1', 'Libon', 'Albay', '0926', '2024-11-15 21:36:30', 's', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1253@gmail.com', '1234 5678 9012 6969', '12/05', '123', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '3000'),
(19, 4, 3, '0', 'Sunset', 9999.00, '1', 'Bossing Kyot', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '1253', '2024-11-15 21:53:51', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1253@gmail.com', '231 ', '12/25', '123', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '9999'),
(20, 5, 11, '0', 'Leaves', 139999.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'albay', '4421', '2024-11-15 22:57:25', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1253@gmail.com', '1234 5678 6969 6969', '12/05', '125', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(21, 6, 11, '0', 'Leaves', 139999.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'albay', '0926', '2024-11-15 23:00:55', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1253@gmail.com', '1234 5678 6969', '12/05', '123', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(22, 5, 11, '0', 'Leaves', 139999.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Oas', 'albay', '44321', '2024-11-16 08:13:46', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1@gmail.com', '1234 5678 0926 6969', '12/6', '126', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(23, 4, 5, '0', 'Balloon', 1000.00, '2', 'Bossing Kyot ko', '', '09456823068', 'Camagongs', 'zone 3', 'Libon', 'Albay1', '1253', '2024-11-16 08:25:47', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, '', 'Boss erick', 'markerickserrano1@gmail.com', '9876 5432 1234 5678', '12/03', '926', 0.00, '2024-12-02 12:26:35', NULL, '2000'),
(24, 5, 3, '0', 'Sunset', 9999.00, '1', 'mark erick boss', '', '09456823069', 'Camagong', 'zone 3', 'oas', 'albay', '44321', '2024-11-16 08:34:07', 'd', 'GCash', '2024 125 092604', 'bossing', '09456823067', '2024-11-16', '08:34:00', 'GcashProof/alcohol.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', NULL, '9999'),
(25, 4, 3, '0', 'Sunset', 9999.00, '1', 'Bossing Kyot ko', '', '09456823066', 'Camagongs', 'zone 3', 'oas', 'albay', '7890', '2024-11-16 09:11:32', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Bossing Kyot', 'markerickserrano1@gmail.com', '4678 1259 5936 2345', '09/26', '584', 0.00, '2024-12-02 12:26:35', NULL, '9999'),
(26, 5, 5, '0', 'Balloon', 1000.00, '3', 'Bossing Kyot ko', '', '09456823066', 'Camagongs', 'zone 3', 'oas', 'albay', '7890', '2024-11-16 09:11:32', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Bossing Kyot', 'markerickserrano1@gmail.com', '4678 1259 5936 2345', '09/26', '584', 0.00, '2024-12-02 12:26:35', NULL, '3000'),
(27, 4, 11, '0', 'Leaves', 139999.00, '1', 'mark erick boss', '', '09456823069', 'Camagong', 'zone 1', 'Oas', 'Albay', '7890', '2024-11-16 09:16:19', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Bossing Kyot', 'markerickserrano1253@gmail.com', '213 45 664 6', '', '', 0.00, '2024-12-02 12:26:35', NULL, '139999'),
(28, 5, 5, '0', 'Balloon', 1000.00, '1', 'Bossing Kyot', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '4421', '2024-11-16 09:28:21', 'p', 'GCash', '2024 125 092604', 'bossing', '09456823067', '2024-11-16', '09:26:00', 'GcashProof/backsample.png', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(29, 5, 3, '0', 'Sunset', 9999.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Oas', 'albay', '7890', '2024-11-16 09:34:35', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Bossing Kyot', 'markerickserrano1253@gmail.com', '1234 4567 7896 1234', '12/25', '125', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '9999'),
(30, 4, 5, '0', 'Balloon', 1000.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '7890', '2024-11-16 10:03:40', 'p', 'GCash', '2024 125 092604', 'bossing', '09456823067', '2024-11-16', '10:03:00', 'GcashProof/frontsample.png', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(31, 5, 5, '0', 'Balloon', 1000.00, '1', 'mark erick boss', '', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '7890', '2024-11-16 10:04:55', 'p', 'GCash', '2024 125 092604', 'bossing', '09456823067', '2024-11-16', '10:03:00', 'GcashProof/frontsample.png', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(32, 6, 11, '0', 'Leaves', 139999.00, '1', 'test quantity and cart remove', '', '09456823068', 'Camagongs', 'zone 5', 'oas', 'Albay1', '7890', '2024-11-16 10:08:31', 'd', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'testtt', 'markerickserrano1@gmail.com', '1234 5678 1234 5678', '04/12', '545', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(33, 5, 3, '0', 'Sunset', 9999.00, '1', 'test em', 'markerickserrano1@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Oas', 'Albay', '7890', '2024-11-16 13:03:10', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'testtting', 'markerickserrano1@gmail.com', '1241 7561 1439 9623', '01/30', '732', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '9999'),
(34, 4, 3, '0', 'Sunset', 9999.00, '1', 'test method', 'markerickserrano1@gmail.com', '09456823069', 'Camagongs', 'zone 5', 'Libon', 'Albay', '4421', '2024-11-16 17:08:36', 's', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Boss erick', 'markerickserrano1253@gmail.com', '15651 6516 16615 6516', '10/13', '129', 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '9999'),
(35, 6, 5, '0', 'Balloon', 1000.00, '1', 'Jeth Roy Delos Santos', 'Jettban@gmail.com', '09690696969', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-11-17 16:44:16', 's', 'GCash', '2024 1256 92604', 'Jeth Roy Delos Santos', '09690696969', '2024-11-17', '16:44:00', 'GcashProof/romanas.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(36, 5, 5, '0', 'Balloon', 1000.00, '1', 'Test Shipping', 'markerickserrano1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '4421', '2024-11-18 10:48:48', 'p', 'GCash', '2024 1256 92604', 'Jeth Roy Delos Santos', '09690696969', '2024-11-18', '10:48:00', 'GcashProof/CartCraft.png', NULL, NULL, NULL, NULL, NULL, 0.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(37, 5, 5, '0', 'Balloon', 1000.00, '2', 'Test Shipping Fee', 'Jettban@gmail.com', '09456823069', 'Camagong', 'zone 5', 'Libon', 'Albay', '7890', '2024-11-18 11:08:00', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-18', '11:07:00', 'GcashProof/festival.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '2000'),
(38, 6, 5, '0', 'Balloon', 1000.00, '1', 'mark erick boss', 'markerickserrano1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Lamitan', 'Basilan', '7302', '2024-11-18 18:19:14', 'p', 'GCash', '2024 1256 92604', 'Jeth Roy Delos Santos', '09456823067', '2024-11-18', '18:19:00', 'GcashProof/bragais.jpg', NULL, NULL, NULL, NULL, NULL, 150.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1000'),
(39, 5, 6, '0', 'Scream-2', 133999.00, '1', 'Jeth Roy Delos Santos', 'Jettban@gmail.com', '09456823069', 'Linao', 'zone 5', 'Mabayawas', 'Agusan del Sur', '7890', '2024-11-18 18:55:51', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-18', '18:55:00', 'GcashProof/heads.jpg', NULL, NULL, NULL, NULL, NULL, 200.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '134199'),
(40, 5, 6, '0', 'Scream-2', 133999.00, '2', 'Bossing Kyot', 'markerickserrano1@gmail.com', '09456823069', 'Camagongs', 'zone 5', 'Lamitan', 'Albay', '4507', '2024-11-18 23:11:07', 'p', 'GCash', '2024 1256 92604', 'bossing', '09456823067', '2024-11-18', '23:10:00', 'GcashProof/bragais.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '50'),
(41, 5, 10, '0', 'Girl with a Blue Earring', 133999.00, '1', 'test test', 'Jettban@gmail.com', '09456823068', 'Camagongs', 'zone 5', 'Mabayawas', 'Aklan', '4507', '2024-11-19 09:08:47', 'p', 'GCash', '2024 1256 92604', 'Jeth Roy Delos Santos', '09690696969', '2024-11-19', '09:08:00', 'GcashProof/craft.png', NULL, NULL, NULL, NULL, NULL, 150.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '134149'),
(42, 6, 10, '0', 'Girl with a Blue Earring', 133999.00, '1', 'Testall', 'markerickserrano1@gmail.com', '09456823066', 'Camagong', 'zone 1', 'Oas', 'Albay', '4507', '2024-11-19 09:19:07', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-19', '09:19:00', 'GcashProof/customersHomeless.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '133999'),
(43, 5, 14, '0', 'Women in Blue', 139999.00, '1', 'test quantity and quantity reduced', 'Jettban@gmail.com', '09690696969', 'Linao', 'zone 5', 'Mabayawas', 'Albay', '4507', '2024-11-19 09:32:32', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-19', '09:31:00', 'GcashProof/dahyun.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '139999'),
(44, 6, 5, '0', 'Yerdy Head', 1000.00, '1', 'Ayaw na', 'hirapnamanmaam@gmail.com', '09456823069', 'Camagong', 'zone 5', 'Lamitan', 'Agusan del Norte', '7890', '2024-11-19 10:10:29', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09456823067', '2024-11-19', '10:10:00', 'GcashProof/default.jpg', NULL, NULL, NULL, NULL, NULL, 200.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1200'),
(45, 5, 5, '0', 'Yerdy Head', 1000.00, '1', 'test buy now', 'Jettban@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '1253', '2024-11-20 06:26:04', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-20', '06:25:00', 'GcashProof/dahyun.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1050'),
(46, 4, 5, '0', 'Balloon', 1000.00, '1', 'Buy now testing', 'Jettban@gmail.com', '09456823069', 'Linao', 'zone 5', 'Mabayawas', 'Agusan del Sur', '4421', '2024-11-20 06:34:06', 'p', 'GCash', '2024 1256 9260 5271', 'Jeth Roy Delos Santos', '09690696969', '2024-11-20', '06:33:00', 'GcashProof/desert4.jpg', NULL, NULL, NULL, NULL, NULL, 200.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '1200'),
(47, 5, 5, '0', 'Balloon', 1000.00, '1', 'buy now quantity test', 'Jettban@gmail.com', '09690696969', 'Camagong', 'zone 1', 'Mabayawas', 'Abra', '0926', '2024-11-20 06:43:11', 'd', 'GCash', '2024 1256 9260 5271', 'bossing', '09456823067', '2024-11-20', '06:43:00', 'GcashProof/kzma.jpg', NULL, NULL, NULL, NULL, NULL, 100.00, '2024-12-08 00:31:23', '2024-12-04 22:27:12', '1100'),
(48, 6, 3, '0', 'Sunset', 9999.00, '2', 'Bossing Kyot', 'markerickserrano1@gmail.com', '09456823069', 'Camagong', 'zone 1', 'Oas', 'Albay', '0926', '2024-11-20 06:47:27', 'p', 'GCash', '2024 1256 9260 5271', 'bossing', '09456823067', '2024-11-20', '06:47:00', 'GcashProof/kzma.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '20048'),
(49, 5, 3, '0', 'Sunset', 9999.00, '1', 'test cart', 'testcart1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '4507', '2024-11-22 23:08:43', 'p', 'GCash', '1234 5678 9012 3456', 'Test Cart One', '09456823067', '2024-11-22', '23:08:00', 'GcashProof/dahyun.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '9999'),
(50, 4, 5, '0', 'Balloon', 1000.00, '1', 'test cart', 'testcart1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '4507', '2024-11-22 23:08:43', 's', 'GCash', '1234 5678 9012 3456', 'Test Cart One', '09456823067', '2024-11-22', '23:08:00', 'GcashProof/dahyun.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 14:11:01', '11049'),
(51, 6, 6, '0', 'Scream-2', 133999.00, '2', 'test buy now', 'testbuynow1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '0926', '2024-11-22 23:12:15', 'p', 'GCash', '0987 6543 2109 8765', 'Test Buy Now One', '09456823067', '2024-11-22', '23:12:00', 'GcashProof/CartCraft.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '268048'),
(52, 6, 9, '0', 'Cubism', 252500.00, '1', 'test bid pay now', 'testbidpaynow1@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Libon', 'Albay', '4507', '2024-11-22 23:14:27', 'p', 'GCash', '2024 1256 9260 5271', 'test bid pay now', '09456823067', '2024-11-22', '23:14:00', 'GcashProof/defaultProds.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '252550'),
(54, 5, 15, '0', 'Tree', 133999.00, '1', 'test two total', 'test2total@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '7890', '2024-11-24 09:21:18', 'p', 'GCash', '2024 1256 9260 5271', 'test two total', '09456823067', '2024-11-24', '09:21:00', 'GcashProof/default.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-04 20:47:27', '134049'),
(55, 5, 6, '0', 'Scream-2', 133999.00, '1', 'test two total', 'test2total@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '7890', '2024-11-24 09:21:18', 's', 'GCash', '2024 1256 9260 5271', 'test two total', '09456823067', '2024-11-24', '09:21:00', 'GcashProof/default.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-02 12:26:35', '2024-12-08 11:58:02', '134049'),
(56, 5, 5, 'ORD-674D8A30', 'Yerdy Head', 1000.00, '1', 'test ref no', 'testrefno@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '4505', '2024-12-02 18:21:36', 'p', 'GCash', '1234 1234 1234 1245', 'test ref no', '09456823067', '2024-12-02', '18:21:00', 'GcashProof/backsample.png', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '1050'),
(57, 5, 5, '674D8C17684C7', 'Yerdy Head', 1000.00, '1', 'test ref no', 'testrefno@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Albay', '4505', '2024-12-02 18:29:43', 'd', 'GCash', '1234 1234 1234 1245', 'test ref no', '09456823067', '2024-12-02', '18:21:00', 'GcashProof/backsample.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-05 09:52:27', '2024-12-05 09:52:02', '1050'),
(58, 5, 5, '6753A41F69AD6', 'Dahyun', 20999.00, '1', 'test design', 'testdesign@gmail.com', '09456823068', 'Camagong', 'zone 1', 'Oas', 'Albay', '4505', '2024-12-07 09:25:51', 'p', 'GCash', '1234 1234 1234 1245', 'test design', '09456823067', '2024-12-07', '09:25:00', 'GcashProof/kzma.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '21049'),
(59, 5, 5, '6753A6016C502', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:33:53', 'p', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '13049'),
(60, 5, 5, '6753A82F6189C', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:43:11', 'p', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '13049'),
(61, 5, 5, '6753A89CAC82E', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:45:00', 'p', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '13049'),
(62, 5, 5, '6753A8E45A327', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:46:12', 's', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, '2024-12-08 00:33:30', '13049'),
(63, 5, 5, '6753A90CC3A7D', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:46:52', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:34:01', '2024-12-08 00:33:22', '13049'),
(64, 5, 5, '6753AA3E4F67F', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 09:51:58', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:30:33', '2024-12-08 00:27:42', '13049'),
(65, 5, 5, '6753AD2914F3E', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 10:04:25', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:30:20', '2024-12-08 00:27:39', '13049'),
(66, 5, 5, '6753AD33777E5', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 10:04:35', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:30:07', '2024-12-08 00:27:37', '13049'),
(67, 5, 5, '6753AD3EE1655', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 10:04:46', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:28:28', '2024-12-08 00:27:34', '13049'),
(68, 5, 5, '6753AD48CF92B', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 10:04:56', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:28:21', '2024-12-07 21:41:50', '13049'),
(69, 5, 5, '675443C2AA16A', 'Balloon', 1000.00, '1', 'test card', 'testcard@gmail.com', '09456823069', 'Camagong', 'zone 1', 'Oas', 'Albay', '4505', '2024-12-07 20:46:58', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Boss erick', 'markerickserrano1253@gmail.com', '1234 5678 9012 3456', '12/24', '1253', 50.00, NULL, NULL, '1050'),
(70, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 20:49:09', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(71, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 20:49:09', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(72, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:08:22', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(73, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:08:22', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(74, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:10:05', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(75, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:10:05', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(76, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:11:37', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(77, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:11:37', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(78, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:12:23', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(79, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:12:23', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(80, 5, 3, '', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:12:44', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(81, 5, 8, '', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:12:44', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(82, 5, 3, '67544A9CB4EF1', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:16:12', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(83, 5, 8, '67544A9CB5B65', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:16:12', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(84, 5, 3, '67544B92E5D51', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:20:18', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(85, 5, 8, '67544B92EC43F', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:20:18', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(86, 5, 3, '67544C5F478BA', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:23:43', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(87, 5, 8, '67544C5F4DAEE', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:23:43', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(88, 5, 3, '67544CB8E830C', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:25:12', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(89, 5, 8, '67544CB8E93ED', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:25:12', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(90, 5, 5, '67544CFC6C601', 'Trafalgar Law', 12999.00, '1', 'test design two', 'testdesign@gmail.com', '09456823069', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-07 21:26:20', 'd', 'GCash', '1234 1234 1234 1245', 'test design two', '09690696969', '2024-12-07', '09:33:00', 'GcashProof/boss1.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-08 00:27:58', '2024-12-07 21:41:47', '13049'),
(91, 5, 3, '67544DD531D69', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:29:57', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(92, 5, 8, '67544DD53736D', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:29:57', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(93, 5, 3, '67544E7FD3E8E', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:32:47', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(94, 5, 8, '67544E7FD9679', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:32:47', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(95, 5, 3, '67544EE32B2E6', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:34:27', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(96, 5, 8, '67544EE32EFDF', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:34:27', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(97, 5, 3, '67544F1E05803', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:35:26', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(98, 5, 8, '67544F1E0B9D2', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:35:26', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(99, 5, 3, '67544F22A423D', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:35:30', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(100, 5, 8, '67544F22A5A08', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:35:30', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(101, 5, 3, '67545018326E0', 'Sunset', 9999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:39:36', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '10049'),
(102, 5, 8, '6754501833FEC', 'BU Starry Night', 139999.00, '1', 'test two card', 'test2card@gmail.com', '09456823067', 'Camagong', 'zone 3', 'Libon', 'Albay', '4507', '2024-12-07 21:39:36', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'test two card', 'markerickserrano1253@gmail.com', '1234 4321 5678 8765', '12/25', '1254', 50.00, NULL, NULL, '140049'),
(103, 5, 6, '6755139B3EE14', 'Scream-2', 133999.00, '1', 'justen', 'justen@gmail.com', '09456823067', 'Linao', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-08 11:33:47', 'p', 'GCash', '1234 1234 1234 1245', 'justen ten', '09690696969', '2024-12-08', '11:33:00', 'GcashProof/artist.webp', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '134049'),
(104, 5, 6, '6755144563F94', 'Scream-2', 133999.00, '1', 'justen', 'Jettban@gmail.com', '09690696969', 'Camagong', 'zone 1', 'Lamitan', 'Bohol', '4507', '2024-12-08 11:36:37', 'd', 'GCash', '1234 1234 1234 1245', 'justen ten', '09690696969', '2024-12-08', '11:36:00', 'GcashProof/artist.webp', NULL, NULL, NULL, NULL, NULL, 150.00, '2024-12-08 11:37:35', '2024-12-08 11:37:26', '134149'),
(105, 24, 22, '67569358E2C8F', 'ERD', 1999.00, '1', 'madel', 'madel@gmail.com', '09456823068', 'San Miguel', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-09 14:51:04', 'd', 'GCash', '1234 1234 1234 1245', 'Madel', '09456823067', '2024-12-09', '14:50:00', 'GcashProof/Blank diagram.png', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-09 14:54:10', '2024-12-09 14:52:42', '2049'),
(106, 22, 5, '67569A11D832E', 'Trafalgar Law', 12999.00, '1', 'test', 'testdesign@gmail.com', '09456823067', 'Linao', 'zone 1', 'Lamitan', 'Benguet', '4421', '2024-12-09 15:19:45', 'd', 'GCash', '1234 1234 1234 1245', 'test two total', '09456823067', '2024-12-09', '15:19:00', 'GcashProof/CartCraft logo.png', NULL, NULL, NULL, NULL, NULL, 150.00, '2024-12-09 15:22:21', '2024-12-09 15:22:18', '13149'),
(107, 5, 3, '6756BC0F04E7F', 'Sunset', 9999.00, '1', 'Kristine Zyra Mae Arevalo', 'kristinemaearevalo1@gmail.com', '09456823067', 'Camagong', 'Zone 1', 'Oas', 'Albay', '4507', '2024-12-09 17:44:47', 'd', 'GCash', '9264 1253 5612 1203', 'Kristine Zyra Mae Arevalo', '09456823067', '2024-12-09', '17:27:00', 'GcashProof/arevalo.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-09 17:53:15', '2024-12-09 17:48:39', '10049'),
(108, 5, 5, '6757B0940A3BD', 'Trafalgar Law', 12000.00, '1', 'commission test', 'Jettban@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Biliran', '7890', '2024-12-10 11:08:04', 'p', 'GCash', '9264 1253 5612 1203', 'commission test', '09690696969', '2024-12-10', '11:07:00', 'GcashProof/artist.webp', NULL, NULL, NULL, NULL, NULL, 150.00, NULL, NULL, '12150'),
(109, 5, 5, '6757B0D921E86', 'Trafalgar Law', 12000.00, '1', 'commission test', 'Jettban@gmail.com', '09456823067', 'Camagong', 'zone 1', 'Oas', 'Biliran', '7890', '2024-12-10 11:09:13', 'p', 'GCash', '9264 1253 5612 1203', 'commission test', '09690696969', '2024-12-10', '11:07:00', 'GcashProof/artist.webp', NULL, NULL, NULL, NULL, NULL, 150.00, NULL, NULL, '12150'),
(112, 29, 3, '6757F3179F758', 'Sunset', 9999.00, '1', 'Mark Erick Serrano', 'markerickserrano@gmail.com', '09456823067', 'San francisco', 'Zone 3', 'Libon', 'Albay', '4507', '2024-12-10 15:51:51', 'p', 'GCash', '2018 854 114981', 'Mark Erick P. Serrano', '09456823067', '2024-07-04', '07:58:00', 'GcashProof/gcash sample 2.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, '10049'),
(113, 29, 25, '6757F317A154F', 'Lady', 1000.00, '1', 'Mark Erick Serrano', 'markerickserrano@gmail.com', '09456823067', 'San francisco', 'Zone 3', 'Libon', 'Albay', '4507', '2024-12-10 15:51:51', 'd', 'GCash', '2018 854 114981', 'Mark Erick P. Serrano', '09456823067', '2024-07-04', '07:58:00', 'GcashProof/gcash sample 2.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-10 15:54:45', '2024-12-10 15:54:07', '1050'),
(114, 26, 25, '6757F927086D5', '4 SEASON', 1000000.00, '1', 'Kristine Zyra Mae Arevalo', 'kristinemaearevalo1@gmail.com', '09456823067', 'Zone 1', 'Camagong', 'Oas', 'Albay', '4505', '2024-12-10 16:17:43', 'p', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 'Kristine Zyra Mae Arevalo', 'kristine@gmail.com', '1234 5678 1234 1236', '12/24', '1258', 50.00, NULL, NULL, '1000050'),
(115, 27, 25, '6757FBEAD3E00', 'Four Head', 16000.00, '1', 'Madel Jandra Bautista', 'madel@gmail.com', '09456823067', 'San Miguel', 'zone 5', 'Libon', 'Albay', '4507', '2024-12-10 16:29:30', 'd', 'GCash', '2019 186 047150', 'madel bautista', '09456823067', '2024-11-13', '21:29:00', 'GcashProof/gcash sample.jpg', NULL, NULL, NULL, NULL, NULL, 50.00, '2024-12-10 16:31:39', '2024-12-10 16:30:27', '16050');

-- --------------------------------------------------------

--
-- Table structure for table `order_time`
--

CREATE TABLE `order_time` (
  `order_time_id` int(11) NOT NULL,
  `order_approval_time` datetime NOT NULL DEFAULT current_timestamp(),
  `picked_up_time` datetime NOT NULL DEFAULT current_timestamp(),
  `out_for_delivery` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` decimal(15,2) NOT NULL,
  `product_size` varchar(55) NOT NULL,
  `medium` varchar(55) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `products_like` varchar(255) NOT NULL,
  `product_type` varchar(55) NOT NULL COMMENT 'f - fixed\r\nb - bid\r\nc - commission',
  `product_status` char(1) NOT NULL DEFAULT 'p' COMMENT 'p - pending\r\na - accepted\r\nd - declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `artist_id`, `product_name`, `product_price`, `product_size`, `medium`, `description`, `quantity`, `product_image`, `start_date`, `end_date`, `products_like`, `product_type`, `product_status`) VALUES
(1, 3, 'Sunset', 9999.00, '100 cm × 170 cm (39 in × 67 in)', 'Oil Paint', 'This sunset symbolizes how quickly time passes, reminding us to cherish these moments and it also reminds us that at the end of the day, there’s still a beautiful ending despite of obstacles and problems that we encounter. \n\nThe sea itself represents the depths of our emotions—sometimes calm, sometimes stormy. It encourages us to think about the unpredictability of life and the feelings that lie beneath the surface.\n\nIn the foreground, the fresh red roses add a striking contrast. They symbolize love and passion, showing that even as sunsets fade, the emotions we feel can be deep and lasting. The roses remind us that while moments may pass, our connections and feelings remain important.\n\nTogether, the sunset and the roses create a powerful image that invites us to appreciate both the beauty of life’s fleeting moments and the lasting bonds we share. This artwork encourages us to reflect on the relationship between nature and our emotions, highlighting that love endures even as time moves on.', 1, 'arevalo.jpg', NULL, NULL, '', 'f', 'a'),
(2, 5, 'Balloon', 1000.00, '100 cm × 170 cm (39 in × 67 in)', 'Oil Paint', 'Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 2, 'boss.jpg', NULL, NULL, '', 'f', 'a'),
(3, 6, 'Scream-2', 133999.00, '18x4', 'Oil Paint', 'This art was inspired by the modern art of edvard munch \"The scream\" and related it to that one famous animal moo deng who we can always see as a terified baby hippo which correlates to the concept of the scream that shows fear and anxiety to its surroundings', 2, 'bragais.jpg', NULL, NULL, '', 'f', 'a'),
(5, 7, 'Sunset-2', 139999.00, '18x4', 'Oil Paint', 'Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'elton.jpg', '2024-10-25 18:00:00', '2024-10-27 18:00:00', '', 'b', 'p'),
(6, 8, 'BU Starry Night', 139999.00, '18x4', 'Oil Paint', 'Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 0, 'gwen.jpg', NULL, NULL, '', 'f', 'a'),
(7, 9, 'Cubism', 139999.00, '18x4', 'Oil Paint', 'Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 0, 'jamaica and janna.jpg', '2024-11-21 06:00:00', '2024-11-22 12:00:00', '', 'b', 'a'),
(8, 18, 'Cubism-2', 133999.00, '18x4', 'Oil Paint', 'Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'jonalyn.jpg', '2024-11-22 18:00:00', '2024-11-22 20:00:00', '', 'b', 'a'),
(9, 15, 'Tree', 133999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 0, 'saculo.jpg', NULL, NULL, '', 'f', 'a'),
(10, 12, 'Underdog', 133999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'lobos.jpg', '2024-11-22 18:00:00', '2024-11-24 18:00:00', '', 'b', 'a'),
(11, 13, 'Twinkling Night ', 133999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'madara.jpg', NULL, NULL, '', 'f', 'a'),
(12, 7, 'Women in Black', 10000.00, '100cm × 170cm', 'Portrait painting', 'The painting presents a woman in half-body portrait, which has as a backdrop a distant landscape. Yet this simple description of a seemingly standard composition gives little sense of Leonardo’s achievement. The three-quarter view, in which the sitter’s position mostly turns toward the viewer, broke from the standard profile pose used in Italian art and quickly became the convention for all portraits, one used well into the 21st century. The subject’s softly sculptural face shows Leonardo’s skillful handling of sfumato (use of fine shading) and reveals his understanding of the musculature and the skull beneath the skin.', 1, 'moises.jpg', '2024-11-29 18:00:00', '2024-12-03 18:00:00', '', 'b', 'a'),
(13, 11, 'Leaves', 139999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'pocaan.jpg', NULL, NULL, '', 'f', 'a'),
(14, 14, 'Women in Blue', 139999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 0, 'rhea.jpg', NULL, NULL, '', 'f', 'a'),
(15, 10, 'Girl with a Blue Earring', 133999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 0, 'kalaban.jpg', NULL, NULL, '', 'f', 'a'),
(17, 17, 'Bug in a Flower', 13999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'serra.jpg', '2025-03-13 18:00:00', '2025-03-15 18:00:00', '', 'b', 'a'),
(18, 11, 'Lhea Pocaan', 13999.00, '18x4', 'Oil Paint', '     Las damas Romanas (Roman maidens) by the Filipino painter Juan Luna y Novicio (1857-1899) was an unlocated work for over a century ever since it was painted. Documentation was scant: Las Damas Romanas was but a title in the 1957 biography of Luna by Carlos E. Da Silva; it was but a faded black and white photograph from the file of the pre-war art dealer and historian Alfonso T. Ongpin, reproduced by Santiago Pilar in the standard work on the artist (1980). Las Damas Romanas, an early work, enlarges our knowledge and appreciation of Luna who is unfortunately remembered for his largest work Spoliarium (1884) that may well be his most important painting historically, but is not necessarily the best aesthetically.', 1, 'lhea.jpg', NULL, NULL, '', 'f', 'p'),
(19, 5, 'Trafalgar Law', 12000.00, '18x4', 'Pencil Drawing', 'This sunset symbolizes how quickly time passes, reminding us to cherish these moments and it also reminds us that at the end of the day, there’s still a beautiful ending despite of obstacles and problems that we encounter. \r\n\r\nThe sea itself represents the depths of our emotions—sometimes calm, sometimes stormy. It encourages us to think about the unpredictability of life and the feelings that lie beneath the surface.\r\n\r\nIn the foreground, the fresh red roses add a striking contrast. They symbolize love and passion, showing that even as sunsets fade, the emotions we feel can be deep and lasting. The roses remind us that while moments may pass, our connections and feelings remain important.\r\n\r\nTogether, the sunset and the roses create a powerful image that invites us to appreciate both the beauty of life’s fleeting moments and the lasting bonds we share. This artwork encourages us to reflect on the relationship between nature and our emotions, highlighting that love endures even as time moves on.', 8, 'Law.jpg', NULL, NULL, '', 'c', 'a'),
(20, 5, 'Four Head', 16000.00, '18x4', 'Pencil Drawing', 'This sunset symbolizes how quickly time passes, reminding us to cherish these moments and it also reminds us that at the end of the day, there’s still a beautiful ending despite of obstacles and problems that we encounter. \r\n\r\nThe sea itself represents the depths of our emotions—sometimes calm, sometimes stormy. It encourages us to think about the unpredictability of life and the feelings that lie beneath the surface.\r\n\r\nIn the foreground, the fresh red roses add a striking contrast. They symbolize love and passion, showing that even as sunsets fade, the emotions we feel can be deep and lasting. The roses remind us that while moments may pass, our connections and feelings remain important.\r\n\r\nTogether, the sunset and the roses create a powerful image that invites us to appreciate both the beauty of life’s fleeting moments and the lasting bonds we share. This artwork encourages us to reflect on the relationship between nature and our emotions, highlighting that love endures even as time moves on.', 0, 'heads.jpg', NULL, NULL, '', 'c', 'a'),
(22, 5, 'Miles Morales', 15999.00, '18x4', 'Pencil Drawing', 'This sunset symbolizes how quickly time passes, reminding us to cherish these moments and it also reminds us that at the end of the day, there’s still a beautiful ending despite of obstacles and problems that we encounter. \r\n\r\nThe sea itself represents the depths of our emotions—sometimes calm, sometimes stormy. It encourages us to think about the unpredictability of life and the feelings that lie beneath the surface.\r\n\r\nIn the foreground, the fresh red roses add a striking contrast. They symbolize love and passion, showing that even as sunsets fade, the emotions we feel can be deep and lasting. The roses remind us that while moments may pass, our connections and feelings remain important.\r\n\r\nTogether, the sunset and the roses create a powerful image that invites us to appreciate both the beauty of life’s fleeting moments and the lasting bonds we share. This artwork encourages us to reflect on the relationship between nature and our emotions, highlighting that love endures even as time moves on.', 1, 'miles.jpg', NULL, NULL, '', 'c', 'p'),
(44, 5, 'FourHead', 1000.00, '10cm x 5cm', 'Pencil Drawing', 'basta amo na yan', 0, 'heads.jpg', NULL, NULL, '', 'f', 'a'),
(45, 5, 'adsda', 123123.00, '10cm x 5cm', 'Acrylic', 'evwevwefwefwefesf', 1, 'Ladyermine.jpg', NULL, NULL, '', 'f', 'p'),
(47, 5, 'Screammmmm', 99991.00, '10cm x 5cm', 'Painting', 'opo bragz', 1, 'bragais.jpg', NULL, NULL, '', 'f', 'p'),
(48, 22, 'gogh', 1999.00, '1x1', 'digital', ' qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty  qwerty qwerty qwerty qwerty qwerty qwerty ', 1, 'dahyun.jpg', NULL, NULL, '', 'f', 'a'),
(50, 25, 'Lady', 1000.00, '12x15', 'painting', 'lady with animal', 0, 'Ladyermine.jpg', NULL, NULL, '', 'f', 'a'),
(51, 25, '4 SEASON', 100.00, '12x15', 'PAINTING', 'SEASONS', 0, 'salceda.jpg', '2024-12-10 16:11:00', '2024-12-10 16:16:00', '', 'b', 'a'),
(52, 25, 'Dahyun Kim', 999.00, '12x15', 'Tape Portrait', 'Kim Dahyun is an artist from the group Twice in South Korea. Kim Da-hyun of TWICE is reported to make her K-drama debut as the lead in the upcoming series “Love Me.” According to an exclusive report by Sports World, the singer has been offered the lead role in in the drama which is based on a Swedish series of the same name.', 1, 'dahyun.jpg', NULL, NULL, '', 'f', 'a'),
(53, 25, 'Four Head', 16000.00, '12x15', 'Pencil Drawing', 'This sunset symbolizes how quickly time passes, reminding us to cherish these moments and it also reminds us that at the end of the day, there’s still a beautiful ending despite of obstacles and problems that we encounter. The sea itself represents the depths of our emotions—sometimes calm, sometimes stormy. It encourages us to think about the unpredictability of life and the feelings that lie beneath the surface. In the foreground, the fresh red roses add a striking contrast. They symbolize love and passion, showing that even as sunsets fade, the emotions we feel can be deep and lasting. The roses remind us that while moments may pass, our connections and feelings remain important. Together, the sunset and the roses create a powerful image that invites us to appreciate both the beauty of life’s fleeting moments and the lasting bonds we share. This artwork encourages us to reflect on the relationship between nature and our emotions, highlighting that love endures even as time moves on.', 0, 'heads.jpg', NULL, NULL, '', 'f', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `shipping_rates_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `shipping_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_rates`
--

INSERT INTO `shipping_rates` (`shipping_rates_id`, `province`, `shipping_fee`) VALUES
(1, 'Abra', 100.00),
(2, 'Agusan del Norte', 200.00),
(3, 'Agusan del Sur', 200.00),
(4, 'Aklan', 150.00),
(5, 'Albay', 50.00),
(6, 'Antique', 150.00),
(7, 'Apayao', 150.00),
(8, 'Aurora', 150.00),
(9, 'Basilan', 150.00),
(10, 'Bataan', 150.00),
(11, 'Batanes', 150.00),
(12, 'Batangas', 150.00),
(13, 'Benguet', 150.00),
(14, 'Biliran', 150.00),
(15, 'Bohol', 150.00),
(16, 'Bukidnon', 150.00),
(17, 'Bulacan', 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `names` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `gcash_number` varchar(55) NOT NULL,
  `gcash_name` varchar(255) NOT NULL,
  `gcash_qr_code` varchar(255) NOT NULL,
  `street` varchar(55) NOT NULL,
  `barangay` varchar(55) NOT NULL,
  `municipality` varchar(55) NOT NULL,
  `province` varchar(55) NOT NULL,
  `zip_code` varchar(55) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `user_type` char(1) NOT NULL DEFAULT 'u' COMMENT 'a - admin\r\nu - user',
  `user_status` char(1) NOT NULL DEFAULT 'a' COMMENT 'a - active\r\nb - banned\r\ni - inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `names`, `email`, `password`, `phone_number`, `date_registered`, `gcash_number`, `gcash_name`, `gcash_qr_code`, `street`, `barangay`, `municipality`, `province`, `zip_code`, `image`, `user_type`, `user_status`) VALUES
(3, 'Admin', 'admin@gmail.com', 'password', '+639983514614', '2024-09-19 11:59:26', '09456823067', 'Kristine Zyra Mae Arevalo', 'cashG.jpg', '', '', 'Libon', 'Albay', '', 'kzma.jpg', 'a', 'i'),
(4, 'kristine zyra mae arevalo', 'arevalo2@gmail.com', '12345678', '+639983514613', '2024-09-19 11:59:51', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(5, 'Mark Erick Serrano', 'markserrano@gmail.com', 'pass123', '09456823067', '2024-09-19 12:00:10', '', '', '', '', '', 'Libon', 'Albay', '4507', 'meow.jpg', 'u', 'a'),
(6, 'madel jandra bautista', 'bautista3@gmail.com', '12345678', '+639983514621', '2024-09-19 17:05:32', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(7, 'user1', 'user1@gmail.com', '123456', '+639983514632', '2024-09-19 17:14:51', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(17, 'customer', 'customer@gmail.com', 'password', '+639983514622', '2024-09-19 18:03:15', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(18, 'user2', 'user2@gmail.com', 'password', '+639983514633', '2024-09-20 21:11:37', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(19, 'customer2', 'customer2@gmail.com', '123456', '+639983514665', '2024-09-23 05:11:28', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(20, 'admin two', 'admin2@gmail.com', 'admin2', '09456823057', '2024-12-08 18:44:59', '', '', '', '', '', '', '', '', 'default.jpg', 'a', 'a'),
(21, 'admin three', 'admin3@gmail.com', 'admin3', '09456823068', '2024-12-08 18:46:32', '', '', '', '', '', '', '', '', 'default.jpg', 'a', 'i'),
(22, 'sakit awts', 'sakit@gmail.com', '123456', '+639983514612', '2024-12-09 13:52:55', '', '', '', '', '', '', '', '', 'ERD - ENTERPRISE ARCHITECTURE.drawio (2).png', 'u', 'a'),
(23, 'hello test', 'test@gmail.com', '12345678', '+639983514612', '2024-12-09 14:11:55', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(24, 'one name', 'onename@gmail.com', 'onename', '+639983514612', '2024-12-09 14:33:20', '', '', '', '', '', '', '', '', 'CartCraft logo.png', 'u', 'a'),
(25, 'qwerty', 'qwery@gmail.com', 'qwerty', '1231535246', '2024-12-09 16:47:34', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(26, 'Kristine Zyra Mae Arevalo', 'kristine@gmail.com', 'kristine123', '+639983514612', '2024-12-10 14:51:20', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(27, 'Madel Jandra Bautista', 'madel@gmail.com', 'madel123', '+639983514613', '2024-12-10 14:53:01', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(28, 'mark erick serrano', 'markerickserrano@gamil.com', 'password123', '09456823068', '2024-12-10 15:20:25', '', '', '', '', '', '', '', '', 'default.jpg', 'u', 'a'),
(29, 'Mark Erick P. Serrano', 'erick@gmail.com', 'erick123', '+6309456823075', '2024-12-10 15:22:51', '', '', '', 'Zone 1', 'zone 1', 'Oas', 'Albay', '4505', 'default.jpg', 'u', 'a'),
(30, 'Admin 5', 'admin5@gmail.com', 'admin5', 'admin5', '2024-12-10 16:46:08', '', '', '', '', '', '', '', '', 'default.jpg', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_ibfk_2` (`user_id`),
  ADD KEY `cart_ibfk_1` (`product_id`);

--
-- Indexes for table `commission_orders`
--
ALTER TABLE `commission_orders`
  ADD PRIMARY KEY (`commission_order_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `artists_id` (`artists_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `artists_id` (`artists_id`);

--
-- Indexes for table `order_time`
--
ALTER TABLE `order_time`
  ADD PRIMARY KEY (`order_time_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD PRIMARY KEY (`shipping_rates_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `commission_orders`
--
ALTER TABLE `commission_orders`
  MODIFY `commission_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `order_time`
--
ALTER TABLE `order_time`
  MODIFY `order_time_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `commission_orders`
--
ALTER TABLE `commission_orders`
  ADD CONSTRAINT `commission_orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `commission_orders_ibfk_2` FOREIGN KEY (`artists_id`) REFERENCES `artists` (`artist_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`artists_id`) REFERENCES `artists` (`artist_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
