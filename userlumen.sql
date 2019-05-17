-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2019 pada 08.32
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userlumen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_16_042722_table_user', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Pending','Banned','Loss') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `gender`, `status`, `email`, `city`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Bagus', 'Bagus', '', 'Active', 'procw57@gmail.com', 'Malang', '-', '0816729312', '2019-05-15 17:00:00', '2019-05-15 17:00:00'),
(2, 'Alex', 'Mason', 'male', 'Active', 'masin.alex@gmail.com', 'Malang', '-', '0827156232', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(3, 'Staf', 'Joben', 'male', 'Pending', 'joben@gmail.com', 'New York', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(4, 'Jean', 'Armin', 'female', 'Active', 'Armin@gmail.com', 'Berlin', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(5, 'Nako', 'Sunao', 'female', 'Active', 'sunao.nake@gmail.com', '', '', '-', NULL, '2019-05-16 05:08:28'),
(6, 'Boris', 'Vladimir', 'male', 'Active', 'vladimit213@gmail.com', 'Moskow', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(7, 'Erwin', 'Roswale', 'male', 'Active', 'erwin23@gmail.com', 'Hindenburg', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(8, 'Sayaka', 'Miki', 'female', 'Pending', 'miki@gmail.com', 'Osaka', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(9, 'Jack', 'Roatch', 'male', 'Banned', 'jack@gmail.com', 'Moskow', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(10, 'Filan', 'Dinalia', 'female', 'Banned', 'filan@gmail.com', 'Stalingrad', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(11, 'Yamamoto', 'Urusku', 'male', 'Banned', 'urusku@gmail.com', 'Midway', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(12, 'Mac', 'Miliam', 'male', 'Pending', 'mac@gmail.com', 'London', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28'),
(13, 'Kamarov', 'Miliam', 'male', 'Loss', 'kamarov@gmail.com', 'Moskow', '-', '-', '2019-05-16 05:08:28', '2019-05-16 05:08:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
