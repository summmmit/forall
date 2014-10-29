-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2014 at 09:17 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cover` text NOT NULL,
  `description` text NOT NULL,
  `createdat` datetime NOT NULL,
  `updatedat` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `cover`, `description`, `createdat`, `updatedat`, `userid`) VALUES
(7, 'sumit', '', 'all my pics', '2014-06-11 02:26:02', '2014-06-11 02:26:02', 9),
(8, 'deep', '', 'all of her pictures', '2014-06-11 03:25:42', '2014-06-11 03:25:42', 9);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'standard_user', ''),
(2, 'Administrator', '{"admin": 1}'),
(3, 'Moderator', '{"moderator" : 1}');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` text NOT NULL,
  `alt` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdat` datetime NOT NULL,
  `updatedat` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `picture`, `alt`, `title`, `description`, `createdat`, `updatedat`, `userid`, `albumid`) VALUES
(75, '5397a6bb602101.33969662.bmp', 'my', 'cake baked', 'my birthday cake', '2014-06-11 02:45:47', '2014-06-11 03:40:58', 9, 7),
(76, '5397a765d2a189.17874127.bmp', '', '', '', '2014-06-11 02:48:37', '2014-06-11 02:48:37', 9, 7),
(77, '5397a788273e80.61286074.jpg', '', '', '', '2014-06-11 02:49:12', '2014-06-11 02:49:12', 9, 7),
(78, '5397b137f1f9c9.09740687.jpg', 'none', 'noe at all', 'none at all', '2014-06-11 03:30:31', '2014-06-12 10:37:38', 9, 8),
(79, '5399632c4f7245.03806912.bmp', '', '', '', '2014-06-12 10:22:04', '2014-06-12 10:22:04', 9, 7),
(80, '5399632c6953f9.80151162.bmp', '', '', '', '2014-06-12 10:22:04', '2014-06-12 10:22:04', 9, 7),
(81, '539964940b52d6.49799129.bmp', 'none', 'key pic', 'key pics', '2014-06-12 10:28:04', '2014-06-12 10:31:38', 9, 7),
(82, '539964c19ead50.15380185.bmp', '', '', '', '2014-06-12 10:28:49', '2014-06-12 10:28:49', 9, 7),
(83, '5399651c07a478.05208382.bmp', '', '', '', '2014-06-12 10:30:20', '2014-06-12 10:30:20', 9, 7),
(84, '539965a7303585.35148943.bmp', '', '', '', '2014-06-12 10:32:39', '2014-06-12 10:32:39', 9, 8),
(85, '539965a7332355.28176800.bmp', '', '', '', '2014-06-12 10:32:39', '2014-06-12 10:32:39', 9, 8),
(86, '539965b00c21d4.49625422.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(87, '539965b012b909.10728436.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(88, '539965b0137478.82477290.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(89, '539965b01623d1.69074813.bmp', 'none', 'earth pic', 'none at all', '2014-06-12 10:32:48', '2014-06-12 10:38:06', 9, 8),
(90, '539965b016df41.16725244.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(91, '539965b018d337.09200265.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(92, '539965b0198ea9.05899602.bmp', 'nones s', 'cap pic', 'all the things u need', '2014-06-12 10:32:48', '2014-06-12 10:34:51', 9, 8),
(93, '539965b01a8897.08707060.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options` varchar(50) NOT NULL,
  `can_show` tinyint(1) NOT NULL,
  `que_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `que_id` (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `options`, `can_show`, `que_id`, `created_at`) VALUES
(5, 'INC', 1, 2, '2014-10-16 00:00:00'),
(6, 'BJP', 1, 2, '2014-10-16 00:00:00'),
(7, 'GOOD', 1, 3, '2014-10-17 00:00:00'),
(8, 'Bad', 1, 3, '2014-10-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `can_show` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quest`, `start_date`, `end_date`, `can_show`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2, 'which party will you vote this time ??', '2014-10-15 00:00:00', '2014-10-17 00:00:00', 1, 0, '2014-10-16 00:00:00', '0000-00-00 00:00:00'),
(3, 'Whats your opinion ??', '2014-10-15 00:00:00', '2014-10-18 00:00:00', 1, 0, '2014-10-16 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `can_login` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `can_login`, `updated_at`, `created_at`, `group`) VALUES
(12, 'sumit', '7670e716cfef815c5c3bd2288a6988ed2c009f54', '`x±ÙäÝ-Î<šNßÚÖïl¾K¸Š‡vÞûÜmâ', 'Sumit Singh', 1, '0000-00-00 00:00:00', '2014-10-14 09:22:43', 3),
(13, 'monu', '2946007dfacaf087f5776eb6a3ddaea35ed0d54e', 'ûLÝÃ¾ëÆ C ƒl°u°Vòÿ±˜ð¾ŽÙ', 'Monu Kumar', 0, '2014-10-21 03:33:01', '2014-10-21 03:33:01', 1),
(14, 'shivi', '1778178dba6ed8ca9f365ecdb89d9ff7845dbb07', '	ÚÀçP¦YŸ–ÍÄ‚¿o<^?ÕÑòßŸâM&¦‰ag', 'Shivi Singh', 1, '2014-10-21 03:34:09', '2014-10-21 03:34:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(5, 5, '1f47f5b274e28498a2c5a9bc353060912c046404'),
(6, 6, 'ae82bd5a4658f823ba864ab3ad341d4d472496ca'),
(7, 9, '228670928dd66f45d708f49a4d553a0279d849ee'),
(8, 10, '376bf4a6c3391143d0298d9cb62c3088776642ef'),
(9, 12, 'dbdc5a9b2d9b883fb2e88006f4bf9952c1078293'),
(10, 11, 'd63368f7efb22c891261ea4a0b76bae103ecfd95'),
(11, 14, '152f4f07793693898ff561f70f5617ffc624547a');

-- --------------------------------------------------------

--
-- Table structure for table `users_to_ques`
--

CREATE TABLE IF NOT EXISTS `users_to_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `vote_cast_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_to_ques`
--

INSERT INTO `users_to_ques` (`id`, `question_id`, `users_id`, `option_id`, `vote_cast_date`) VALUES
(1, 2, 11, 5, '2014-10-17 10:10:00'),
(2, 3, 11, 7, '2014-10-17 10:10:00'),
(3, 2, 12, 5, '2014-10-20 04:10:00'),
(4, 3, 12, 7, '2014-10-20 04:10:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`que_id`) REFERENCES `question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
