-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Jul 2021 pada 00.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inovasiKreatif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `noHp` varchar(14) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `nama`, `email`, `password`, `gender`, `alamat`, `noHp`, `status`) VALUES
(1, 'Rizky Nugraha Herliyanto', '19104014@ittelkom-pwt.ac.id', 'rizky28', 'Perempuan', 'ciktim rt02/11', '089512312', 'Mahasiswa'),
(2, 'Pipit Tania', 'taniahandayani@gmail.com', 'pipit28', 'Perempuan', 'Jln. Aku mencintaimu pit', '08965142231', 'Mahasiswa'),
(5, 'Linus Torvald', 'unix@torvald.linux', '123', 'Laki-laki', 'Sillicon Valley 28.II', '0212312321', 'Pengusaha'),
(6, 'amal fahmi reza', 'amfa@gmail.com', '12345', 'Laki-laki', 'jln pegadaian purwokerto', '0851231231', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ideInovasi`
--

CREATE TABLE `ideInovasi` (
  `noIde` int(10) NOT NULL,
  `idAkun` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `jmlAnggota` int(2) NOT NULL,
  `proposal` varchar(30) NOT NULL DEFAULT 'proposal.pdf',
  `tglSubmit` date NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Sedang di check...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ideInovasi`
--

INSERT INTO `ideInovasi` (`noIde`, `idAkun`, `judul`, `deskripsi`, `organisasi`, `jmlAnggota`, `proposal`, `tglSubmit`, `status`) VALUES
(1, 0, 'Smart City', 'Perancangan smart city dengan arsitektur IOT berba', 'nugraha.inc', 0, 'proposal.pdf', '2021-07-29', 'Sedang di check...'),
(3, 1, 'Deteksi Banjir', 'Mendeteksi akan datangnya banjir menggunakan sensor IOT', 'reza.com', 5, 'proposal.pdf', '2021-07-30', 'Sedang di check...'),
(4, 1, 'Plagiarisme', 'mengecek plagiarismea tulisan', 'Amal tech', 6, 'proposal.pdf', '2021-07-30', 'Sedang di check...'),
(5, 1, 'House Safety', 'Perancangan rumah dengan sistem kemanan berbasis cloud', 'fahmi company', 3, 'proposal.pdf', '2021-07-30', 'Sedang di check...'),
(6, 2, 'Farm Tech', 'Bertani menggunakan teknologi untuk mempermudah para petani', 'Google KW', 6, 'proposal.pdf', '2021-07-30', 'Sedang di check...'),
(7, 5, 'Kendaraan RFID', 'Perancangan sistem pengamanan sidik jari pada Kendaraan', 'UNIX TUX', 1, 'proposal.pdf', '2021-07-30', 'Sedang di check...'),
(8, 6, 'Fast Food', 'Fast Food lokalan terenak', 'bigsoft', 5, 'proposal.pdf', '2021-07-30', 'Sedang di check...');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ideInovasi`
--
ALTER TABLE `ideInovasi`
  ADD PRIMARY KEY (`noIde`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ideInovasi`
--
ALTER TABLE `ideInovasi`
  MODIFY `noIde` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
