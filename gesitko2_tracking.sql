-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2017 at 11:12 AM
-- Server version: 5.6.33-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gesitko2_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `cf_config`
--

CREATE TABLE IF NOT EXISTS `cf_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fb` varchar(50) DEFAULT NULL,
  `tw` varchar(50) DEFAULT NULL,
  `ig` varchar(50) DEFAULT NULL,
  `send_mail` text,
  `alamat` text NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bbm` varchar(20) NOT NULL,
  `text_isi` text NOT NULL,
  `txt_success_order` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cf_config`
--

INSERT INTO `cf_config` (`id`, `phone`, `email`, `fb`, `tw`, `ig`, `send_mail`, `alamat`, `nama`, `bbm`, `text_isi`, `txt_success_order`) VALUES
(1, '085314345345', 'ordergesit@gmail.com', 'https://facebook.com/gesitkonveksi', 'https://twitter.com/gesitkonveksi', 'https://instagram.com/gesitkonveksi', '<p><img alt="" src="http://tracking.gesitkonveksi.co.id/Logo-Gesit.png" /></p>\r\n\r\n<p><strong>CV. NUANSA SANGGAR PRATAMA<br />\r\nGesit Konveksi</strong></p>\r\n\r\n<hr />\r\n<p>Berikut No. Resi pesanan anda<br />\r\nNo. Resi : {noresi}</p>\r\n\r\n<hr />\r\n<p><strong>Call Centre</strong><br />\r\nTelepon : 022 54419899</p>\r\n\r\n<p>Tlp/SMS/WA : 085314 345 345&nbsp;</p>\r\n\r\n<p>Tlp/SMS/WA : 085222213999</p>\r\n\r\n<p>Pin BB : D31BB2C6<br />\r\nEmail : ordergesit@gmail.com<br />\r\nWorkshop : Ruko Linggahara D11 Jalan Sadang-TKI&nbsp;Margahayu Tengah Kopo Bandung Jawabarat</p>\r\n', 'Komplek Sukamenak Indah RE 20 Kopo Bandung', 'Gesit Konveksi', 'qaz1234', '<p>CV. NUANSA SANGGAR PRATAMA<br />\r\nGesit Konveksi<br />\r\n<br />\r\n<strong>Call Centre</strong></p>\r\n\r\n<p>Telepon : 022 54419899</p>\r\n\r\n<p>Tlp/SMS/WA : 085314 345 345&nbsp;</p>\r\n\r\n<p>Tlp/SMS/WA : 085222213999</p>\r\n\r\n<p>Pin BB : D31BB2C6<br />\r\nEmail : ordergesit@gmail.com<br />\r\nWorkshop :Ruko Linggahara D11 Jalan Sadang TKI Kopo Bandung Jawabarat</p>\r\n', '<p>Data pesanan anda telah kami simpan, cek email anda untuk melihat pesanan.</p>\r\n\r\n<p>No. Resi Anda : <strong><span style="color:#FF0000">{NORESI}</span></strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ss_authtoken`
--

CREATE TABLE IF NOT EXISTS `ss_authtoken` (
  `id` int(11) NOT NULL,
  `resi` varchar(20) DEFAULT NULL,
  `auth_token` varchar(20) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `ss_category`
--

CREATE TABLE IF NOT EXISTS `ss_category` (
  `categorycode` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `createdby` varchar(30) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updatedby` varchar(30) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  PRIMARY KEY (`categorycode`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ss_category`
--

INSERT INTO `ss_category` (`categorycode`, `categoryname`, `parent`, `createdby`, `createddate`, `updatedby`, `updateddate`) VALUES
(1, 'Topi', 0, 'ADMIN', '2016-04-13', 'ADMIN', '2016-10-18'),
(2, 'Kaos', 0, 'ADMIN', '2016-04-13', 'ADMIN', '2016-10-18'),
(3, 'Kemeja', 0, 'ADMIN', '2016-04-13', 'ADMIN', '2016-10-18'),
(4, 'Rompi', 0, NULL, NULL, NULL, NULL),
(5, 'Goodie Bag', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_parameter`
--

CREATE TABLE IF NOT EXISTS `ss_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parametercode` varchar(20) DEFAULT NULL,
  `description` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ss_parameter`
--

INSERT INTO `ss_parameter` (`id`, `parametercode`, `description`) VALUES
(1, 'PROSES', 'Langkah-langkah proses pengerjaan');

-- --------------------------------------------------------

--
-- Table structure for table `ss_parametervalue`
--

CREATE TABLE IF NOT EXISTS `ss_parametervalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parametercode` int(11) DEFAULT NULL,
  `parametervaluecode` varchar(40) DEFAULT NULL,
  `parametervalue` text,
  `option` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parametercode` (`parametercode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ss_parametervalue`
--

INSERT INTO `ss_parametervalue` (`id`, `parametercode`, `parametervaluecode`, `parametervalue`, `option`) VALUES
(1, 1, '1', 'Survei & Beli Bahan', 'fa fa-search'),
(2, 1, '2', 'Cutting', 'fa fa-cut'),
(3, 1, '3', 'Aplikasi', 'fa fa-cogs'),
(4, 1, '4', 'Jait', 'fa fa-gear'),
(5, 1, '5', 'QC, Packing', 'fa fa-archive'),
(6, 1, '6', 'Distribusi', 'fa fa-truck'),
(7, 1, '7', 'Perbaikan', 'fa fa-recycle');

-- --------------------------------------------------------

--
-- Table structure for table `ss_products`
--

CREATE TABLE IF NOT EXISTS `ss_products` (
  `productcode` varchar(15) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `categorycode` int(11) NOT NULL,
  `suppliercode` varchar(15) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `sale` double NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `createdby` varchar(30) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updatedby` varchar(30) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  PRIMARY KEY (`productcode`) USING BTREE,
  KEY `categorycode` (`categorycode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ss_user`
--

CREATE TABLE IF NOT EXISTS `ss_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ss_user`
--

INSERT INTO `ss_user` (`id`, `username`, `password`) VALUES
(1, 'gesit', '*C142FB215B6E05B7C134B1A653AD4B455157FD79');

-- --------------------------------------------------------

--
-- Table structure for table `um_customer`
--

CREATE TABLE IF NOT EXISTS `um_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customercode` varchar(15) NOT NULL,
  `customername` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customercode` (`customercode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `um_order`
--

CREATE TABLE IF NOT EXISTS `um_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customercode` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telp` varchar(35) DEFAULT NULL,
  `lembaga` varchar(50) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `catatan` text,
  `total` double DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `wa` varchar(50) DEFAULT NULL,
  `bbm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productcode` (`jenis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `um_order`
--

INSERT INTO `um_order` (`id`, `customercode`, `nama`, `alamat`, `email`, `telp`, `lembaga`, `jenis`, `jumlah`, `catatan`, `total`, `deadline`, `wa`, `bbm`) VALUES
(21, 'CUS-270117-9P2F4', 'Ida Farida', 'Komplek Girimekar Permai Jl. Girimekar Indah III No. 77 RT 01 RW 20 Desa Girimekar Kec. Cilengkrang', 'hi.lewos@gmail.com', '082321807000', 'Lewos', '2', 85, 'Warna coklat tua seperti katalog Kenari no. 9\r\nPanjang 2 XL\r\nSisanya pendek \r\nM 16, L 43, XL 21, XXL 3\r\nDesain sudah dikirim ke email', NULL, '2017-02-03', '082321807000', ''),
(18, 'CUS-260117-U5X5H', 'Karlina Tristyaningsih', 'Jl. Garuda VI No. 04  RT.03 RW. XXV, Kel Palangkaraya, Kec Jekan Raya,  Kota Palangkaraya, Kode Pos 73112  ', 'karlina.tristyaningsih@kbkgold', '081347707067 / (0536) 3242116 / 324', 'PT. Kasongan Bumi Kencana (KBK)', '2', 50, 'Kaos Bulan K3, Jenis Polo T-Shirt Lacoste 20s, Combi 3 Warna (Hijau Tua, Abu Terang, Putih) as design, size Laki (XXL2, XL11, L25, M5) Perempuan(XL1, L2, M4). Total: 43 (Laki2) + 7 (Perempuan) = 50 Kaos', NULL, '2017-02-07', '081347707048 / Karlina Tristyaningsih', 'D00C5771'),
(23, 'CUS-280117-YWFX4', 'Elly Aisyah', 'Cafe frontera jl cut meutia no 81 margahayu bekasi timur', 'ellyjje@gmail.com', '081291995459', 'Cafe', '2', 50, 'Model poloshirt\r\nBahan lacoste pe\r\nWarna putih 25pcs\r\nWarna hitam 25pcs', NULL, '2017-02-10', '081291995459', ''),
(24, 'CUS-300117-DH0Q0', 'A FERRY GUNAWAN', 'Taman Cibaduyut IndahE196 Bandung 40239', 'aferrygunawan1@gmail.com', '0818641117', 'JPKP JABAR', '3', 100, 'DESAIN DI EMAIL', NULL, '2017-02-17', '081224641117', ''),
(25, 'CUS-300117-TY7Z', 'Nuryati (PT. Techno Prefab Indonesia)', 'JL. Techno I Block C3F Techno Park Industrial Estate, Kawasan Jababeka 3, Pasir Gombong, Cikarang Utara 17530', 'hrga@technoprefab.com', '085883388017', 'PT. TECHNO PREFAB INDONESIA', '2', 100, 'Logo dibelakang kaos diselesaikan belakangan, karena masih tunggu info sponsor.', NULL, '2017-02-10', '085883388017', '545F34B3');

-- --------------------------------------------------------

--
-- Table structure for table `um_progress`
--

CREATE TABLE IF NOT EXISTS `um_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noresi` varchar(20) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `statusdate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=69 ;

--
-- Dumping data for table `um_progress`
--

INSERT INTO `um_progress` (`id`, `noresi`, `progress`, `statusdate`) VALUES
(1, '0AF761YP', 1, '2016-10-31'),
(2, 'R31FBVF9', 1, '2016-11-03'),
(3, 'R31FBVF9', 2, '2016-11-03'),
(4, 'G3M240S2', 1, '2016-11-07'),
(5, 'G3M240S2', 2, '2016-11-07'),
(6, 'FD8JL3JX', 1, '2016-11-07'),
(7, 'FD8JL3JX', 2, '2016-11-07'),
(8, 'FD8JL3JX', 6, '2016-11-07'),
(9, '1IZ2W4NR', 1, '2017-01-23'),
(10, 'ATYHY4JR', 5, '2016-11-07'),
(11, 'ATYHY4JR', 4, '2016-11-07'),
(47, 'H1W2GDH4', 1, '2017-01-27'),
(13, 'ATYHY4JR', 6, '2016-11-11'),
(14, 'H48QKS38', 1, '2016-11-12'),
(15, 'H48QKS38', 2, '2016-11-12'),
(16, 'H48QKS38', 3, '2016-11-12'),
(17, 'H48QKS38', 4, '2016-11-12'),
(18, 'JY7DSJA', 1, '2016-12-06'),
(19, 'JY7DSJA', 2, '2016-12-07'),
(32, 'GO633CTF', 4, '2016-12-27'),
(24, 'GO633CTF', 1, '2016-12-23'),
(31, 'GO633CTF', 3, '2016-12-26'),
(30, 'GO633CTF', 2, '2016-12-24'),
(28, '0AF761YP', 2, '2016-12-29'),
(33, 'GO633CTF', 5, '2016-12-29'),
(34, 'GO633CTF', 6, '2016-12-31'),
(35, '0AF761YP', 3, '2016-12-23'),
(36, '0AF761YP', 4, '2016-12-29'),
(45, 'LDP39CQ', 1, '2017-01-16'),
(43, 'OR9JOY5G', 1, '2017-01-02'),
(42, '0AF761YP', 5, '2016-12-29'),
(46, 'LDP39CQ', 2, '2017-01-16'),
(48, 'XFGFKUXV', 1, '2017-01-30'),
(49, 'VXOCW84L', 1, '2017-01-31'),
(50, 'Z3VEROXR', 1, '2017-02-01'),
(51, 'H1W2GDH4', 2, '2017-02-02'),
(52, 'XFGFKUXV', 2, '2017-02-01'),
(53, 'VXOCW84L', 2, '2017-02-01'),
(54, 'VXOCW84L', 3, '2017-02-01'),
(55, 'XFGFKUXV', 3, '2017-02-01'),
(56, 'Z3VEROXR', 2, '2017-02-02'),
(57, 'XFGFKUXV', 4, '2017-02-02'),
(58, 'Z3VEROXR', 3, '2017-02-11'),
(59, 'XFGFKUXV', 5, '2017-02-04'),
(60, 'VXOCW84L', 4, '2017-02-04'),
(61, 'H1W2GDH4', 3, '2017-02-04'),
(62, 'XFGFKUXV', 6, '2017-02-06'),
(63, 'VXOCW84L', 5, '2017-02-09'),
(64, 'H1W2GDH4', 4, '2017-02-08'),
(65, 'H1W2GDH4', 6, '2017-02-11'),
(66, 'VXOCW84L', 6, '2017-02-11'),
(67, 'Z3VEROXR', 5, '2017-02-14'),
(68, 'Z3VEROXR', 6, '2017-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `um_tracking`
--

CREATE TABLE IF NOT EXISTS `um_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noresi` varchar(20) NOT NULL,
  `transactioncode` varchar(15) NOT NULL,
  `progress` int(11) NOT NULL,
  `customercode` varchar(20) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `statusdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactioncode` (`transactioncode`),
  KEY `customercode` (`customercode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `um_tracking`
--

INSERT INTO `um_tracking` (`id`, `noresi`, `transactioncode`, `progress`, `customercode`, `createddate`, `status`, `statusdate`) VALUES
(24, '2PSXOCDL', '{1234}', 0, 'CUS-300117-DH0Q0', '2017-01-30', 0, NULL),
(25, 'Z3VEROXR', '{1234}', 6, 'CUS-300117-TY7Z', '2017-01-30', 0, '2017-02-16'),
(21, 'XFGFKUXV', '{1234}', 6, 'CUS-270117-9P2F4', '2017-01-27', 0, '2017-02-04'),
(18, 'H1W2GDH4', '{1234}', 6, 'CUS-260117-U5X5H', '2017-01-26', 0, '2017-02-09'),
(23, 'VXOCW84L', '{1234}', 6, 'CUS-280117-YWFX4', '2017-01-28', 0, '2017-02-11');

--
-- Triggers `um_tracking`
--
DROP TRIGGER IF EXISTS `trigger_progress`;
DELIMITER //
CREATE TRIGGER `trigger_progress` AFTER UPDATE ON `um_tracking`
 FOR EACH ROW BEGIN
  DECLARE counts INTEGER; 
  IF NEW.progress > 0 THEN
  	SELECT COUNT(*) 
      INTO counts 
      FROM `um_progress` 
     WHERE noresi = NEW.noresi
     AND progress = NEW.progress;
    
    IF counts < 1 THEN
  		INSERT INTO `um_progress` 
        	VALUES(NULL, NEW.noresi, NEW.progress, CURRENT_DATE());
    ELSE
		DELETE FROM `um_progress` WHERE noresi = NEW.noresi AND progress > NEW.progress;
    	UPDATE `um_progress` 
        	SET progress = NEW.progress, 
			statusdate = NEW.statusdate
        WHERE noresi = NEW.noresi 
        AND progress = NEW.progress;
    END IF;
  END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `um_transaction`
--

CREATE TABLE IF NOT EXISTS `um_transaction` (
  `transactioncode` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `payment` int(11) NOT NULL,
  `createdby` varchar(30) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updatedby` varchar(30) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  PRIMARY KEY (`transactioncode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `um_transactiondetails`
--

CREATE TABLE IF NOT EXISTS `um_transactiondetails` (
  `transactioncode` varchar(15) NOT NULL,
  `productcode` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` varchar(30) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `updatedby` varchar(30) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  KEY `um_transactiondetails_fk1` (`transactioncode`),
  KEY `productcode` (`productcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
