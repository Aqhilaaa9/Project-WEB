-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 08:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_setara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_Admin` int(50) DEFAULT NULL,
  `nama` int(20) DEFAULT NULL,
  `password` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(100) DEFAULT NULL,
  `id_pengguna` int(100) DEFAULT NULL,
  `pid` int(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `kuantitas` int(10) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(100) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(100) DEFAULT NULL,
  `id_pengguna` int(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nomor` varchar(12) DEFAULT NULL,
  `pesan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(100) NOT NULL,
  `id_penguna` int(100) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nomor` varchar(12) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `metode` varchar(50) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `total_produk` varchar(1000) DEFAULT NULL,
  `total_harga` int(100) DEFAULT NULL,
  `tempat` date DEFAULT current_timestamp(),
  `status_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
