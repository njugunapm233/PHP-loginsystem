-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2021 at 06:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `token` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_email`, `auth_type`, `selector`, `token`, `created_at`, `expires_at`) VALUES
(69, 'njugunapm@gmail.com', 'account_verify', '3be036c2f4b219c4', '$2y$10$JBiOdE5GLtA3yfJThuxV.eTVgJvgKwo71SPxR9elD2AJQBwtB/o6G', '2021-06-19 14:34:36', '2021-06-19 15:34:36'),
(92, 'njugunapm233@gmail.com', 'account_verify', '457e58e60d3017be', '$2y$10$SirK/nLAuv1/Ccfq6suCOu/iywMoJTlzQkvJEZ5WOkm1xmvyKPNnW', '2021-06-19 16:58:06', '2021-06-19 17:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT '_defaultUser.png',
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `headline`, `password`, `gender`, `bio`, `profile_image`, `verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(0, 'supahot', 'Supahot', 'Soverysupahot', 'supa@hot.com', 'Headline of a supa hot user', '$2y$10$jhIOk4NVdBile/NwhAU9We/f0aoohx.cG9CizmIALRz0aCKJa5s6a', 'm', 'This is the bio of a supa hot user. Now i will say needless stuff to make this longer so this looks like a bio and not anything other than a bio.', '_defaultUser.png', NULL, '2021-06-19 11:25:42', '2021-06-19 11:25:42', NULL, NULL),
(32, 'Tech', 'Peter', 'Njuguna', 'njugunapm@gmail.com', '0702913043', '$2y$10$nnoiFB3y36Cl9ipFZKZjt.Mz6hhPWRhIIFmhG6GyYZoYqPnFaWCTO', 'm', 'erewrweerreer', '_defaultUser.png', NULL, '2021-06-19 14:34:36', '2021-06-19 15:09:18', NULL, '2021-06-19 15:09:18'),
(33, 'Doe', 'Peter', 'Njuguna', 'njugunapm233@gmail.com', '0702913043', '$2y$10$5FO25nnrUZCOgILTsFRGreiEA9L1st1xAu74MeFBHtnXp.igquXhC', 'm', 'owdihjwdwdj', '_defaultUser.png', NULL, '2021-06-19 16:46:30', '2021-06-19 16:58:04', NULL, '2021-06-19 16:58:04'),
(35, 'Jane', 'Peter', 'Njuguna', 'technophile@programmer.net', '0702913043', '$2y$10$3N6fuK78gsfG.qgapuduG.s1qAB4iuFR8wBFTgJVRwHYh94iuzVe6', 'f', 'I Love coding in javascript', '_defaultUser.png', '2021-06-20 07:52:29', '2021-06-20 07:42:48', '2021-06-20 08:51:12', NULL, '2021-06-20 08:50:51'),
(36, 'Technophile', 'Peter', 'Njuguna', 'njugunapm23@gmail.com', '0702913043', '$2y$10$WTbvGYqcPdxX46rJ3gIL5Ozu9h.3j1ZqhSx/.q7U6tX5iacQt08WC', 'f', 'I am a dev', '_defaultUser.png', '2021-06-20 08:22:39', '2021-06-20 08:19:58', '2021-06-21 16:14:22', NULL, '2021-06-21 16:14:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`,`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
