-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2014 at 12:54 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `poshtibani`
--
CREATE DATABASE IF NOT EXISTS `poshtibani` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `poshtibani`;

-- --------------------------------------------------------

--
-- Table structure for table `t00_main_posh`
--

CREATE TABLE IF NOT EXISTS `t00_main_posh` (
  `C0001_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `C0002_Sh_Ghabz` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `C0003_Section` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'این کالا مربوط به چه بخشی است',
  PRIMARY KEY (`C0002_Sh_Ghabz`),
  KEY `C0001_Id` (`C0001_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='این قسمت مربوط به تولید شماره قبض می باشد' AUTO_INCREMENT=226 ;

--
-- Dumping data for table `t00_main_posh`
--

INSERT INTO `t00_main_posh` (`C0001_Id`, `C0002_Sh_Ghabz`, `C0003_Section`) VALUES
(222, '01923744', 'بخش مربوطه'),
(223, '019237445', 'بخش مربوطه'),
(224, '0192374453', 'بخش مربوطه'),
(220, '33234', '234'),
(221, '66543', '234234'),
(215, '88', ''),
(218, '88888', ''),
(214, 'dfsdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `t01_progress`
--

CREATE TABLE IF NOT EXISTS `t01_progress` (
  `C0101_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `C0102_Sh_Ghabz` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `C0103_Status` int(10) DEFAULT NULL,
  `C0104_Date` datetime DEFAULT NULL,
  `C0105_TarikhShamsi` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `C0106_Saat` varchar(10) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `C0107_Comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  PRIMARY KEY (`C0101_Id`),
  KEY `FK_t01_progress_t00_main_posh` (`C0102_Sh_Ghabz`),
  KEY `FK_t01_progress_t04_status` (`C0103_Status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=130 ;

--
-- Dumping data for table `t01_progress`
--

INSERT INTO `t01_progress` (`C0101_Id`, `C0102_Sh_Ghabz`, `C0103_Status`, `C0104_Date`, `C0105_TarikhShamsi`, `C0106_Saat`, `C0107_Comment`) VALUES
(120, 'dfsdf', 10, '2014-04-14 13:35:50', NULL, NULL, NULL),
(121, '88', 10, '2014-04-14 13:37:34', NULL, NULL, NULL),
(123, '88888', 10, '2014-04-14 14:49:29', NULL, NULL, NULL),
(125, '33234', 10, '2014-04-14 15:29:36', NULL, NULL, NULL),
(126, '66543', 10, '2014-04-14 15:38:59', NULL, NULL, NULL),
(127, '01923744', 10, '2014-04-14 15:51:16', NULL, NULL, NULL),
(128, '019237445', 10, '2014-04-14 15:51:16', NULL, NULL, NULL),
(129, '0192374453', 10, '2014-04-14 15:51:16', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t02_malek_kala_voroodi`
--

CREATE TABLE IF NOT EXISTS `t02_malek_kala_voroodi` (
  `c0201_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c0202_sh_ghabz` varchar(50) COLLATE latin1_general_ci DEFAULT '0',
  `c0203_namemalek` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0204_shahr` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0205_address` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0206_tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0207_comment` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  PRIMARY KEY (`c0201_id`),
  KEY `FK_t02_malek_kala_voroodi_t00_main_posh` (`c0202_sh_ghabz`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t02_malek_kala_voroodi`
--

INSERT INTO `t02_malek_kala_voroodi` (`c0201_id`, `c0202_sh_ghabz`, `c0203_namemalek`, `c0204_shahr`, `c0205_address`, `c0206_tel`, `c0207_comment`) VALUES
(1, '33234', 'Ù†Ø§Ù… Ù…Ø§Ù„Ú©', 'Ø´Ù‡Ø±', 'Ø¢Ø¯Ø±Ø³', 'ØªÙ„ÙÙ†', 'ØªÙˆØ¶ÛŒØ­Ø§Øª'),
(2, '66543', 'نام مالک', '', '', '', ''),
(3, '01923744', 'نام مالک', 'شهر', 'آدرس', 'تلفن', 'توضیحات'),
(4, '019237445', 'نام مالک', 'شهر', 'آدرس', 'تلفن', 'توضیحات'),
(5, '0192374453', 'نام مالک', 'شهر', 'آدرس', 'تلفن', 'توضیحات');

-- --------------------------------------------------------

--
-- Table structure for table `t03_kala_voroodi`
--

CREATE TABLE IF NOT EXISTS `t03_kala_voroodi` (
  `c0301_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c0302_sh_ghabz` varchar(50) COLLATE latin1_general_ci DEFAULT '0',
  `c0303_name_kala` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0304_serial` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0305_pro_zaheri` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0306_accerssories` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0307_comment` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  PRIMARY KEY (`c0301_id`),
  KEY `FK_t03_kala_voroodi_t00_main_posh` (`c0302_sh_ghabz`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t03_kala_voroodi`
--

INSERT INTO `t03_kala_voroodi` (`c0301_id`, `c0302_sh_ghabz`, `c0303_name_kala`, `c0304_serial`, `c0305_pro_zaheri`, `c0306_accerssories`, `c0307_comment`) VALUES
(1, '019237445', '??? ????', '????? ?????', '?????? ?????', '???????', '???????'),
(2, '0192374453', 'نام کالا', 'سریال نامبر', 'مشخصات ظاهری', 'متعلقات', 'توضیحات');

-- --------------------------------------------------------

--
-- Table structure for table `t04_status`
--

CREATE TABLE IF NOT EXISTS `t04_status` (
  `c0401_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c0402_name_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0403_number_status` int(11) NOT NULL,
  `c0404_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  `c0405_comment` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT '0',
  PRIMARY KEY (`c0403_number_status`),
  KEY `c0401_id` (`c0401_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t04_status`
--

INSERT INTO `t04_status` (`c0401_id`, `c0402_name_status`, `c0403_number_status`, `c0404_color`, `c0405_comment`) VALUES
(1, 'دریافت از مشتری', 10, 'ندارد', '0'),
(2, 'تحویل به مشتری', 20, 'دارد', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t05_kala`
--

CREATE TABLE IF NOT EXISTS `t05_kala` (
  `c0501_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c0502_name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `c0503_comment` varchar(250) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`c0502_name`),
  KEY `c0501_id` (`c0501_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t06_malek`
--

CREATE TABLE IF NOT EXISTS `t06_malek` (
  `c0601_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c0602_name_malek` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `c0603_shahr` varchar(50) COLLATE latin1_general_ci DEFAULT '0',
  `c0604_address` varchar(250) COLLATE latin1_general_ci DEFAULT '0',
  `c0605_tel` varchar(100) COLLATE latin1_general_ci DEFAULT '0',
  `c0606_comment` varchar(250) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`c0602_name_malek`),
  KEY `c0601_id` (`c0601_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t01_progress`
--
ALTER TABLE `t01_progress`
  ADD CONSTRAINT `FK_t01_progress_t00_main_posh` FOREIGN KEY (`C0102_Sh_Ghabz`) REFERENCES `t00_main_posh` (`C0002_Sh_Ghabz`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t01_progress_t04_status` FOREIGN KEY (`C0103_Status`) REFERENCES `t04_status` (`c0403_number_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t02_malek_kala_voroodi`
--
ALTER TABLE `t02_malek_kala_voroodi`
  ADD CONSTRAINT `FK_t02_malek_kala_voroodi_t00_main_posh` FOREIGN KEY (`c0202_sh_ghabz`) REFERENCES `t00_main_posh` (`C0002_Sh_Ghabz`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t03_kala_voroodi`
--
ALTER TABLE `t03_kala_voroodi`
  ADD CONSTRAINT `FK_t03_kala_voroodi_t00_main_posh` FOREIGN KEY (`c0302_sh_ghabz`) REFERENCES `t00_main_posh` (`C0002_Sh_Ghabz`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
