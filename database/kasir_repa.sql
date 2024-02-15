-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 03.38
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_repa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`id_detail`, `id_penjualan`, `id_produk`, `jumlah_produk`, `subtotal`) VALUES
(2, 1, 0, 2, '10000.00'),
(3, 2, 0, 1, '10000.00'),
(3, 3, 0, 1, '10000.00'),
(4, 4, 0, 2, '10000.00'),
(4, 5, 0, 2, '10000.00'),
(5, 6, 0, 3, '10000.00'),
(5, 7, 0, 2, '10000.00'),
(6, 8, 0, 3, '10000.00'),
(7, 9, 0, 3, '0.00'),
(7, 10, 0, 0, '0.00'),
(8, 11, 0, 2, '10000.00'),
(9, 12, 0, 3, '10000.00'),
(10, 13, 1, 3, '10000.00'),
(11, 14, 2, 11, '10000.00'),
(12, 15, 3, 1, '10000.00'),
(13, 16, 1, 4, '10000.00'),
(13, 17, 3, 3, '10000.00'),
(14, 18, 1, 3, '10000.00'),
(14, 19, 3, 6, '10000.00'),
(15, 20, 1, 3, '10000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_meja`, `nomor_telepon`) VALUES
(1, 'repa', 0, ''),
(2, 'repa', 0, ''),
(3, 'saya', 0, ''),
(4, 'repa', 0, ''),
(5, 'rere', 0, ''),
(6, 'rere', 0, ''),
(7, 'rere', 0, ''),
(8, 'riri', 0, ''),
(9, 'rere', 0, ''),
(10, 'repa', 0, ''),
(11, 'ichsan', 0, ''),
(12, 'tes', 0, ''),
(13, 'ree', 0, ''),
(14, 'reva', 0, ''),
(15, 'ginaa', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal_penjualan`, `total_harga`, `id_pelanggan`) VALUES
(1, '2024-02-05', '0.00', 0),
(2, '2024-02-12', '0.00', 0),
(3, '2024-02-12', '0.00', 0),
(4, '2024-02-12', '0.00', 0),
(5, '2024-02-12', '0.00', 0),
(6, '2024-02-12', '0.00', 0),
(7, '2024-02-13', '0.00', 0),
(8, '2024-02-13', '0.00', 0),
(9, '2024-02-13', '0.00', 0),
(10, '2024-02-13', '0.00', 0),
(11, '2024-02-13', '0.00', 0),
(12, '2024-02-13', '0.00', 0),
(13, '2024-02-13', '0.00', 0),
(14, '2024-02-13', '0.00', 0),
(15, '2024-02-13', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `terjual`, `foto`) VALUES
(1, 'spaghetti aglio olio', '10000.00', 37, 13, '12022024073014.jpg'),
(2, 'kentang', '10000.00', 19, 11, '12022024055935.jpg'),
(3, 'burger', '10000.00', 30, 10, '12022024060013.jpg'),
(4, 'hotdog', '10000.00', 50, 0, '12022024072341.jpg'),
(6, 'spaghetti carbonara', '10000.00', 50, 0, '12022024072758.jpeg'),
(7, 'milo dinosaurus', '10000.00', 50, 0, 'milo.jpg'),
(9, 'jus', '10000.00', 50, 0, '13022024082149.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(0, 'repa', '202cb962ac59075b964b07152d234b70', 'petugas'),
(4, 'rere', '202cb962ac59075b964b07152d234b70', 'petugas'),
(1234, 'petugas', '202cb962ac59075b964b07152d234b70', 'petugas'),
(34278, 'admin', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `PenjualanID` (`id_penjualan`,`id_produk`),
  ADD KEY `ProdukID` (`id_produk`),
  ADD KEY `id_detail` (`id_detail`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `PelangganID` (`id_pelanggan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
