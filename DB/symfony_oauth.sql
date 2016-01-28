-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2016 at 10:47 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `symfony_oauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesstoken`
--

CREATE TABLE IF NOT EXISTS `accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B39617F55F37A13B` (`token`),
  KEY `IDX_B39617F519EB6921` (`client_id`),
  KEY `IDX_B39617F5A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `accesstoken`
--

INSERT INTO `accesstoken` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(4, 4, 2, 'MzdlODM0NzY0MTIyZGMxZWJjZDM3OGRlMDkwZDQ3MjVkZWRiODlmOGVlMmY1NTk1ZDM0MTllOGUwNzRiNTM0MA', 1453882949, NULL),
(5, 4, 2, 'ZDRhNGFkOTM5NGNhY2JjMmE2YWQwZDhmM2YwZTA1YjQyYjkxNWQ5NGVmZWQxMGZhODc5ZjU1MGY1NTBiYjg3NQ', 1453883099, NULL),
(6, 4, 2, 'MDNhNzJmMTc0YmM2N2U0OTk3NWM1Y2IxNjI5MWY4OGExNmU5YzAwOGUzOTNjZDdkMjJhMmM4ZTU4Njk4NjAwNw', 1453883143, NULL),
(7, 4, 2, 'MTk0NTU2MzkyZWY4YzU0NzZhZjI0OWFkMjE4YjQ0NTMxN2Y2OGIwMzI0NzYwZWRiNTc0ZjZkOGQ0MTUyOTUxNw', 1453883175, NULL),
(8, 4, 2, 'ZTJkM2FmY2MzMzY5NDYwYWFhOTdkMmMxOWJhMDAzNjFlOTY0MjM0MWU5YmUxMWNjZjdhZTA1M2UzZmM0ZTg3OA', 1453975812, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authcode`
--

CREATE TABLE IF NOT EXISTS `authcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F1D7D1775F37A13B` (`token`),
  KEY `IDX_F1D7D17719EB6921` (`client_id`),
  KEY `IDX_F1D7D177A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`) VALUES
(4, '3agduqxp21mo400cc4ggs48oosw408o48cg4scggo00ccssc4c', 'a:0:{}', '2mv6t2j60wsg080wwoc00k88ss0cog40w4wsso4coog88cc8k8', 'a:3:{i:0;s:8:"password";i:1;s:13:"refresh_token";i:2;s:5:"token";}');

-- --------------------------------------------------------

--
-- Table structure for table `refreshtoken`
--

CREATE TABLE IF NOT EXISTS `refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7142379E5F37A13B` (`token`),
  KEY `IDX_7142379E19EB6921` (`client_id`),
  KEY `IDX_7142379EA76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `refreshtoken`
--

INSERT INTO `refreshtoken` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(4, 4, 2, 'NmY3YTc3NWQ4NTU3YmQ3MmU1MTQ5Y2I2NzM0MWE0N2IxZjM2YzU3NGQzNDU1YmQ5NzdhNThlOTM4ZDQ0MDA5OQ', 1455088949, NULL),
(5, 4, 2, 'OWQ4ZGZkNjUzNmFhMjE5ZThlODczNDliZmM5Y2IwYmJlMDM4ODQ4ZDM5ZjY3ZjYxMjVjNzIzMmEyMzE2MmI5MA', 1455089099, NULL),
(8, 4, 2, 'M2Q1ZGMzYWM1YjU3NDliODY1MmM0N2I3OTkyYWQyNTZhODdmZDJkMGIzOTRkMGNhNDM5MzEyMGFhYjBiYjZhYg', 1455181812, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `apiKey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2DA17977F85E0677` (`username`),
  UNIQUE KEY `UNIQ_2DA17977E7927C74` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `salt`, `password`, `is_active`, `apiKey`) VALUES
(2, 'sujit', 'sujit', '80cfd2b2a701a88ac1b9bbf1b3226f9d', 'bd67718282f288464371541233a51572921d0d6b', 1, 'key');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD CONSTRAINT `FK_B39617F519EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_B39617F5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `authcode`
--
ALTER TABLE `authcode`
  ADD CONSTRAINT `FK_F1D7D17719EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_F1D7D177A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `refreshtoken`
--
ALTER TABLE `refreshtoken`
  ADD CONSTRAINT `FK_7142379E19EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_7142379EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
