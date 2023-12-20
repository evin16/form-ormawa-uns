-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 10:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form_mawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_20_071317_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ormawa`
--

CREATE TABLE `ormawa` (
  `ID` int(11) NOT NULL,
  `UID` varchar(50) NOT NULL,
  `nama_omawa` varchar(225) NOT NULL,
  `nama_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ormawa`
--

INSERT INTO `ormawa` (`ID`, `UID`, `nama_omawa`, `nama_id`) VALUES
(1, 'U01', 'Ormawa Kerohanian Islam JN UKMI', 'U01-Ormawa Kerohanian Islam JN UKMI'),
(2, 'U02', 'Ormawa Kerohanian Islam Ilmu QurAn', 'U02-Ormawa Kerohanian Islam Ilmu QurAn'),
(3, 'U03', 'Ormawa Kerohanian Islam Seni Religi', 'U03-Ormawa Kerohanian Islam Seni Religi'),
(4, 'U04', 'Ormawa Kerohanian Kristen', 'U04-Ormawa Kerohanian Kristen'),
(5, 'U05', 'Ormawa Kerohanian Katholik', 'U05-Ormawa Kerohanian Katholik'),
(6, 'U06', 'Ormawa Kerohanian Hindu', 'U06-Ormawa Kerohanian Hindu'),
(7, 'U07', 'Ormawa Kerohanian Budha', 'U07-Ormawa Kerohanian Budha'),
(8, 'U08', 'Ormawa Kerohanian Konghucu', 'U08-Ormawa Kerohanian Konghucu'),
(9, 'U09', 'Ormawa Badan Eksekutif Mahasiswa', 'U09-Ormawa Badan Eksekutif Mahasiswa'),
(10, 'U10', 'Ormawa Dewan Mahasiswa', 'U10-Ormawa Dewan Mahasiswa'),
(11, 'U11', 'Ormawa Paduan Suara Mahasiswa Voca Erudita', 'U11-Ormawa Paduan Suara Mahasiswa Voca Erudita'),
(12, 'U12', 'Ormawa Marching Band', 'U12-Ormawa Marching Band'),
(13, 'U13', 'Ormawa Kesenian Tradisional', 'U13-Ormawa Kesenian Tradisional'),
(14, 'U14', 'Ormawa Pencinta Alam Garba Wira Bhuana', 'U14-Ormawa Pencinta Alam Garba Wira Bhuana'),
(15, 'U16', 'Ormawa Korps Sukarela Palang Merah Indonesia', 'U16-Ormawa Korps Sukarela Palang Merah Indonesia'),
(16, 'U17', 'Ormawa Gerakan Pramuka Gudep Kota Surakarta ', 'U17-Ormawa Gerakan Pramuka Gudep Kota Surakarta '),
(17, 'U18', 'Ormawa Pusat Informasi dan Komunikasi Remaja', 'U18-Ormawa Pusat Informasi dan Komunikasi Remaja'),
(18, 'U19', 'Ormawa Studi Ilmiah Mahasiswa', 'U19-Ormawa Studi Ilmiah Mahasiswa'),
(19, 'U20', 'Ormawa Student English Forum', 'U20-Ormawa Student English Forum'),
(20, 'U21', 'Ormawa Aisec', 'U21-Ormawa Aisec'),
(21, 'U22', 'Ormawa Lembaga Pers Mahasiswa Kentingan', 'U22-Ormawa Lembaga Pers Mahasiswa Kentingan'),
(22, 'U23', 'Ormawa Robotika', 'U23-Ormawa Robotika'),
(23, 'U24', 'Ormawa Koperasi Mahasiswa', 'U24-Ormawa Koperasi Mahasiswa'),
(24, 'U25', 'Ormawa INKAI', 'U25-Ormawa INKAI'),
(25, 'U26', 'Ormawa Sorinji Kempo', 'U26-Ormawa Sorinji Kempo'),
(26, 'U27', 'Ormawa Taekwondo', 'U27-Ormawa Taekwondo'),
(27, 'U28', 'Ormawa Pencak Silat Merpati Putih', 'U28-Ormawa Pencak Silat Merpati Putih'),
(28, 'U29', 'Ormawa Pencak Silat Tapak Suci', 'U29-Ormawa Pencak Silat Tapak Suci'),
(29, 'U30', 'Ormawa Pencak Silat Perisai Diri', 'U30-Ormawa Pencak Silat Perisai Diri'),
(30, 'U31', 'Ormawa Pencak Silat PSHT', 'U31-Ormawa Pencak Silat PSHT'),
(31, 'U32', 'Ormawa Sepakbola dan Futsal', 'U32-Ormawa Sepakbola dan Futsal'),
(32, 'U33', 'Ormawa Bola Basket', 'U33-Ormawa Bola Basket'),
(33, 'U34', 'Ormawa Bola Voli', 'U34-Ormawa Bola Voli'),
(34, 'U35', 'Ormawa Bulutangkis', 'U35-Ormawa Bulutangkis'),
(35, 'U36', 'Ormawa Tenis Lapangan', 'U36-Ormawa Tenis Lapangan'),
(36, 'U37', 'Ormawa Tenis Meja', 'U37-Ormawa Tenis Meja'),
(37, 'U38', 'Ormawa Komadiksi Smart', 'U38-Ormawa Komadiksi Smart'),
(38, 'U39', 'Ormawa Pentaque', 'U39-Ormawa Pentaque'),
(39, 'U40', 'Ormawa HMP Pascasarjana', 'U40-Ormawa HMP Pascasarjana'),
(40, 'U41', 'Ormawa Society of Renewable Energy', 'U41-Ormawa Society of Renewable Energy'),
(41, 'U42', 'Ormawa Judo', 'U42-Ormawa Judo'),
(42, 'U43', 'Ormawa Pagar Nusa', 'U43-Ormawa Pagar Nusa'),
(43, 'U44', 'Ormawa E-Sport', 'U44-Ormawa E-Sport'),
(44, 'U45', 'Ormawa Aquatic', 'U45-Ormawa Aquatic'),
(45, 'U46', 'Ormawa Sepak Takraw', 'U46-Ormawa Sepak Takraw'),
(46, 'U47', 'Ormawa Bengawan Team', 'U47-Ormawa Bengawan Team'),
(47, 'U48', 'Ormawa Catur', 'U48-Ormawa Catur'),
(48, 'U49', 'Non-Ormawa', 'U49-Non-Ormawa'),
(49, 'U49', 'Ormawa Fakultas', 'U49-Ormawa Fakultas');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ormawa.form', 'web', '2023-12-20 01:08:17', '2023-12-20 01:08:17'),
(2, 'ormawa.form.store', 'web', '2023-12-20 01:08:43', '2023-12-20 01:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proker`
--

CREATE TABLE `proker` (
  `ID` int(11) NOT NULL,
  `id_mawa` int(11) NOT NULL,
  `jenis_kegiatan` varchar(225) NOT NULL,
  `kategori_kegiatan` varchar(225) NOT NULL,
  `id_skim` int(11) NOT NULL,
  `judul_kegiatan` varchar(225) NOT NULL,
  `NIM` varchar(50) NOT NULL,
  `nama_pic` varchar(225) DEFAULT NULL,
  `kontak_pic` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `sumber_dana` varchar(225) NOT NULL,
  `jumlah_dana` varchar(50) NOT NULL,
  `file_RAB` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proker`
--

INSERT INTO `proker` (`ID`, `id_mawa`, `jenis_kegiatan`, `kategori_kegiatan`, `id_skim`, `judul_kegiatan`, `NIM`, `nama_pic`, `kontak_pic`, `mulai`, `selesai`, `sumber_dana`, `jumlah_dana`, `file_RAB`) VALUES
(1, 4, 'Penyelenggara  Kegiatan Non Kompetisi', 'Puspresnas/Belmawa', 5, 'Ibadah Natal Mahasiswa UNS 2024', 'M0519032', NULL, '082166837092', '2023-12-30', '2023-12-31', 'Dana Sponsor, Dana Mandiri', '1000000', 'RAB/data.json');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-12-20 00:36:57', '2023-12-20 00:36:57'),
(2, 'user', 'web', '2023-12-20 00:36:57', '2023-12-20 00:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `skim_kegiatan`
--

CREATE TABLE `skim_kegiatan` (
  `ID` int(11) NOT NULL,
  `kode_skim` varchar(10) NOT NULL,
  `nama_skim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skim_kegiatan`
--

INSERT INTO `skim_kegiatan` (`ID`, `kode_skim`, `nama_skim`) VALUES
(1, 'PR', 'Delegasi Lomba (Eksternal / Internal)'),
(2, 'RG', 'Kegiatan Rekognisi Non Lomba'),
(3, 'MB', 'Kegiatan MBKM'),
(4, 'BN', 'Kegiatan Bela Negara'),
(5, 'LL', 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `skim_ormawa`
--

CREATE TABLE `skim_ormawa` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_skim` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skim_ormawa`
--

INSERT INTO `skim_ormawa` (`id`, `kode`, `nama_skim`) VALUES
(1, 'PR.01', 'Juara'),
(2, 'PR.02', 'Apresiasi/ Juara Umum'),
(3, 'PR.03', 'Peserta'),
(4, 'RG.01', 'Pembicara/Narasumber Seminar'),
(5, 'RG.02', 'Speaker Seminar'),
(6, 'RG.03', 'Peserta Pameran'),
(7, 'RG.04', 'Penulis Pertama Publikasi Karya Ilmiah'),
(8, 'RG.05', 'Penulis Buku ISBN'),
(9, 'RG.06', 'Wasit/ Juri'),
(10, 'RG.07', 'Pelatih'),
(11, 'RG.08', 'Penerbitan HAKI'),
(12, 'MB.01', 'Pertukaran Pelajar'),
(13, 'MB.02', 'Magang/Praktik Kerja'),
(14, 'MB.03', 'Asistensi Mengajar di Satuan Pendidikan'),
(15, 'MB.04', 'Penelitian/Riset'),
(16, 'MB.05', 'Proyek Kemanusiaan'),
(17, 'MB.06', 'Kegiatan Wirausaha'),
(18, 'MB.07', 'Studi/Proyek Independen'),
(19, 'MB.08', 'Membangun Desa/Kuliah Kerja Nyata Tematik'),
(20, 'BN.01', 'Pencegahan dan Penanganan Kekerasan Seksual (PPKS)'),
(21, 'BN.02', 'Program Kegiatan Pencegahan dan Penanganan Anti Intoleransi bagi Mahasiswa'),
(22, 'BN.03', 'Program Kegiatan Anti Perundungan bagi Mahasiswa'),
(23, 'BN.04', 'Program Kegiatan Anti Korupsi bagi Mahasiswa'),
(24, 'BN.05', 'Pembinaan Kewirausahaan Mahasiswa'),
(25, 'BN.06', 'Program Pembinaan Karakter bagi Mahasiswa'),
(26, 'BN.07', 'Program Pembinaan Bela Negara bagi Mahasiswa'),
(27, 'BN.08', 'Program Pembinaan Wawasan Kebangsaan bagi mahasiswa'),
(28, 'BN.09', 'Program Pengembangan mental spiritual kebangsaan'),
(29, 'LL', 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `target_skim`
--

CREATE TABLE `target_skim` (
  `ID_target` int(11) NOT NULL,
  `id_proker` int(11) NOT NULL,
  `PR01` int(11) DEFAULT NULL,
  `PR02` int(11) DEFAULT NULL,
  `PR03` int(11) DEFAULT NULL,
  `RG01` int(11) DEFAULT NULL,
  `RG02` int(11) DEFAULT NULL,
  `RG03` int(11) DEFAULT NULL,
  `RG04` int(11) DEFAULT NULL,
  `RG05` int(11) DEFAULT NULL,
  `RG06` int(11) DEFAULT NULL,
  `RG07` int(11) DEFAULT NULL,
  `RG08` int(11) DEFAULT NULL,
  `MB01` int(11) DEFAULT NULL,
  `MB02` int(11) DEFAULT NULL,
  `MB03` int(11) DEFAULT NULL,
  `MB04` int(11) DEFAULT NULL,
  `MB05` int(11) DEFAULT NULL,
  `MB06` int(11) DEFAULT NULL,
  `MB07` int(11) DEFAULT NULL,
  `MB08` int(11) DEFAULT NULL,
  `BN01` int(11) DEFAULT NULL,
  `BN02` int(11) DEFAULT NULL,
  `BN03` int(11) DEFAULT NULL,
  `BN04` int(11) DEFAULT NULL,
  `BN05` int(11) DEFAULT NULL,
  `BN06` int(11) DEFAULT NULL,
  `BN07` int(11) DEFAULT NULL,
  `BN08` int(11) DEFAULT NULL,
  `BN09` int(11) DEFAULT NULL,
  `LL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Erikson', 'admin@role.test', NULL, '$2y$12$TpVktW5kY/XdmD0nv9OUBefoPauzX/mxqWH7NauFBd6Mq51IftsSO', NULL, '2023-12-20 00:36:58', '2023-12-20 00:36:58'),
(2, 'Aditya', 'user@role.test', NULL, '$2y$12$aWr0BpZ4YziOM.mQf6/RjOlEN0JWBB7eDJMD4Cu1h2nQaqsDzExTq', NULL, '2023-12-20 00:36:58', '2023-12-20 00:36:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ormawa`
--
ALTER TABLE `ormawa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `proker`
--
ALTER TABLE `proker`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_ormawa` (`id_mawa`),
  ADD KEY `id_skim` (`id_skim`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `skim_kegiatan`
--
ALTER TABLE `skim_kegiatan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skim_ormawa`
--
ALTER TABLE `skim_ormawa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_skim`
--
ALTER TABLE `target_skim`
  ADD PRIMARY KEY (`ID_target`) USING BTREE,
  ADD KEY `id_proker` (`id_proker`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ormawa`
--
ALTER TABLE `ormawa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proker`
--
ALTER TABLE `proker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skim_kegiatan`
--
ALTER TABLE `skim_kegiatan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skim_ormawa`
--
ALTER TABLE `skim_ormawa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `target_skim`
--
ALTER TABLE `target_skim`
  MODIFY `ID_target` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `proker`
--
ALTER TABLE `proker`
  ADD CONSTRAINT `id_ormawa` FOREIGN KEY (`id_mawa`) REFERENCES `ormawa` (`ID`),
  ADD CONSTRAINT `id_skim` FOREIGN KEY (`id_skim`) REFERENCES `skim_kegiatan` (`ID`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `target_skim`
--
ALTER TABLE `target_skim`
  ADD CONSTRAINT `id_proker` FOREIGN KEY (`id_proker`) REFERENCES `proker` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
