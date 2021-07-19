-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Jul 2021 pada 04.55
-- Versi server: 5.7.32
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master-akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggung_jawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penerbit`, `penanggung_jawab`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PEMOGRAMA223w', 'RHAFLY DWI SAPUTRA TAMAL', 'SUPER ADMIN', 1, '2021-04-03 19:02:08', '2021-06-20 14:09:30'),
(4, 'hahah', 'hahahahah', 'hahahah', 1, '2021-04-04 16:25:06', '2021-04-05 02:28:35'),
(6, 'adasd', 'adasd', 'asdad', 1, '2021-04-10 04:45:56', '2021-04-10 04:45:56'),
(7, 'RHAFLY', 'LUQMAN', 'AINUL', 0, '2021-04-10 04:46:10', '2021-04-10 04:46:54'),
(8, 'TESTING', 'ASDA', 'ADA', 1, '2021-04-11 19:47:42', '2021-04-11 19:47:42'),
(9, 'asdad', 'adad', 'sadad', 1, '2021-04-24 05:17:41', '2021-04-24 05:17:41'),
(10, 'fdfd', 'gfg', 'jkj', 1, '2021-06-06 09:50:48', '2021-06-06 09:50:48'),
(11, 'Kriptografi', 'Rhafly', 'Ujang', 1, '2021-06-09 11:35:32', '2021-06-09 11:35:32'),
(12, 'asd', 'asd', 'asdad', 1, '2021-06-10 03:53:11', '2021-06-10 03:53:11'),
(13, 'BASIS DATA', 'AINUL', 'RHAFLY', 1, '2021-06-26 05:18:53', '2021-06-26 05:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalsiswa`
--

CREATE TABLE `jadwalsiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  `ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_pengampu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwalsiswa`
--

INSERT INTO `jadwalsiswa` (`id`, `hari`, `jam`, `ruang`, `mata_pelajaran`, `kelas`, `guru_pengampu`, `created_at`, `updated_at`) VALUES
(2, 'Senin', '00:31:00', 'R.1.1', 'Pemograman', 'IX', 'Ainul', '2021-04-13 16:31:54', '2021-05-04 08:24:43'),
(3, 'Selasa', '00:31:00', 'R.1.2', 'Basis Data', 'VIII', 'Luqman', '2021-04-13 16:31:54', '2021-05-04 08:24:49'),
(5, 'Rabu', '12:21:00', 'R.2.3', 'Bahasa Inggris', 'VII', 'Rhafly', '2021-05-04 04:30:14', '2021-05-04 08:24:56'),
(6, 'senin', '00:00:20', 'R.1.1.1', 'Basis Data', '3', 'Krisna', '2021-06-24 07:27:49', '2021-06-24 07:27:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laboratorium`
--

CREATE TABLE `laboratorium` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggung_jawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laboratorium`
--

INSERT INTO `laboratorium` (`id`, `nama_alat`, `jumlah`, `penanggung_jawab`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steskop', '10', 'Rhafly', 1, '2021-05-04 04:46:49', '2021-06-01 01:37:27'),
(6, '12', '123', '123', 0, '2021-06-06 07:06:20', '2021-06-06 07:06:20'),
(7, 'testt', '12313', 'asda', 0, '2021-06-06 07:07:04', '2021-06-06 07:07:04'),
(8, 'MEJA', '3', 'RHAFLY', 0, '2021-06-26 05:25:49', '2021-06-26 05:25:49');

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
(8, '2021_04_01_013357_create_users_table', 1),
(9, '2021_04_01_030817_change_api_token_nullable_to_users_table', 1),
(10, '2021_04_01_042016_change_photo_nullable_to_users_table', 1),
(11, '2021_04_02_152134_add_field_reset_token_to_users_table', 1),
(15, '2021_04_03_190115_create_buku_table', 2),
(16, '2021_04_13_122509_create_jadwalsiswa_table', 3),
(17, '2021_05_03_013316_create_laboratorium_table', 4),
(18, '2021_05_04_131354_create_presensisiswa_table', 5),
(19, '2021_06_07_024632_create_nilai_siswa_table', 6),
(20, '2021_06_21_110402_create_presensi_guru_table', 7),
(21, '2021_06_26_052812_create_tabel_meja', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` int(11) NOT NULL COMMENT '0: VII, 1: VIII 2: IX 3: bukan_siswa',
  `mata_pelajaran` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0: Basis_Data, 1: Pemograman_Web, 2: Matematika, 3: Bahasa_Indonesia, 4: Kimia, 5: Fisika',
  `nilai` int(11) NOT NULL COMMENT '0: A, 1: B 3: C 4: D',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_siswa`
--

INSERT INTO `nilai_siswa` (`id`, `id_user`, `name`, `kelas`, `mata_pelajaran`, `nilai`, `created_at`, `updated_at`) VALUES
(11, 5, 'sad', 1, '1', 0, '2021-06-18 17:56:53', '2021-06-18 19:02:32'),
(12, 5, 'luqman', 1, '0', 0, '2021-06-18 17:56:59', '2021-06-18 18:55:48'),
(18, 5, 'luqman', 1, '0', 0, '2021-06-18 18:05:09', '2021-06-18 18:55:48'),
(21, NULL, 'INI DI EDIT', 2, '0', 0, '2021-06-18 18:23:10', '2021-06-18 19:00:22'),
(22, 5, 'sad', 0, '1', 0, '2021-06-18 17:56:53', '2021-06-18 19:02:32'),
(24, NULL, 'asdad', 1, '0', 0, '2021-06-22 12:02:11', '2021-06-22 12:02:11'),
(25, NULL, 'asdd', 1, '1', 0, '2021-06-22 12:02:48', '2021-06-22 12:02:48'),
(26, NULL, 'tetsi', 0, '1', 0, '2021-06-22 12:03:12', '2021-06-22 12:03:12'),
(27, NULL, 'asdad', 1, '0', 0, '2021-06-22 12:03:39', '2021-06-22 12:03:39'),
(28, NULL, 'Rhafly', 0, '0', 0, '2021-06-24 07:28:56', '2021-06-24 07:28:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensisiswa`
--

CREATE TABLE `presensisiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `kelas` int(11) NOT NULL COMMENT '0: VII, 1: VIII 3: IX 4: bukan_siswa',
  `status` int(11) NOT NULL COMMENT '0: Hadir, 1: Pulang',
  `mata_pelajaran` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0: Basis_Data, 1: Pemograman_Web, 2: Matematika, 3: Bahasa_Indonesia, 4: Kimia, 5: Fisika',
  `jam_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jam_pulang` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensisiswa`
--

INSERT INTO `presensisiswa` (`id`, `id_user`, `kelas`, `status`, `mata_pelajaran`, `jam_masuk`, `jam_pulang`, `created_at`, `updated_at`) VALUES
(78, 5, 1, 0, '4', '2021-06-19 01:46:17', NULL, '2021-06-19 01:46:17', '2021-06-19 01:46:17'),
(79, 11, 1, 0, '1', '2021-06-20 13:36:31', NULL, '2021-06-20 13:36:31', '2021-06-20 13:36:31'),
(80, 11, 1, 0, '3', '2021-06-20 14:22:06', NULL, '2021-06-20 14:22:06', '2021-06-20 14:22:06'),
(81, 9, 0, 0, '1', '2021-06-22 01:53:09', NULL, '2021-06-22 01:53:09', '2021-06-22 01:53:09'),
(82, 9, 0, 0, '1', '2021-06-22 01:53:10', NULL, '2021-06-22 01:53:10', '2021-06-22 01:53:10'),
(83, 3, 0, 0, '1', '2021-06-22 06:16:09', NULL, '2021-06-22 06:16:09', '2021-06-22 06:16:09'),
(84, 3, 0, 0, '1', '2021-06-22 06:16:10', NULL, '2021-06-22 06:16:10', '2021-06-22 06:16:10'),
(85, 3, 0, 0, '1', '2021-06-22 06:16:11', NULL, '2021-06-22 06:16:11', '2021-06-22 06:16:11'),
(86, 3, 0, 0, '1', '2021-06-22 06:16:11', NULL, '2021-06-22 06:16:11', '2021-06-22 06:16:11'),
(87, 3, 0, 0, '1', '2021-06-22 06:16:11', NULL, '2021-06-22 06:16:11', '2021-06-22 06:16:11'),
(88, 3, 0, 0, '1', '2021-06-22 06:16:11', NULL, '2021-06-22 06:16:11', '2021-06-22 06:16:11'),
(89, 3, 0, 0, '1', '2021-06-22 06:16:11', NULL, '2021-06-22 06:16:11', '2021-06-22 06:16:11'),
(90, 3, 0, 0, '1', '2021-06-22 06:16:12', NULL, '2021-06-22 06:16:12', '2021-06-22 06:16:12'),
(91, 11, 1, 0, '1', '2021-06-24 07:31:00', NULL, '2021-06-24 07:31:00', '2021-06-24 07:31:00'),
(92, 11, 1, 0, '1', '2021-06-26 05:19:03', NULL, '2021-06-26 05:19:03', '2021-06-26 05:19:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi_guru`
--

CREATE TABLE `presensi_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `kelas` int(11) NOT NULL COMMENT '0: VII, 1: VIII 3: IX',
  `status` int(11) NOT NULL COMMENT '0: Hadir, 1: Pulang',
  `mata_pelajaran` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0: Basis_Data, 1: Pemograman_Web, 2: Matematika, 3: Bahasa_Indonesia, 4: Kimia, 5: Fisika',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensi_guru`
--

INSERT INTO `presensi_guru` (`id`, `id_user`, `kelas`, `status`, `mata_pelajaran`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 0, '2', '2021-06-21 11:25:54', '2021-06-21 11:25:54'),
(2, 4, 0, 0, '1', '2021-06-22 11:49:51', '2021-06-22 11:49:51'),
(3, 4, 0, 0, '1', '2021-06-24 05:33:33', '2021-06-24 05:33:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis_nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: female, 1: male',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0: admin, 1: guru, 2: siswa, 3: petugas_tata_usaha, 4: petugas_laboratorium, 5: petugas_perpustakaan, 6: kepala_sekolah',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `kelas` int(11) NOT NULL COMMENT '0: VII, 1: VIII 3: IX 4: bukan_siswa',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nis_nip`, `gender`, `address`, `photo`, `email`, `password`, `phone_number`, `api_token`, `reset_token`, `role`, `status`, `kelas`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', '123456783450', '1', 'Jl Wijaya Kusuma', 'superadmin.png', 'rhafly@admin.com', '$2y$10$FIqKee/wS82CAU2FLnOQLeQqf0B0tUVew8lnP491bquiP7THqaUs2', '085343966997', 'qDI9VKcKWBEXCSqTLZZZuddONGlwsTxqdBlhjSuD', NULL, '1', 0, 0, '2021-04-02 19:09:39', '2021-06-10 03:45:54'),
(3, 'RHAFLY DWI SAPUTRA TAMAL', '19.83.0370', '0', 'JL WIJAYA KUSUMA III', NULL, 'superadmin@admin.com', '$2y$10$pmRqSa0g3OowiQJrnzU7ae45bYtU.BsQ37f2AaipiDhs7ODVosFeC', '085777703561', 'VyDBCyYpiLfUPRB5fetsLhK6Mpe0oE6csV378RbO', NULL, '0', 1, 0, '2021-04-02 19:55:25', '2021-06-29 01:26:34'),
(4, 'LA ODE MUHAMMAD AINUL', '19.83.0396', '1', 'MUNA', NULL, 'guru@gmail.com', '$2y$10$pmRqSa0g3OowiQJrnzU7ae45bYtU.BsQ37f2AaipiDhs7ODVosFeC', '123123123', 'zzEdEFmqAfGK3UD1DiMozDlr90Uok44zhrsfnoO2', NULL, '1', 1, 0, '2021-04-04 09:53:28', '2021-06-26 05:19:29'),
(5, 'luqman', '19.83.21', '1', 'asd', NULL, 'kepalasekolah@admin.com', '$2y$10$W5W.ERfl51Sz7/vGR0.Ize0fNpunR0X3iHM9oftPyQNuU3UKrL6A2', '123123', 'houVVuq6d9WhSqYUh4ofiEk9ni9xkJ4ByOawIjgu', NULL, '6', 1, 1, '2021-04-10 05:07:16', '2021-06-26 05:20:29'),
(6, 'INI KEPALA SEKOLAH', '21213131', '0', 'ASDAD', NULL, 'sdad@gmail.com', '$2y$10$QSQpNfmWNUfyUdpZ5mv8x.qUN9Ozg6O5QVjob2ujf9NOZAPRsGrnW', '123123', NULL, NULL, '6', 1, 0, '2021-04-10 05:22:26', '2021-04-10 05:22:26'),
(7, 'INI PETUGAS TATA USAHA', '123123', '0', 'ASDAD', NULL, 'supertatausaha@admin.com', '$2y$10$nhADJB.jKzUFKFCcohCYPeUGY9C/.WQM8LUkRQZlYbRG5vrtEROPC', '213123', '9eLYc9RteoplLbUbTk0WYu854Wp8gZ8Bwgu1QXd2', NULL, '3', 1, 0, '2021-04-10 05:32:16', '2021-06-26 05:24:30'),
(8, 'wqeqe', '1312313', '1', 'asdada', NULL, 'petugaslaboratorium@admin.com', '$2y$10$YKKNYKS/6/W8pWcnlvfeEe3u8yBTyDvXu7fsxgwjKLVmxckyj0CsG', '12313', 'vSQRl10r55MznREbGCI7Nuv5GkSjqA3QTMNx96Q4', NULL, '4', 1, 0, '2021-04-10 05:34:08', '2021-06-26 05:25:19'),
(9, 'INI PETUGAS PERPUSTAKAAN', '12313123', '1', 'ASDADAD', NULL, 'petugasperpustakaan@admin.com', '$2y$10$Su96VIYeyGtvR3GZ4Cjtt.XHT1kBf2h5t.k8xnsIJy4wUsfJRnl.6', '21313113', 'h8TuxAKaJaXH01tgzNATwtc5JbaEdiAVMPEGPXqe', NULL, '5', 1, 0, '2021-04-10 05:35:31', '2021-06-26 05:26:22'),
(10, 'rhafly', '12313213', '1', 'makassar', NULL, 'rhaflydwi01@gmail.com', '$2y$10$KYLMMhZ5vGjGbuyQa1wxkuHaX6qBsRZPKfcNAvvx/h7YIaHhJjajm', '123123123', 'u5fSDSFFvD66h0b4ZWu2UcTITuiUr2FDuzn7LKwl', NULL, '1', 1, 0, '2021-05-04 12:22:08', '2021-06-22 00:13:43'),
(11, 'rhafly', '19.83.21', '1', 'asd', NULL, 'siswa@admin.com', '$2y$10$W5W.ERfl51Sz7/vGR0.Ize0fNpunR0X3iHM9oftPyQNuU3UKrL6A2', '123123', 'Brrw0DQevgZZ6bUiZqeGAw65Ei8bs36mzkjY0j9i', NULL, '2', 1, 1, '2021-04-10 05:07:16', '2021-06-29 01:25:43'),
(12, 'La ode muhammad ainul', '19.83.0386', '1', 'Jl. Lailangga', NULL, 'ode@students.rhafly.com', '$2y$10$quCWXQUyBhi9P71ZCyj4qO039Rr4NG9kGHqE6Hp515tbFlXKQaAJy', '21321313', NULL, NULL, '2', 1, 1, '2021-06-09 11:37:36', '2021-06-09 11:37:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwalsiswa`
--
ALTER TABLE `jadwalsiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `presensisiswa`
--
ALTER TABLE `presensisiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi_guru`
--
ALTER TABLE `presensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jadwalsiswa`
--
ALTER TABLE `jadwalsiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `presensisiswa`
--
ALTER TABLE `presensisiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `presensi_guru`
--
ALTER TABLE `presensi_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
