-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2022 at 03:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country_id`, `currency_name`, `code`, `symbol`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Afghan afghani', 'AFN', '؋', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(2, 2, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(3, 3, 'Albanian lek', 'ALL', 'Lek', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(4, 4, 'Algerian dinar', 'DZD', 'دج', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(5, 5, 'US Dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(6, 6, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(7, 7, 'Angolan kwanza', 'AOA', 'Kz', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(8, 8, 'East Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(9, 9, 'Antarctican dollar', 'AAD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(10, 10, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(11, 11, 'Argentine peso', 'ARS', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(12, 12, 'Armenian dram', 'AMD', '֏', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(13, 13, 'Aruban florin', 'AWG', 'ƒ', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(14, 14, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(15, 15, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(16, 16, 'Azerbaijani manat', 'AZN', 'm', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(17, 17, 'Bahamian dollar', 'BSD', 'B$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(18, 18, 'Bahraini dinar', 'BHD', '.د.ب', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(19, 19, 'Bangladeshi taka', 'BDT', '৳', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(20, 20, 'Barbadian dollar', 'BBD', 'Bds$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(21, 21, 'Belarusian ruble', 'BYN', 'Br', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(22, 22, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(23, 23, 'Belize dollar', 'BZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(24, 24, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(25, 25, 'Bermudian dollar', 'BMD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(26, 26, 'Bhutanese ngultrum', 'BTN', 'Nu.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(27, 27, 'Bolivian boliviano', 'BOB', 'Bs.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(28, 28, 'Bosnia and Herzegovina convertible mark', 'BAM', 'KM', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(29, 29, 'Botswana pula', 'BWP', 'P', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(30, 30, 'Norwegian Krone', 'NOK', 'kr', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(31, 31, 'Brazilian real', 'BRL', 'R$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(32, 32, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(33, 33, 'Brunei dollar', 'BND', 'B$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(34, 34, 'Bulgarian lev', 'BGN', 'Лв.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(35, 35, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(36, 36, 'Burundian franc', 'BIF', 'FBu', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(37, 37, 'Cambodian riel', 'KHR', 'KHR', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(38, 38, 'Central African CFA franc', 'XAF', 'FCFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(39, 39, 'Canadian dollar', 'CAD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(40, 40, 'Cape Verdean escudo', 'CVE', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(41, 41, 'Cayman Islands dollar', 'KYD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(42, 42, 'Central African CFA franc', 'XAF', 'FCFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(43, 43, 'Central African CFA franc', 'XAF', 'FCFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(44, 44, 'Chilean peso', 'CLP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(45, 45, 'Chinese yuan', 'CNY', '¥', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(46, 46, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(47, 47, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(48, 48, 'Colombian peso', 'COP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(49, 49, 'Comorian franc', 'KMF', 'CF', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(50, 50, 'Central African CFA franc', 'XAF', 'FC', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(51, 51, 'Congolese Franc', 'CDF', 'FC', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(52, 52, 'Cook Islands dollar', 'NZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(53, 53, 'Costa Rican colón', 'CRC', '₡', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(54, 54, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(55, 55, 'Croatian kuna', 'HRK', 'kn', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(56, 56, 'Cuban peso', 'CUP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(57, 57, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(58, 58, 'Czech koruna', 'CZK', 'Kč', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(59, 59, 'Danish krone', 'DKK', 'Kr.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(60, 60, 'Djiboutian franc', 'DJF', 'Fdj', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(61, 61, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(62, 62, 'Dominican peso', 'DOP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(63, 63, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(64, 64, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(65, 65, 'Egyptian pound', 'EGP', 'ج.م', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(66, 66, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(67, 67, 'Central African CFA franc', 'XAF', 'FCFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(68, 68, 'Eritrean nakfa', 'ERN', 'Nfk', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(69, 69, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(70, 70, 'Ethiopian birr', 'ETB', 'Nkf', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(71, 71, 'Falkland Islands pound', 'FKP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(72, 72, 'Danish krone', 'DKK', 'Kr.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(73, 73, 'Fijian dollar', 'FJD', 'FJ$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(74, 74, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(75, 75, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(76, 76, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(77, 77, 'CFP franc', 'XPF', '₣', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(78, 78, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(79, 79, 'Central African CFA franc', 'XAF', 'FCFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(80, 80, 'Gambian dalasi', 'GMD', 'D', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(81, 81, 'Georgian lari', 'GEL', 'ლ', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(82, 82, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(83, 83, 'Ghanaian cedi', 'GHS', 'GH₵', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(84, 84, 'Gibraltar pound', 'GIP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(85, 85, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(86, 86, 'Danish krone', 'DKK', 'Kr.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(87, 87, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(88, 88, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(89, 89, 'US Dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(90, 90, 'Guatemalan quetzal', 'GTQ', 'Q', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(91, 91, 'British pound', 'GBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(92, 92, 'Guinean franc', 'GNF', 'FG', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(93, 93, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(94, 94, 'Guyanese dollar', 'GYD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(95, 95, 'Haitian gourde', 'HTG', 'G', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(96, 96, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(97, 97, 'Honduran lempira', 'HNL', 'L', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(98, 98, 'Hong Kong dollar', 'HKD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(99, 99, 'Hungarian forint', 'HUF', 'Ft', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(100, 100, 'Icelandic króna', 'ISK', 'kr', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(101, 101, 'Indian rupee', 'INR', '₹', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(102, 102, 'Indonesian rupiah', 'IDR', 'Rp', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(103, 103, 'Iranian rial', 'IRR', '﷼', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(104, 104, 'Iraqi dinar', 'IQD', 'د.ع', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(105, 105, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(106, 106, 'Israeli new shekel', 'ILS', '₪', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(107, 107, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(108, 108, 'Jamaican dollar', 'JMD', 'J$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(109, 109, 'Japanese yen', 'JPY', '¥', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(110, 110, 'British pound', 'GBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(111, 111, 'Jordanian dinar', 'JOD', 'ا.د', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(112, 112, 'Kazakhstani tenge', 'KZT', 'лв', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(113, 113, 'Kenyan shilling', 'KES', 'KSh', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(114, 114, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(115, 115, 'North Korean Won', 'KPW', '₩', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(116, 116, 'Won', 'KRW', '₩', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(117, 117, 'Kuwaiti dinar', 'KWD', 'ك.د', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(118, 118, 'Kyrgyzstani som', 'KGS', 'лв', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(119, 119, 'Lao kip', 'LAK', '₭', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(120, 120, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(121, 121, 'Lebanese pound', 'LBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(122, 122, 'Lesotho loti', 'LSL', 'L', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(123, 123, 'Liberian dollar', 'LRD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(124, 124, 'Libyan dinar', 'LYD', 'د.ل', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(125, 125, 'Swiss franc', 'CHF', 'CHf', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(126, 126, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(127, 127, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(128, 128, 'Macanese pataca', 'MOP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(129, 129, 'Denar', 'MKD', 'ден', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(130, 130, 'Malagasy ariary', 'MGA', 'Ar', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(131, 131, 'Malawian kwacha', 'MWK', 'MK', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(132, 132, 'Malaysian ringgit', 'MYR', 'RM', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(133, 133, 'Maldivian rufiyaa', 'MVR', 'Rf', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(134, 134, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(135, 135, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(136, 136, 'British pound', 'GBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(137, 137, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(138, 138, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(139, 139, 'Mauritanian ouguiya', 'MRO', 'MRU', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(140, 140, 'Mauritian rupee', 'MUR', '₨', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(141, 141, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(142, 142, 'Mexican peso', 'MXN', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(143, 143, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(144, 144, 'Moldovan leu', 'MDL', 'L', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(145, 145, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(146, 146, 'Mongolian tögrög', 'MNT', '₮', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(147, 147, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(148, 148, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(149, 149, 'Moroccan dirham', 'MAD', 'DH', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(150, 150, 'Mozambican metical', 'MZN', 'MT', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(151, 151, 'Burmese kyat', 'MMK', 'K', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(152, 152, 'Namibian dollar', 'NAD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(153, 153, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(154, 154, 'Nepalese rupee', 'NPR', '₨', 1, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(155, 155, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(156, 156, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(157, 157, 'CFP franc', 'XPF', '₣', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(158, 158, 'New Zealand dollar', 'NZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(159, 159, 'Nicaraguan córdoba', 'NIO', 'C$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(160, 160, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(161, 161, 'Nigerian naira', 'NGN', '₦', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(162, 162, 'New Zealand dollar', 'NZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(163, 163, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(164, 164, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(165, 165, 'Norwegian krone', 'NOK', 'kr', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(166, 166, 'Omani rial', 'OMR', '.ع.ر', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(167, 167, 'Pakistani rupee', 'PKR', '₨', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(168, 168, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(169, 169, 'Israeli new shekel', 'ILS', '₪', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(170, 170, 'Panamanian balboa', 'PAB', 'B/.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(171, 171, 'Papua New Guinean kina', 'PGK', 'K', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(172, 172, 'Paraguayan guarani', 'PYG', '₲', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(173, 173, 'Peruvian sol', 'PEN', 'S/.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(174, 174, 'Philippine peso', 'PHP', '₱', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(175, 175, 'New Zealand dollar', 'NZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(176, 176, 'Polish złoty', 'PLN', 'zł', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(177, 177, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(178, 178, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(179, 179, 'Qatari riyal', 'QAR', 'ق.ر', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(180, 180, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(181, 181, 'Romanian leu', 'RON', 'lei', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(182, 182, 'Russian ruble', 'RUB', '₽', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(183, 183, 'Rwandan franc', 'RWF', 'FRw', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(184, 184, 'Saint Helena pound', 'SHP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(185, 185, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(186, 186, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(187, 187, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(188, 188, 'Eastern Caribbean dollar', 'XCD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(189, 189, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(190, 190, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(191, 191, 'Samoan tālā', 'WST', 'SAT', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(192, 192, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(193, 193, 'Dobra', 'STD', 'Db', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(194, 194, 'Saudi riyal', 'SAR', '﷼', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(195, 195, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(196, 196, 'Serbian dinar', 'RSD', 'din', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(197, 197, 'Seychellois rupee', 'SCR', 'SRe', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(198, 198, 'Sierra Leonean leone', 'SLL', 'Le', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(199, 199, 'Singapore dollar', 'SGD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(200, 200, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(201, 201, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(202, 202, 'Solomon Islands dollar', 'SBD', 'Si$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(203, 203, 'Somali shilling', 'SOS', 'Sh.so.', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(204, 204, 'South African rand', 'ZAR', 'R', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(205, 205, 'British pound', 'GBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(206, 206, 'South Sudanese pound', 'SSP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(207, 207, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(208, 208, 'Sri Lankan rupee', 'LKR', 'Rs', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(209, 209, 'Sudanese pound', 'SDG', '.س.ج', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(210, 210, 'Surinamese dollar', 'SRD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(211, 211, 'Norwegian Krone', 'NOK', 'kr', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(212, 212, 'Lilangeni', 'SZL', 'E', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(213, 213, 'Swedish krona', 'SEK', 'kr', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(214, 214, 'Swiss franc', 'CHF', 'CHf', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(215, 215, 'Syrian pound', 'SYP', 'LS', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(216, 216, 'New Taiwan dollar', 'TWD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(217, 217, 'Tajikistani somoni', 'TJS', 'SM', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(218, 218, 'Tanzanian shilling', 'TZS', 'TSh', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(219, 219, 'Thai baht', 'THB', '฿', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(220, 220, 'West African CFA franc', 'XOF', 'CFA', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(221, 221, 'New Zealand dollar', 'NZD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(222, 222, 'Tongan paʻanga', 'TOP', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(223, 223, 'Trinidad and Tobago dollar', 'TTD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(224, 224, 'Tunisian dinar', 'TND', 'ت.د', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(225, 225, 'Turkish lira', 'TRY', '₺', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(226, 226, 'Turkmenistan manat', 'TMT', 'T', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(227, 227, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(228, 228, 'Australian dollar', 'AUD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(229, 229, 'Ugandan shilling', 'UGX', 'USh', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(230, 230, 'Ukrainian hryvnia', 'UAH', '₴', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(231, 231, 'United Arab Emirates dirham', 'AED', 'إ.د', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(232, 232, 'British pound', 'GBP', '£', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(233, 233, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(234, 234, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(235, 235, 'Uruguayan peso', 'UYU', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(236, 236, 'Uzbekistani soʻm', 'UZS', 'лв', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(237, 237, 'Vanuatu vatu', 'VUV', 'VT', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(238, 238, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(239, 239, 'Bolívar', 'VEF', 'Bs', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(240, 240, 'Vietnamese đồng', 'VND', '₫', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(241, 241, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(242, 242, 'United States dollar', 'USD', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(243, 243, 'CFP franc', 'XPF', '₣', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(244, 244, 'Moroccan Dirham', 'MAD', 'MAD', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(245, 245, 'Yemeni rial', 'YER', '﷼', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(246, 246, 'Zambian kwacha', 'ZMW', 'ZK', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(247, 247, 'Zimbabwe Dollar', 'ZWL', '$', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(248, 248, 'Euro', 'EUR', '€', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(249, 249, 'Netherlands Antillean guilder', 'ANG', 'ƒ', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19'),
(250, 250, 'Netherlands Antillean guilder', 'ANG', 'ƒ', 0, '2022-03-26 17:19:19', '2022-03-26 17:19:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
