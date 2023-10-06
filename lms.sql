-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 10:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_siswa`
--

CREATE TABLE `absensi_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pertemuan` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_kehadiran` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensi_siswa`
--

INSERT INTO `absensi_siswa` (`id`, `kode_pertemuan`, `kode_siswa`, `kode_kehadiran`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-10-05 20:10:07', '2023-10-05 20:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(255) DEFAULT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `jk` enum('pria','wanita') NOT NULL,
  `telp` varchar(255) NOT NULL,
  `kode_pelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `no_induk`, `nama_guru`, `jk`, `telp`, `kode_pelajaran`, `alamat`, `created_at`, `updated_at`) VALUES
(2, '2815285175', 'Machmul Pratama', 'pria', '0813616266766', 2, 'mahmul', '2023-10-05 09:27:55', '2023-10-05 09:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'senin', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(2, 'selasa', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(3, 'rabu', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(4, 'kamis', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(5, 'jumat', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(6, 'sabtu', '2023-02-18 16:26:08', '2023-02-18 16:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_hari` bigint(20) UNSIGNED DEFAULT NULL,
  `jam` varchar(255) NOT NULL,
  `kode_pelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_kelas` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kode_hari`, `jam`, `kode_pelajaran`, `kode_guru`, `kode_kelas`, `created_at`, `updated_at`) VALUES
(1, 1, '12:00 - 12:00', 2, NULL, 1, '2023-10-05 11:58:05', '2023-10-05 11:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ujian`
--

CREATE TABLE `jadwal_ujian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `kode_hari` bigint(20) UNSIGNED DEFAULT NULL,
  `jam` varchar(255) NOT NULL,
  `kode_pelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_ujian`
--

INSERT INTO `jadwal_ujian` (`id`, `tanggal`, `kode_hari`, `jam`, `kode_pelajaran`, `created_at`, `updated_at`) VALUES
(1, '2023-10-06', 1, '12:00 - 00:00', 2, '2023-10-05 09:26:38', '2023-10-05 09:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `ket`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '3C0', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(2, 'Izin', '0CF', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(3, 'Bertugas Keluar', 'F90', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(4, 'Sakit', 'FF0', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(5, 'Terlambat', '7F0', '2023-02-18 16:26:08', '2023-02-18 16:26:08'),
(6, 'Tanpa Keterangan', 'F00', '2023-02-18 16:26:08', '2023-02-18 16:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `walikelas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_guru` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `walikelas`, `created_at`, `updated_at`, `kode_guru`) VALUES
(1, 'X IPS 1', 4, '2023-10-05 09:19:50', '2023-10-05 09:19:50', NULL),
(2, 'X IPS 2', 1, '2023-10-05 09:19:58', '2023-10-05 09:19:58', NULL),
(3, 'XI IPS 1', 1, '2023-10-05 09:20:08', '2023-10-05 09:20:08', NULL),
(4, 'XI IPS 2', 2, '2023-10-05 09:20:14', '2023-10-05 09:20:14', NULL),
(5, 'XII IPS 1', 1, '2023-10-05 09:20:20', '2023-10-05 09:20:20', NULL),
(6, 'XII IPS 2', 4, '2023-10-05 09:20:31', '2023-10-05 09:20:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_16_125548_create_pelajaran_table', 1),
(6, '2022_02_16_130013_create_guru_table', 1),
(7, '2022_02_16_154651_create_kelas_table', 1),
(8, '2022_02_17_172836_create_hari_table', 1),
(9, '2022_02_17_173706_create_jadwal_table', 1),
(10, '2022_02_17_195856_create_siswa_table', 1),
(11, '2022_02_19_145902_create_kehadiran_table', 1),
(12, '2022_02_19_174847_create_pertemuan_table', 1),
(13, '2022_02_19_174915_create_absensi_siswa_table', 1),
(14, '2022_02_21_053059_create_jadwal_ujian_table', 1),
(15, '2022_02_24_154010_create_nilai_table', 1),
(16, '2022_02_25_193756_create_nilai_sikap_table', 1),
(17, '2022_02_28_094046_create_nilai_prestasi_table', 1),
(18, '2022_02_28_094407_create_nilai_ekstrakurikuler_table', 1),
(19, '2022_04_19_180026_add_wali_kelas_to_kelas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_kelas` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_pelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `semester` enum('1(Ganjil)','2(Genap)') NOT NULL,
  `nilai` int(11) NOT NULL,
  `predikat` char(1) NOT NULL,
  `desk_pengetahuan` varchar(255) DEFAULT NULL,
  `desk_keterampilan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `kode_siswa`, `kode_kelas`, `kode_guru`, `kode_pelajaran`, `semester`, `nilai`, `predikat`, `desk_pengetahuan`, `desk_keterampilan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 2, '1(Ganjil)', 85, 'B', 'Siswa pintar', 'Siswa aktif', '2023-10-05 20:39:56', '2023-10-05 20:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ekstrakurikuler`
--

CREATE TABLE `nilai_ekstrakurikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` bigint(20) UNSIGNED NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `semester` enum('1(Ganjil)','2(Genap)') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_prestasi`
--

CREATE TABLE `nilai_prestasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` bigint(20) UNSIGNED NOT NULL,
  `jenisKegiatan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `semester` enum('1(Ganjil)','2(Genap)') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sikap`
--

CREATE TABLE `nilai_sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `jenis_sikap` enum('spritual','sosial') NOT NULL,
  `predikat` varchar(255) NOT NULL,
  `desk` varchar(255) NOT NULL,
  `semester` enum('1(Ganjil)','2(Genap)') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mata_pelajaran` varchar(255) NOT NULL,
  `jumlah_jam` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `mata_pelajaran`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(2, 'bahasa inggris', '90', '2023-10-05 09:24:15', '2023-10-05 09:24:15'),
(3, 'matematika', '90', '2023-10-05 09:37:16', '2023-10-05 09:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pertemuan`
--

CREATE TABLE `pertemuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_kelas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pertemuan`
--

INSERT INTO `pertemuan` (`id`, `pertemuan`, `tanggal`, `kode_kelas`, `created_at`, `updated_at`) VALUES
(1, 'Pertama', '2023-07-01', 1, '2023-10-05 09:25:49', '2023-10-05 09:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `nama_sekolah` text DEFAULT NULL,
  `singkatan_sekolah` text DEFAULT NULL,
  `deskripsi_sekolah` text DEFAULT NULL,
  `logo_sekolah` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nama_sekolah`, `singkatan_sekolah`, `deskripsi_sekolah`, `logo_sekolah`, `created_at`, `updated_at`) VALUES
(1, 'SMK Negeri 1 Padangsidimpuan', 'SMKN 1', '<p>SMK Negeri 1 Padangsidimpuan adalah sekolah menengah kejuruan yang berlokasi di kota Padangsidimpuan, Sumatera Utara, Indonesia. Kami bangga menjadi salah satu lembaga pendidikan terkemuka di wilayah ini, memberikan pendidikan berkualitas tinggi kepada generasi muda untuk mempersiapkan mereka menghadapi masa depan yang cerah.</p><p>SMK Negeri 1 Padangsidimpuan bertujuan untuk menciptakan lulusan yang siap bersaing di dunia kerja atau melanjutkan pendidikan ke jenjang yang lebih tinggi. Kami berkomitmen untuk memberikan pendidikan berkualitas yang membantu siswa mencapai tujuan mereka. test<br></p><p>Selain pendidikan akademik, kami juga mendorong partisipasi siswa dalam berbagai kegiatan ekstrakurikuler, termasuk olahraga, seni, dan organisasi siswa. Hal ini bertujuan untuk mengembangkan kepribadian siswa secara holistik.<br></p>', 'logo.jpg', NULL, '2023-10-06 01:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `jk` enum('pria','wanita') NOT NULL,
  `telp` varchar(255) NOT NULL,
  `kode_kelas` bigint(20) UNSIGNED DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tmp_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `no_induk`, `nama_siswa`, `jk`, `telp`, `kode_kelas`, `alamat`, `tmp_lahir`, `tgl_lahir`, `created_at`, `updated_at`) VALUES
(1, '59275175', 'Ucok Pratama', 'pria', '0813616266766', 1, 'Jalan Menteng Raya', 'Padangsidimpuan', '2002-01-14', '2023-10-05 09:21:22', '2023-10-05 09:21:22'),
(2, '5215125', 'pratiwi', 'wanita', '08512751912241', 2, 'medan', 'medan', '2002-01-20', '2023-10-05 09:23:39', '2023-10-05 09:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'Admin', '2023-02-18 16:26:08', '$2y$10$kpAaN3mzBooCssRMa9yt9.OrTfL.2Ndawfu1T3DL0EyVmSyAFvD7e', NULL, '2023-02-18 16:26:08', '2023-10-06 01:25:15'),
(2, 'Machmul Pratama', 'mahmulpratama16@gmail.com', 'Siswa', NULL, '$2y$10$yapB9WDjfvP9zp2p./muYOtH1xmdyTcV2oOkIOPVsoQYZ8IcRiY42', NULL, '2023-10-05 09:08:27', '2023-10-05 09:08:27'),
(3, 'Guru 1', 'guru@gmail.com', 'Guru', NULL, '$2y$10$9bo.VSbf1652XvvLOnoCOOqxnx3WoPxwByCK4qkLd8dCdX5XP0fOi', NULL, '2023-10-05 09:08:51', '2023-10-05 09:08:51'),
(4, 'Machmul Pratama', 'wakel@gmail.com', 'WaliKelas', NULL, '$2y$10$X52JzJVtaFuuwZ0U9/xCT.lIUtyYqE0lgr0ByRAxuyie82M0WV0Tm', NULL, '2023-10-05 09:09:06', '2023-10-05 09:09:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensi_siswa_kode_siswa_foreign` (`kode_siswa`),
  ADD KEY `absensi_siswa_kode_kehadiran_foreign` (`kode_kehadiran`),
  ADD KEY `absensi_siswa_kode_pertemuan_foreign` (`kode_pertemuan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guru_no_induk_unique` (`no_induk`),
  ADD KEY `guru_kode_pelajaran_foreign` (`kode_pelajaran`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_kode_pelajaran_foreign` (`kode_pelajaran`),
  ADD KEY `jadwal_kode_guru_foreign` (`kode_guru`),
  ADD KEY `jadwal_kode_kelas_foreign` (`kode_kelas`),
  ADD KEY `jadwal_kode_hari_foreign` (`kode_hari`);

--
-- Indexes for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_ujian_kode_pelajaran_foreign` (`kode_pelajaran`),
  ADD KEY `jadwal_ujian_kode_hari_foreign` (`kode_hari`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_kode_guru_foreign` (`kode_guru`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_kode_siswa_foreign` (`kode_siswa`),
  ADD KEY `nilai_kode_kelas_foreign` (`kode_kelas`),
  ADD KEY `nilai_kode_guru_foreign` (`kode_guru`),
  ADD KEY `nilai_kode_pelajaran_foreign` (`kode_pelajaran`);

--
-- Indexes for table `nilai_ekstrakurikuler`
--
ALTER TABLE `nilai_ekstrakurikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_ekstrakurikuler_kode_siswa_foreign` (`kode_siswa`);

--
-- Indexes for table `nilai_prestasi`
--
ALTER TABLE `nilai_prestasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_prestasi_kode_siswa_foreign` (`kode_siswa`);

--
-- Indexes for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_sikap_kode_siswa_foreign` (`kode_siswa`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertemuan_kode_kelas_foreign` (`kode_kelas`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_kode_kelas_foreign` (`kode_kelas`);

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
-- AUTO_INCREMENT for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai_ekstrakurikuler`
--
ALTER TABLE `nilai_ekstrakurikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_prestasi`
--
ALTER TABLE `nilai_prestasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertemuan`
--
ALTER TABLE `pertemuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD CONSTRAINT `absensi_siswa_kode_kehadiran_foreign` FOREIGN KEY (`kode_kehadiran`) REFERENCES `kehadiran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absensi_siswa_kode_pertemuan_foreign` FOREIGN KEY (`kode_pertemuan`) REFERENCES `pertemuan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absensi_siswa_kode_siswa_foreign` FOREIGN KEY (`kode_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_kode_pelajaran_foreign` FOREIGN KEY (`kode_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_kode_guru_foreign` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_kode_hari_foreign` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`id`),
  ADD CONSTRAINT `jadwal_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_kode_pelajaran_foreign` FOREIGN KEY (`kode_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  ADD CONSTRAINT `jadwal_ujian_kode_hari_foreign` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`id`),
  ADD CONSTRAINT `jadwal_ujian_kode_pelajaran_foreign` FOREIGN KEY (`kode_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_kode_guru_foreign` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_kode_guru_foreign` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_kode_pelajaran_foreign` FOREIGN KEY (`kode_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_kode_siswa_foreign` FOREIGN KEY (`kode_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_ekstrakurikuler`
--
ALTER TABLE `nilai_ekstrakurikuler`
  ADD CONSTRAINT `nilai_ekstrakurikuler_kode_siswa_foreign` FOREIGN KEY (`kode_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_prestasi`
--
ALTER TABLE `nilai_prestasi`
  ADD CONSTRAINT `nilai_prestasi_kode_siswa_foreign` FOREIGN KEY (`kode_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD CONSTRAINT `nilai_sikap_kode_siswa_foreign` FOREIGN KEY (`kode_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD CONSTRAINT `pertemuan_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
