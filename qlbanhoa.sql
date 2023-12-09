-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2014 at 03:22 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thine`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE IF NOT EXISTS `hoa` (
  `maHoa` int(11) NOT NULL AUTO_INCREMENT,
  `maLoai` int(11) NOT NULL,
  `tenHoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `giaBan` int(11) NOT NULL,
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maHoa`),
  KEY `maLoai` (`maLoai`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `hoa`
--

INSERT INTO `hoa` (`maHoa`, `maLoai`, `tenHoa`, `giaBan`, `hinh`) VALUES
(1, 1, 'Đón xuân', 50000, 'xanh_duong.jpg'),
(2, 1, 'Hồn nhiên', 60000, 'Tuoi_Sang.png'),
(3, 1, 'Tím thuỷ chung', 45000, 'Tuoi_Hong.png'),
(4, 1, 'Nét duyên tím', 40000, 'Lush_bright.png'),
(5, 1, 'Cùng khoe sắc', 70000, 'HongTham.png'),
(6, 1, 'Trắng thơ ngây', 65000, 'HongNhung.png'),
(7, 2, 'Dây tơ hồng', 250000, 'Hong_Hoa.png'),
(8, 2, 'Cầu thuỷ tinh', 220000, 'cam-hoa-hongdep5.jpg'),
(9, 2, 'Duyên thầm', 260000, 'hoa-20-10.jpg'),
(10, 2, 'Đâm chồi nảy lộc', 180000, 'hoa20_10.jpg'),
(11, 2, 'Hoà quyện', 270000, 'Galaxy.png'),
(12, 2, 'Nồng nàn', 210000, 'ChieuTim.png'),
(13, 3, 'Long trip', 85000, 'cam-hoa-hongdep4.jpg'),
(14, 3, 'Beautiful life', 100000, 'cam-hoa-hongdep2.jpg'),
(15, 3, 'Morning Sun', 75000, 'cam-hoa-hong17.jpg'),
(16, 3, 'Pretty Bloom', 65000, 'cam-hoa-hong13.jpg'),
(17, 3, 'Red Rose', 45000, 'cam-hoa-hong8.jpg'),
(18, 4, 'Vấn vương', 150000, 'cam-hoa-hong4.jpg'),
(19, 4, 'Nắng nhẹ nhàng', 50000, 'cam-hoa-hong1.jpg'),
(20, 4, 'Thanh tao', 120000, 'Galaxy.png'),
(21, 4, 'Tinh khiết', 110000, 'hoa20_10.jpg'),
(22, 4, 'Mùa xuân chín', 150000, 'cam-hoa-hongdep4.jpg'),
(23, 4, 'Rực rỡ nắng vàng', 75000, 'cam-hoa-hong17.jpg'),
(24, 3, 'Love Candy', 95000, 'ChieuTim.png'),
(25, 2, 'Happy Wedding', 210000, 'cam-hoa-hong13.jpg'),
(26, 1, 'Cúc nhiệt đới', 150000, 'HongTham.png'),
(27, 1, 'Hoa cúc', 123456, 'cam-hoa-hong1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE IF NOT EXISTS `loai` (
  `maLoai` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maLoai`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maLoai`, `TenLoai`) VALUES
(1, 'Hoa tình yêu'),
(2, 'Hoa cưới'),
(3, 'Hoa sinh nhật'),
(4, 'Hoa văn phòng'),
(5, 'Hoa tươi bó'),
(6, 'Hoa tươi giỏ'),
(7, 'Hoa khai trương');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `hoa_ibfk_1` FOREIGN KEY (`maLoai`) REFERENCES `loai` (`maLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
