-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 19 Mar 2020 pada 05.12
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jagoanhosting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_03_17_111323_pengguna', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `firstname`, `lastname`, `gender`, `status`, `email`, `city`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Nikky', 'Rufiansya', 'male', 'Active', 'nikkirufiansya2@gmail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:43:31', '2020-03-17 11:43:31'),
(2, 'User', '1', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:44:43', '2020-03-17 11:44:43'),
(3, 'User', '2', 'male', 'Pending', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:06', '2020-03-17 17:44:26'),
(4, 'User', '3', 'male', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:13', '2020-03-17 17:44:49'),
(5, 'User', '4', 'male', 'Loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:19', '2020-03-17 17:45:17'),
(6, 'User', '5', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:25', '2020-03-17 11:45:25'),
(7, 'User', '6', 'female', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:36', '2020-03-17 11:45:36'),
(8, 'User', '7', 'female', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:44', '2020-03-17 11:45:44'),
(9, 'User', '8', 'female', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:45:58', '2020-03-17 11:45:58'),
(10, 'User', '9', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:03', '2020-03-17 12:15:03'),
(11, 'User', '10', 'female', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:08', '2020-03-17 11:46:08'),
(12, 'User', '11', 'female', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:12', '2020-03-17 11:46:12'),
(13, 'User', '12', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:34', '2020-03-17 11:46:34'),
(14, 'User', '13', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:39', '2020-03-17 11:46:39'),
(15, 'User', '14', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:44', '2020-03-17 11:46:44'),
(16, 'User', '15', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:46:49', '2020-03-17 11:46:49'),
(17, 'User', '17', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:47:01', '2020-03-17 11:47:01'),
(18, 'User', '18', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:47:07', '2020-03-17 11:47:07'),
(19, 'User', '19', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-17 11:47:11', '2020-03-17 11:47:11'),
(21, 'User', '21', 'male', 'Loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 03:24:35', '2020-03-18 03:24:35'),
(22, 'Alim', 'Alim', 'male', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 08:53:10', '2020-03-18 08:53:10'),
(23, 'Bella', 'Bella', '', 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 09:22:14', '2020-03-18 09:22:14'),
(24, 'asem', 'asem', NULL, 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 09:38:08', '2020-03-18 09:38:08'),
(25, 'ayu', 'ayu', NULL, 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 09:39:41', '2020-03-18 14:12:38'),
(26, 'user', '26', NULL, 'Active', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 14:59:57', '2020-03-18 14:59:57'),
(27, 'user', '27', NULL, 'Pending', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:00:23', '2020-03-18 15:00:23'),
(28, 'user', '28', NULL, 'Pending', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:00:30', '2020-03-18 15:00:30'),
(29, 'user', '29', NULL, 'Pending', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:00:35', '2020-03-18 15:00:35'),
(30, 'user', '30', NULL, 'Pending', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:00:44', '2020-03-18 15:00:44'),
(31, 'user', '31', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:01:27', '2020-03-18 15:01:27'),
(32, 'user', '32', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:01:34', '2020-03-18 15:01:34'),
(33, 'user', '33', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:01:40', '2020-03-18 15:01:40'),
(34, 'user', '34', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:01:48', '2020-03-18 15:01:48'),
(35, 'user', '35', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:01:56', '2020-03-18 15:01:56'),
(36, 'user', '36', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:02:25', '2020-03-18 15:02:25'),
(37, 'user', '37', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:02:34', '2020-03-18 15:02:34'),
(38, 'user', '38', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:02:41', '2020-03-18 15:02:41'),
(39, 'user', '39', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:02:49', '2020-03-18 15:02:49'),
(40, 'user', '40', 'female', 'Banned', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:02:56', '2020-03-18 15:02:56'),
(41, 'user', '41', 'male', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:05:07', '2020-03-18 15:05:07'),
(42, 'dika', 'dika', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:05:32', '2020-03-18 15:05:32'),
(43, 'mika', 'mika', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:06:09', '2020-03-18 15:06:09'),
(44, 'tika', 'tika', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:06:18', '2020-03-18 15:06:18'),
(45, 'tiwi', 'tiwi', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:06:29', '2020-03-18 15:06:29'),
(46, 'budi', '123', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:06:45', '2020-03-18 15:06:45'),
(47, 'Putra', 'kky', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:07:14', '2020-03-18 15:07:14'),
(48, 'danang', 'danang', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:07:25', '2020-03-18 15:07:25'),
(49, 'bowo', 'bowo', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:07:37', '2020-03-18 15:07:37'),
(50, 'yossi', 'annas', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:07:49', '2020-03-18 15:07:49'),
(51, 'mira', 'rami', '', 'loss', 'user@mail.com', 'Malang', 'Werkodoro No 31', '082264915217', '2020-03-18 15:08:00', '2020-03-18 15:08:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
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
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
