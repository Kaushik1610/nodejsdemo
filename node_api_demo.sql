-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2021 at 05:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_api_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` enum('y','n') NOT NULL DEFAULT 'y',
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `name`, `title`, `content`, `status`, `created`) VALUES
(1, 'Employee1', 'blog1', 'blog content', 'y', '2021-08-27 18:12:39'),
(2, 'Employee1', 'blog1', 'blog content', 'y', '2021-08-27 18:13:15'),
(3, 'Employee1', 'blog1', 'blog content', 'y', '2021-08-27 18:13:29'),
(4, 'Employee1', 'blog1', 'blog content', 'y', '2021-08-27 18:13:40'),
(5, 'Employee1', 'blog1', 'blog content', 'y', '2021-08-27 18:14:01'),
(6, 'Testing', 'testing title', 'testing content', 'y', '2021-08-27 19:59:33'),
(7, 'testing name', 'testing', 'testing desc', 'y', '2021-08-27 20:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `blog_id`, `comment`) VALUES
(1, 1, 'testing add comment'),
(2, 7, 'testing add comment'),
(3, 7, 'added new comment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_reply`
--

CREATE TABLE `tbl_comment_reply` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment_reply`
--

INSERT INTO `tbl_comment_reply` (`id`, `comment_id`, `comment`) VALUES
(1, 1, 'testing reply comment'),
(2, 1, 'testing reply comment'),
(3, 2, 'testing reply comment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
