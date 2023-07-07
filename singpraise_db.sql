-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2023 at 02:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `singpraise_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(31) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='classification of songs';

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `users_id` int(11) NOT NULL,
  `songs_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='What people say';

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(127) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tracking who does what with which item';

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `songs_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(31) NOT NULL,
  `musician` varchar(31) NOT NULL,
  `title` varchar(63) NOT NULL,
  `status` varchar(31) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `song_items_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `song_items`
--

CREATE TABLE `song_items` (
  `song_items_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sound` mediumblob DEFAULT NULL,
  `picture` blob DEFAULT NULL,
  `video` longblob DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Song sheet (pdf)   and  Recording (optional)';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(31) NOT NULL,
  `contact` varchar(90) NOT NULL,
  `role` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Users      Singer (client)     Admin (manages the system)   ';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD UNIQUE KEY `id` (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`),
  ADD UNIQUE KEY `id` (`comments_id`),
  ADD UNIQUE KEY `user_id` (`users_id`),
  ADD KEY `song_id` (`songs_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`history_id`),
  ADD UNIQUE KEY `user_id` (`users_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`categories_id`,`song_items_id`),
  ADD UNIQUE KEY `id` (`songs_id`);

--
-- Indexes for table `song_items`
--
ALTER TABLE `song_items`
  ADD PRIMARY KEY (`song_items_id`),
  ADD UNIQUE KEY `id` (`song_items_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `id` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `songs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `song_items`
--
ALTER TABLE `song_items`
  MODIFY `song_items_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
