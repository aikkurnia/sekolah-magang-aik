-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2016 at 09:03 
-- Server version: 5.6.26
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE IF NOT EXISTS `operator` (
  `id` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `user` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `Nama`, `user`, `password`, `status`) VALUES
('OP1', 'jingga', 'jingga', '1234', 1),
('OP1', 'jingga', 'jingga', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE IF NOT EXISTS `prestasi` (
  `kode` int(5) NOT NULL,
  `Keunggulan` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `Peringkat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`kode`, `Keunggulan`, `tanggal`, `Peringkat`) VALUES
(12, 'Kejurkab Banyuwangi Volly', '2012-03-05', 'Juara 3'),
(15, 'Porseni Paduan Suara Kab Banyuwangi', '2014-01-08', 'Juara 2'),
(19, 'Lomba makan kerupuk', '2014-08-15', 'juara 1'),
(30, 'Kejuaraan Sepak Bola Kab Banyuwangi', '2013-03-21', 'Juara 3 ');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_siswa`
--

CREATE TABLE IF NOT EXISTS `prestasi_siswa` (
  `kode` int(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  `Keunggulan` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `Peringkat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi_siswa`
--

INSERT INTO `prestasi_siswa` (`kode`, `Nama`, `Keunggulan`, `tanggal`, `Peringkat`) VALUES
(11, 'Kiki Dwi Ratih', 'Lomba Cerdas Cermat Bahasa Inggris', '2015-03-11', 'Juara 2'),
(12, 'Anggi', 'Lompat Jauh', '2014-08-09', 'Juara 2'),
(21, 'Hendra Joniansyah', 'Lomba Panjat Tebing Kab Banyuwangi', '2016-02-13', 'Juara 1'),
(45, 'Adela indah', 'Lomba MIPA Kab Banyuwangi', '2015-10-22', 'Juara 3'),
(72, 'Rini Wulandari', 'Lomba Karaoke Kab Banyuwangi', '2015-08-19', 'Juara 1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
