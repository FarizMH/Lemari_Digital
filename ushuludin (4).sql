-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2020 pada 15.04
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ushuludin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-01-02 10:31:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-03 06:11:30', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data Sasuke at Tambah Data Keluarga', '', 1, '2020-01-03 06:43:56', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data tentang figure at Tambah Data Karya Tulis', '', 1, '2020-01-03 06:44:49', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data Osis at Tambah Keterangan Organisasi', '', 1, '2020-01-03 06:45:44', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Tambah Data Pengalaman Kunjungan Luar Negeri', '', 1, '2020-01-03 06:46:22', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data Pelatihan Dasar Membuat Web at Tambah Data Kursus Latihan', '', 1, '2020-01-03 06:47:56', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data Herman at Tambah Data  Orang Tua', '', 1, '2020-01-03 06:48:52', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data Kegiatan Kerja Bakti at Tambah Pengalaman dan Kegiatan', '', 1, '2020-01-03 06:49:26', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data Fariz Maulana Herman at Tambah Pengalaman membingbing', '', 1, '2020-01-03 06:50:29', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data Dasar Pemrograman at Tambah Data Pengalaman Mengajar', '', 1, '2020-01-03 06:54:30', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data penelitian prilaku pemain Free Fire at Tambah Data Penelitian', '', 1, '2020-01-03 06:55:18', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Tambah Data Riwayat Jabatan', '', 1, '2020-01-03 06:56:59', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan/add-save', 'Add New Data  at Tambah Data Riwayat Kepangkatan', '', 1, '2020-01-03 06:58:39', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data UIN SGD at Tambah Data Riwayat Pendidikan', '', 1, '2020-01-03 07:00:15', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data kabul at Tambah Data Saudara Kandung', '', 1, '2020-01-03 07:01:43', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data penghargaa ipk tertinggi at Tambah Data Jasa dan Penghargaan', '', 1, '2020-01-03 07:02:50', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data Muhammad Diza Aulia at Tambah Pengalaman membingbing', '', 1, '2020-01-03 07:20:27', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Tambah Riwayat Pengalaman at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Kepangkatan</td><td>Tambah Riwayat Pengalaman</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-01-03 07:41:17', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Tambah Data Riwayat Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Riwayat Kepangkatan</td><td>Tambah Data Riwayat Pendidikan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2020-01-03 07:42:22', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/23', 'Delete data Tambah Data Riwayat Kepangkatan at Module Generator', '', 1, '2020-01-03 07:43:59', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data fariz at DOSEN', '', 1, '2020-01-03 08:04:29', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-03 08:04:46', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-03 08:05:16', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-03 08:05:31', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-03 08:05:39', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Karya Tulis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Karya Tulis</td><td>Karya Tulis</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-book</td></tr></tbody></table>', 1, '2020-01-03 08:48:14', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-03 21:28:00', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Data Keluarga at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Keluarga</td><td>Data Keluarga</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:35:46', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Keterangan Organisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Keterangan Organisasi</td><td>Keterangan Organisasi</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:37:46', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Tambah Data Pengalaman Kunjungan Luar Negeri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:38:34', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Data Kursus Latihan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Kursus Latihan</td><td>Data Kursus Latihan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:39:26', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Pengalaman Kunjungan Luar Negeri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Pengalaman Kunjungan Luar Negeri</td><td>Pengalaman Kunjungan Luar Negeri</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:39:44', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Data  Orang Tua at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data  Orang Tua</td><td>Data  Orang Tua</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:45:42', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pengalaman dan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Pengalaman dan Kegiatan</td><td>Pengalaman dan Kegiatan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:53:54', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Pengalaman membingbing at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Pengalaman membingbing</td><td>Pengalaman membingbing</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:57:31', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pengalaman dan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:57:44', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Pengalaman membimbing at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pengalaman membingbing</td><td>Pengalaman membimbing</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-01-03 21:58:34', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Pengalaman Mengajar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Pengalaman Mengajar</td><td>Pengalaman Mengajar</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:08:46', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Penelitian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Penelitian</td><td>Penelitian</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:09:25', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Riwayat Jabatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Riwayat Jabatan</td><td>Riwayat Jabatan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:10:12', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Riwayat Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Riwayat Pendidikan</td><td>Riwayat Pendidikan</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:13:25', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Riwayat Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:13:27', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Tambah Data Saudara Kandung at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:19:21', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Tambah Data Jasa dan Penghargaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:21:36', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Tambah Data Riwayat Kepangkatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:24:19', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Saudara Kandung at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Saudara Kandung</td><td>Saudara Kandung</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:30:31', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Jasa dan Penghargaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Jasa dan Penghargaan</td><td>Jasa dan Penghargaan</td></tr><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:30:43', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Riwayat Kepangkatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Data Riwayat Kepangkatan</td><td>Riwayat Kepangkatan</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-01-03 22:31:23', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data Prof.Dr.H.Dadang Kahmad, M Si at DOSEN', '', 1, '2020-01-03 22:38:04', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-03 22:39:21', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dadang_kahmad@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-03 22:39:24', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dadang_kahmad@crudbooster.com logout', '', 3, '2020-01-04 00:27:59', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 00:28:12', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-04 00:31:05', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dadang_kahmad@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-04 00:31:28', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dadang_kahmad@crudbooster.com logout', '', 3, '2020-01-04 00:35:10', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 00:40:34', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data udin at Anak', '', 1, '2020-01-04 00:55:59', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>18</td><td></td></tr></tbody></table>', 1, '2020-01-04 00:58:03', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-04 00:59:51', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dadang_kahmad@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-04 01:00:10', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak', 'Try view the data :name at Anak', '', 3, '2020-01-04 01:00:41', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dadang_kahmad@crudbooster.com logout', '', 3, '2020-01-04 01:00:55', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 01:01:54', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data dashboard at Statistic Builder', '', 1, '2020-01-04 06:23:11', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data dashboard admin at Statistic Builder', '', 1, '2020-01-04 06:25:52', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data dashboard at Menu Management', '', 1, '2020-01-04 06:26:44', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data dashboard admin at Menu Management', '', 1, '2020-01-04 06:27:17', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-04 06:27:32', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data dashboard admin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-04 06:27:43', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-04 06:27:51', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dadang_kahmad@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-04 06:27:58', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dadang_kahmad@crudbooster.com logout', '', 3, '2020-01-04 06:28:16', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 06:28:25', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-04 06:30:30', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 06:30:35', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 11:45:36', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/delete/3', 'Delete data Prof.Dr.H.Dadang Kahmad, M Si at DOSEN', '', 1, '2020-01-05 12:34:47', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 13:41:31', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 13:42:54', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 13:54:06', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 13:56:03', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 13:59:58', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:00:35', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:03:37', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:04:21', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:10:02', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:10:55', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:11:05', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 14:11:12', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 14:14:28', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:14:34', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data Prof.Dr.H.Dadang Kahmad, M Si at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>123456</td><td>$2y$10$A4GDwOUCh.0nl2HaYdY4vui1ka5XzSy5tEtfx09HhRWVJnO4FMkjC</td></tr><tr><td>status</td><td>activated</td><td></td></tr><tr><td>jabatan_terakhir</td><td>Guru Besar / Ketua Prodi Perbandingan Agama Jenjang S3 pada Prog. Pascasarjana</td><td>Guru Besar</td></tr><tr><td>pendidikan_terakhir</td><td>S.3</td><td>S3</td></tr><tr><td>gol_ruang</td><td>IV/d</td><td>4C</td></tr><tr><td>kgb_terakhir</td><td>Maksimal\nMaret 2011</td><td>MaksimalMaret 2011</td></tr></tbody></table>', 1, '2020-01-05 14:19:33', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:20:04', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:20:13', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:21:21', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:21:24', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:21:50', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:22:15', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:22:29', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:22:31', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data DOSEN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-01-05 14:23:23', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:23:28', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:23:37', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 3, '2020-01-05 14:23:42', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 3, '2020-01-05 14:23:47', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 3, '2020-01-05 14:23:48', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 3, '2020-01-05 14:23:50', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:24:29', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:24:31', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data DOSEN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-05 14:24:52', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data dashboard admin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-05 14:25:02', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:25:16', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 14:25:21', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 14:25:35', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:25:44', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:25:59', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:26:04', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data dashboard admin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-05 14:27:15', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:28:24', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 14:28:29', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 14:28:35', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:28:39', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data DOSEN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-05 14:28:56', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:29:01', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 14:29:06', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 14:30:02', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:30:52', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:32:06', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 14:32:10', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 2, '2020-01-05 14:32:18', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 14:32:35', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:33:56', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:34:27', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:35:00', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data Dr. H. Adeng Muchtar Ghazali,M.Ag at DOSEN', '', 1, '2020-01-05 14:37:26', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:37:33', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:38:45', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users', 'Try view the data :name at DOSEN', '', 3, '2020-01-05 14:40:07', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:40:26', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:40:29', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data Dr. H. Adeng Muchtar Ghazali,M.Ag at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-01/98d147cf59778e44e581621091f9e1ba.png</td></tr><tr><td>password</td><td>$2y$10$S/gfk5LNyzXSKC5GM7MAueDcLtA70CULEXh5GnW6pMCF/KG9UTopW</td><td></td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>nama</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>alamat_rumah</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-05 14:40:54', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 14:41:02', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 14:41:12', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 14:41:40', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 14:41:52', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data biodata at Statistic Builder', '', 1, '2020-01-05 14:47:45', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/delete/3', 'Delete data biodata at Statistic Builder', '', 1, '2020-01-05 14:48:18', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 21:52:49', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 21:54:51', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 21:54:59', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/2', 'Update data fariz at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$USp.ZRbRZ0kna7QbpjppyekZ8t5QlAZAfcKxuvfCF5i6yc0Aav2NW</td><td>$2y$10$ghXvAowXl6nZsJ1X7FZ/mutJxSSVLOpqS/tqywrOrpXkpErDQ9JXK</td></tr><tr><td>status</td><td>aktif</td><td></td></tr><tr><td>nama</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td>Bogor</td><td>Bandung</td></tr><tr><td>jk</td><td>laki-laki</td><td>Pria</td></tr><tr><td>s_nikah</td><td>sudah</td><td></td></tr><tr><td>s_kepegawaian</td><td>aktif</td><td>Aktif</td></tr><tr><td>jabatan_terakhir</td><td>Dosen</td><td>Asisten Ahli Madya</td></tr><tr><td>jurusan</td><td>Tekni Informatika</td><td></td></tr></tbody></table>', 2, '2020-01-05 21:58:24', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-05 21:58:49', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 21:58:54', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 21:59:48', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', '195210051977031004@uinsgd.ac.id login with IP Address 127.0.0.1', '', 3, '2020-01-05 21:59:54', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data Penelitian Tentang Prilaku anak 2020 at Karya Tulis', '', 3, '2020-01-05 22:16:03', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', '195210051977031004@uinsgd.ac.id logout', '', 3, '2020-01-05 22:16:51', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 22:16:54', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 22:17:54', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-05 22:18:00', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2020-01-06 05:48:59', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 05:49:03', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 05:49:43', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 05:50:06', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 05:52:20', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 05:57:19', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 05:57:59', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 05:58:30', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 06:02:07', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 06:03:30', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 06:03:58', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-06 20:47:05', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-06 21:42:38', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:15:12', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:16:08', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:16:12', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:26:06', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:30:01', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:31:06', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:31:18', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:32:36', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:33:06', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:34:04', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:35:36', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data gia at DOSEN', '', 1, '2020-01-06 23:38:25', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:40:10', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'gia@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-01-06 23:40:22', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data gia at Data Keluarga', '', 4, '2020-01-06 23:42:06', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'gia@crudbooster.com logout', '', 4, '2020-01-06 23:50:16', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:51:59', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data Wahyudin at DOSEN', '', 1, '2020-01-06 23:53:29', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data yudi at Users Management', '', 1, '2020-01-06 23:55:24', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:55:34', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 23:56:04', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-06 23:56:12', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'yudi@uinsgd.ac.id login with IP Address 127.0.0.1', '', 6, '2020-01-06 23:56:25', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'yudi@uinsgd.ac.id logout', '', 6, '2020-01-07 00:00:46', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 00:00:59', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-07 00:02:17', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 00:50:16', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-10 00:57:55', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-10 00:58:00', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-10 01:01:20', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 01:01:25', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-10 01:12:51', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-10 01:12:59', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 2, '2020-01-10 01:13:31', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 01:13:38', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data Dasar Pemrograman at Pengalaman Mengajar', '', 1, '2020-01-10 01:26:36', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data www at Data Keluarga', '', 1, '2020-01-10 01:30:21', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data sssjhk at Data Keluarga', '', 1, '2020-01-10 01:32:04', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/4', 'Update data sssjhk at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-10 01:32:52', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/2', 'Update data gia at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>dosen_id</td><td>4</td><td>1</td></tr></tbody></table>', 1, '2020-01-10 01:33:07', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/4', 'Update data sssjhk at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-10 01:33:28', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/4', 'Update data sssjhk at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-10 01:34:07', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/4', 'Update data sssjhk at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-10 01:35:33', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/4', 'Update data sssjhk at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>dosen_id</td><td>1</td><td>5</td></tr></tbody></table>', 1, '2020-01-10 01:36:35', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/edit-save/2', 'Update data Dasar Pemrograman at Pengalaman Mengajar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>dosen_id</td><td>1</td><td>5</td></tr></tbody></table>', 1, '2020-01-10 01:46:39', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/delete-image', 'Delete the image of Wahyudin at DOSEN', '', 1, '2020-01-10 04:17:40', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/5', 'Update data Wahyudin at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-01/wahyudin.png</td></tr><tr><td>password</td><td>$2y$10$byWrpP9wUeLPkFsbdhGKtOI8nCpy47s1ULF8Q35iX9sMjduJwBnym</td><td></td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>nama</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>alamat_rumah</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-10 04:18:18', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-01/logo_uin_png.png</td></tr><tr><td>password</td><td>$2y$10$.QjA5F.neI1F3aZc8ZjubuKjs8jruFyoZ3vJ1Usxq/bPJl9YxDrbC</td><td>$2y$10$yuw9cgGHRJJU2iLPtB9HYu7z0YRkGIUZlFDVhqHD5kJKrZYVURGyy</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>nama</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>nomor_kepegawaian</td><td></td><td></td></tr><tr><td>alamat_rumah</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-10 06:40:31', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-10 06:40:45', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 06:40:49', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-16 01:29:57', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-16 02:15:30', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-16 02:15:36', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-26 23:47:53', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-26 23:48:41', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-26 23:48:50', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Fariz Maulana Herman at Users Management', '', 1, '2020-01-26 23:51:56', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-26 23:52:26', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-01-26 23:52:30', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-28 07:48:35', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data bamang at DOSEN', '', 1, '2020-01-28 07:50:54', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data balbaosandAn at Karya Tulis', '', 1, '2020-01-28 07:51:39', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data bamang at Data Keluarga', '', 1, '2020-01-28 07:52:14', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data Osis at Tambah Keterangan Organisasi', '', 1, '2020-01-28 07:54:04', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Pengalaman Kunjungan Luar Negeri', '', 1, '2020-01-28 08:03:27', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data Pelatihan Dasar Membuat Web at Kursus Latihan', '', 1, '2020-01-28 08:03:59', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data Muhammad Diza Aulia at Data  Orang Tua', '', 1, '2020-01-28 08:04:35', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data Kegiatan Kerja Bakti at Pengalaman dan Kegiatan', '', 1, '2020-01-28 08:06:59', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data Muhammad Diza Aulia at Pengalaman membimbing', '', 1, '2020-01-28 08:08:50', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data Dasar Pemrograman at Pengalaman Mengajar', '', 1, '2020-01-28 08:10:30', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data penelitian prilaku pemain Free Fire at Tambah Data Penelitian', '', 1, '2020-01-28 08:11:45', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 1, '2020-01-28 08:12:29', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data SMAN 2 CIleungsi at Riwayat Pendidikan', '', 1, '2020-01-28 08:14:02', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data Muhammad Diza Aulia at Saudara Kandung', '', 1, '2020-01-28 08:14:49', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data penghargaa ipk tertinggi at Tanda Jasa dan Penghargaan', '', 1, '2020-01-28 08:15:36', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 1, '2020-01-28 08:16:30', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data Muhammad Diza Aulia at Anak', '', 1, '2020-01-28 08:22:43', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/delete/8', 'Delete data bamang at DOSEN', '', 1, '2020-01-28 08:24:00', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/action-selected', 'Delete data 6,4,3 at DOSEN', '', 1, '2020-01-28 08:24:19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Karya Tulis', 'Route', 'AdminTbKaryaIlmiahControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 2, '2020-01-03 06:12:37', '2020-01-03 08:48:14'),
(2, 'Data Keluarga', 'Route', 'AdminTbKeluargaControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 3, '2020-01-03 06:16:39', '2020-01-03 21:35:46'),
(3, 'Keterangan Organisasi', 'Route', 'AdminTbKetOrganisasiControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 4, '2020-01-03 06:18:02', '2020-01-03 21:37:46'),
(4, 'Pengalaman Kunjungan Luar Negeri', 'Route', 'AdminTbKunjunganLuarNegeriControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 5, '2020-01-03 06:19:22', '2020-01-03 21:39:44'),
(5, 'Data Kursus Latihan', 'Route', 'AdminTbKursusLatihanControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 6, '2020-01-03 06:21:12', '2020-01-03 21:39:25'),
(6, 'Data  Orang Tua', 'Route', 'AdminTbOrangTuaControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 7, '2020-01-03 06:22:40', '2020-01-03 21:45:41'),
(7, 'Pengalaman dan Kegiatan', 'Route', 'AdminTbPengalamanKegiatanControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 8, '2020-01-03 06:23:52', '2020-01-03 21:57:43'),
(8, 'Pengalaman membimbing', 'Route', 'AdminTbPengalamanMembingbingControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 9, '2020-01-03 06:25:22', '2020-01-03 21:58:34'),
(9, 'Pengalaman Mengajar', 'Route', 'AdminTbPengalamanMengajarControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 10, '2020-01-03 06:26:57', '2020-01-03 22:08:46'),
(10, 'Penelitian', 'Route', 'AdminTbPengalamanPenelitianControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 11, '2020-01-03 06:28:15', '2020-01-03 22:09:25'),
(11, 'Riwayat Jabatan', 'Route', 'AdminTbRiwayatJabatanControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 12, '2020-01-03 06:29:44', '2020-01-03 22:10:12'),
(13, 'Riwayat Pendidikan', 'Route', 'AdminTbRiwayatPendidikanControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 13, '2020-01-03 06:32:27', '2020-01-03 22:13:27'),
(14, 'Saudara Kandung', 'Route', 'AdminTbSaudaraKandungControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 14, '2020-01-03 06:35:28', '2020-01-03 22:30:31'),
(15, 'Jasa dan Penghargaan', 'Route', 'AdminTbTandaJasaPenghargaanControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 15, '2020-01-03 06:36:38', '2020-01-03 22:30:43'),
(16, 'Riwayat Kepangkatan', 'Route', 'AdminTbRiwayatKepangkatan27ControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 16, '2020-01-03 07:44:24', '2020-01-03 22:31:23'),
(17, 'DOSEN', 'Route', 'AdminCmsUsers1ControllerGetIndex', 'normal', 'fa fa-user', 0, 1, 0, 1, 1, '2020-01-03 07:50:55', '2020-01-05 14:28:56'),
(18, 'Anak', 'Route', 'AdminTbAnakControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 17, '2020-01-04 00:40:57', '2020-01-04 00:58:03'),
(19, 'dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-print', 0, 1, 1, 1, NULL, '2020-01-04 06:26:44', '2020-01-04 06:27:32'),
(20, 'dashboard admin', 'Statistic', 'statistic_builder/show/dashboard-admin', 'normal', 'fa fa-print', 0, 1, 1, 1, NULL, '2020-01-04 06:27:17', '2020-01-05 14:27:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(16, 12, 1),
(20, 1, 2),
(21, 1, 1),
(22, 2, 2),
(23, 2, 1),
(24, 3, 2),
(25, 3, 1),
(28, 5, 2),
(29, 5, 1),
(30, 4, 2),
(31, 4, 1),
(32, 6, 2),
(33, 6, 1),
(36, 7, 2),
(37, 7, 1),
(38, 8, 2),
(39, 8, 1),
(40, 9, 2),
(41, 9, 1),
(42, 10, 2),
(43, 10, 1),
(44, 11, 2),
(45, 11, 1),
(48, 13, 2),
(49, 13, 1),
(56, 14, 2),
(57, 14, 1),
(58, 15, 2),
(59, 15, 1),
(60, 16, 2),
(61, 16, 1),
(63, 18, 2),
(64, 18, 1),
(66, NULL, 1),
(67, 19, 2),
(73, 20, 1),
(74, 17, 2),
(75, 17, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-01-02 10:31:02', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-01-02 10:31:02', NULL, NULL),
(12, 'Karya Tulis', 'fa fa-glass', 'tb_karya_ilmiah', 'tb_karya_ilmiah', 'AdminTbKaryaIlmiahController', 0, 0, '2020-01-03 06:12:37', NULL, NULL),
(13, 'Data Keluarga', 'fa fa-glass', 'tb_keluarga', 'tb_keluarga', 'AdminTbKeluargaController', 0, 0, '2020-01-03 06:16:39', NULL, NULL),
(14, 'Tambah Keterangan Organisasi', 'fa fa-glass', 'tb_ket_organisasi', 'tb_ket_organisasi', 'AdminTbKetOrganisasiController', 0, 0, '2020-01-03 06:18:02', NULL, NULL),
(15, 'Pengalaman Kunjungan Luar Negeri', 'fa fa-edit', 'tb_kunjungan_luar_negeri', 'tb_kunjungan_luar_negeri', 'AdminTbKunjunganLuarNegeriController', 0, 0, '2020-01-03 06:19:22', NULL, NULL),
(16, 'Kursus Latihan', 'fa fa-edit', 'tb_kursus_latihan', 'tb_kursus_latihan', 'AdminTbKursusLatihanController', 0, 0, '2020-01-03 06:21:12', NULL, NULL),
(17, 'Data  Orang Tua', 'fa fa-edit', 'tb_orang_tua', 'tb_orang_tua', 'AdminTbOrangTuaController', 0, 0, '2020-01-03 06:22:40', NULL, NULL),
(18, 'Pengalaman dan Kegiatan', 'fa fa-edit', 'tb_pengalaman_kegiatan', 'tb_pengalaman_kegiatan', 'AdminTbPengalamanKegiatanController', 0, 0, '2020-01-03 06:23:52', NULL, NULL),
(19, 'Pengalaman membimbing', 'fa fa-edit', 'tb_pengalaman_membingbing', 'tb_pengalaman_membingbing', 'AdminTbPengalamanMembingbingController', 0, 0, '2020-01-03 06:25:22', NULL, NULL),
(20, 'Pengalaman Mengajar', 'fa fa-edit', 'tb_pengalaman_mengajar', 'tb_pengalaman_mengajar', 'AdminTbPengalamanMengajarController', 0, 0, '2020-01-03 06:26:56', NULL, NULL),
(21, 'Tambah Data Penelitian', 'fa fa-glass', 'tb_pengalaman_penelitian', 'tb_pengalaman_penelitian', 'AdminTbPengalamanPenelitianController', 0, 0, '2020-01-03 06:28:14', NULL, NULL),
(22, 'Riwayat Jabatan', 'fa fa-glass', 'tb_riwayat_jabatan', 'tb_riwayat_jabatan', 'AdminTbRiwayatJabatanController', 0, 0, '2020-01-03 06:29:44', NULL, NULL),
(23, 'Tambah Data Riwayat Kepangkatan', 'fa fa-glass', 'tb_riwayat_kepangkatan', 'tb_riwayat_kepangkatan', 'AdminTbRiwayatKepangkatanController', 0, 0, '2020-01-03 06:30:51', NULL, '2020-01-03 07:43:59'),
(24, 'Riwayat Pendidikan', 'fa fa-edit', 'tb_riwayat_pendidikan', 'tb_riwayat_pendidikan', 'AdminTbRiwayatPendidikanController', 0, 0, '2020-01-03 06:32:26', NULL, NULL),
(25, 'Saudara Kandung', 'fa fa-edit', 'tb_saudara_kandung', 'tb_saudara_kandung', 'AdminTbSaudaraKandungController', 0, 0, '2020-01-03 06:35:28', NULL, NULL),
(26, 'Tanda Jasa dan Penghargaan', 'fa fa-edit', 'tb_tanda_jasa_penghargaan', 'tb_tanda_jasa_penghargaan', 'AdminTbTandaJasaPenghargaanController', 0, 0, '2020-01-03 06:36:38', NULL, NULL),
(27, 'Riwayat Kepangkatan', 'fa fa-edit', 'tb_riwayat_kepangkatan27', 'tb_riwayat_kepangkatan', 'AdminTbRiwayatKepangkatan27Controller', 0, 0, '2020-01-03 07:44:24', NULL, NULL),
(28, 'DOSEN', 'fa fa-user', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2020-01-03 07:50:54', NULL, NULL),
(29, 'Anak', 'fa fa-glass', 'tb_anak', 'tb_anak', 'AdminTbAnakController', 0, 0, '2020-01-04 00:40:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-01-02 10:31:02', NULL),
(2, 'DOSEN', 0, 'skin-yellow', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-01-02 10:31:02', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-01-02 10:31:02', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-01-02 10:31:03', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-01-02 10:31:03', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-01-02 10:31:03', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-01-02 10:31:03', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-01-02 10:31:03', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-01-02 10:31:03', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-01-02 10:31:03', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-01-02 10:31:03', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-01-02 10:31:03', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(46, 1, 1, 1, 1, 1, 2, 29, NULL, NULL),
(47, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(48, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(49, 1, 0, 1, 1, 0, 2, 28, NULL, NULL),
(50, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(51, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(52, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(55, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(56, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(57, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(58, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(59, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(60, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(61, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(62, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(63, 0, 0, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-02 10:31:03', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-02 10:31:03', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2020-01/aa477a62ea4ba22d9f38974c311faca5.jpg', 'upload_image', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-01-02 10:31:03', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-01-02 10:31:03', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'USHULUDDIN', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-01-02 10:31:03', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-01/bbfd329718843be4c795946e8b2a070a.png', 'upload_image', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard', '2020-01-04 06:23:11', NULL),
(2, 'dashboard admin', 'dashboard-admin', '2020-01-04 06:25:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '2e31929fc1c28d7c655bfe87bb9593cf', 'panelcustom', NULL, 0, 'Untitled', NULL, '2020-01-04 06:23:45', NULL),
(2, 1, '3196918a33519ae583d4fed303d4966f', 'panelcustom', 'area1', 0, NULL, '{\"name\":\"print\",\"type\":\"route\",\"value\":\"print\"}', '2020-01-04 06:23:56', NULL),
(3, 3, 'a5a649ce6824fe6cea9a6d7916b5a26a', 'panelcustom', 'area2', 0, 'Untitled', NULL, '2020-01-05 14:48:10', NULL),
(4, 2, '28c625da5d15457b8cedb512f23439cd', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:09', NULL),
(5, 2, '6829dd1c2218004404a6468e958b2918', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:15', NULL),
(6, 2, '09b6031d2ec7c190d4101e7f354cf6a0', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:22', NULL),
(7, 2, '44fb39d22fad50cca1b7c588f5c4279f', 'panelarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:28', NULL),
(8, 2, '8936c3b0f2e09730b2041d66246585f5', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:34', NULL),
(9, 2, 'ee1111525ddccff75a02217421ac76c3', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-01-10 06:14:39', NULL),
(10, 2, 'd66e8fc6cc5f7cd713ed012c9a334e67', 'chartbar', 'area5', 0, NULL, '{\"name\":\"GRAFIK GELAR\",\"sql\":\"SELECT COUNT(*) AS value , pendidikan_terakhir AS label\\tFROM `cms_users` GROUP BY pendidikan_terakhir\",\"area_name\":\"GELAR\",\"goals\":null}', '2020-01-10 06:14:57', NULL),
(11, 2, '8f6688a52163cdb80ed9135cd267e5f9', 'smallbox', 'area1', 0, NULL, '{\"name\":\"JUMLAH DOSEN\",\"icon\":\"ion-person\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM `cms_users`\"}', '2020-01-10 06:18:59', NULL),
(12, 2, 'f2af47a4d05bcc90f04dc73ba9534870', 'smallbox', 'area2', 0, NULL, '{\"name\":\"JUMLAH PRIA\",\"icon\":\"ion-man\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM `cms_users` WHERE jk=\'pria\'\"}', '2020-01-10 06:24:16', NULL),
(13, 2, 'ae5e10647ba06b82ab6149f2a1757876', 'smallbox', 'area3', 0, NULL, '{\"name\":\"JUMLAH WANITA\",\"icon\":\"ion-woman\",\"color\":\"bg-yellow\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM `cms_users` WHERE jk=\'wanita\'\"}', '2020-01-10 06:24:28', NULL),
(14, 2, 'b5ddccaa68c77c2be0fef17dea32a0f6', 'chartbar', 'area5', 1, NULL, '{\"name\":\"GRAFIK GOLONGAN\",\"sql\":\"SELECT COUNT(*) AS value , gol_ruang AS label\\tFROM `cms_users` GROUP BY gol_ruang\",\"area_name\":\"GOLONGAN\",\"goals\":null}', '2020-01-10 06:35:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_nikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_kepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kgb_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_kepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_rumah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `nip`, `tgl_lahir`, `tempat_lahir`, `jk`, `agama`, `s_nikah`, `s_kepegawaian`, `jenis_kepegawaian`, `satuan_kerja`, `jabatan_terakhir`, `pendidikan_terakhir`, `gol_ruang`, `satuan_organisasi`, `kgb_terakhir`, `nomor_kepegawaian`, `alamat_rumah`, `no_tlp`, `jurusan`, `fakultas`) VALUES
(1, 'Super Admin', 'uploads/1/2020-01/logo_uin_png.png', 'admin@crudbooster.com', '$2y$10$yuw9cgGHRJJU2iLPtB9HYu7z0YRkGIUZlFDVhqHD5kJKrZYVURGyy', 1, '2020-01-02 10:31:02', '2020-01-10 06:40:31', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'fariz', 'uploads/1/2020-01/98d147cf59778e44e581621091f9e1ba.png', 'fariz.herman@gmail.com', '$2y$10$ghXvAowXl6nZsJ1X7FZ/mutJxSSVLOpqS/tqywrOrpXkpErDQ9JXK', 2, '2020-01-03 08:04:29', '2020-01-05 21:58:24', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Wahyudin', 'uploads/1/2020-01/wahyudin.png', 'yudi@crudbooster.com', '$2y$10$byWrpP9wUeLPkFsbdhGKtOI8nCpy47s1ULF8Q35iX9sMjduJwBnym', 2, '2020-01-06 23:53:29', '2020-01-10 04:18:18', 'Aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Fariz Maulana Herman', 'uploads/1/2020-01/98d147cf59778e44e581621091f9e1ba.png', 'farizmaulanaherman@gmail.com', '$2y$10$miK.33AYGEQd5VIRxK7FDevjQWwo7Dogam3AcDRjNJ92o9/RTEuku', 1, '2020-01-26 23:51:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(43, '2020_01_02_174610_tb_dosen', 2),
(44, '2020_01_02_181938_tb_keluarga', 2),
(45, '2020_01_02_183941_tb_orang_tua', 2),
(46, '2020_01_02_184915_tb_saudara_kandung', 2),
(47, '2020_01_02_185528_tb_riwayat_pendidikan', 2),
(48, '2020_01_02_190018_tb_kursus_latihan', 2),
(49, '2020_01_02_191103_tb_riwayat_kepangkatan', 2),
(50, '2020_01_02_191548_tb_riwayat_jabatan', 2),
(51, '2020_01_02_192027_tb_tanda_jasa_penghargaan', 2),
(52, '2020_01_02_192630_tb_kunjungan_luar_negeri', 2),
(53, '2020_01_02_193247_tb_pengalaman_mengajar', 2),
(54, '2020_01_02_194015_tb_pengalaman_kegiatan', 2),
(55, '2020_01_02_194239_tb_pengalaman_membingbing', 2),
(56, '2020_01_02_194929_tb_pengalaman_penelitian', 2),
(57, '2020_01_02_195337_tb_karya_ilmiah', 2),
(58, '2020_01_02_195744_tb_ket_organisasi', 2),
(59, '2020_01_04_073556_tb_anak', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anak`
--

CREATE TABLE `tb_anak` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_nikah` date NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_anak`
--

INSERT INTO `tb_anak` (`id`, `dosen_id`, `nama`, `tempat_lahir`, `tgl_lahir`, `tgl_nikah`, `pekerjaan`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muhammad Diza Aulia', 'Kuningan', '2020-01-26', '2020-01-26', 'Buruh', 'Hidup', '2020-01-28 08:22:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karya_ilmiah`
--

CREATE TABLE `tb_karya_ilmiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluarga`
--

CREATE TABLE `tb_keluarga` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_nikah` date NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ket_organisasi`
--

CREATE TABLE `tb_ket_organisasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kedudukan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pimpinan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kunjungan_luar_negeri`
--

CREATE TABLE `tb_kunjungan_luar_negeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `lamanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yg_membiayai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kursus_latihan`
--

CREATE TABLE `tb_kursus_latihan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama_kursus_latihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_orang_tua`
--

CREATE TABLE `tb_orang_tua` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengalaman_kegiatan`
--

CREATE TABLE `tb_pengalaman_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengalaman_membingbing`
--

CREATE TABLE `tb_pengalaman_membingbing` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis_bimbingan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `jml_pertemuan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengalaman_mengajar`
--

CREATE TABLE `tb_pengalaman_mengajar` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `kode_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rentang_mulai` date NOT NULL,
  `rentang_akhir` date NOT NULL,
  `sk_mengajar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` int(11) NOT NULL,
  `ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mengajar_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengalaman_penelitian`
--

CREATE TABLE `tb_pengalaman_penelitian` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `tahun` year(4) NOT NULL,
  `judul_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_jabatan`
--

CREATE TABLE `tb_riwayat_jabatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmt` date NOT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji_pokok` double NOT NULL,
  `surat_keputusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_kepangkatan`
--

CREATE TABLE `tb_riwayat_kepangkatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sk` bigint(20) NOT NULL,
  `tgl_sk` date NOT NULL,
  `tmt_sk` date NOT NULL,
  `gaji` double NOT NULL,
  `pak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_pendidikan`
--

CREATE TABLE `tb_riwayat_pendidikan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `tingkat_pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sekolah_pt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_saudara_kandung`
--

CREATE TABLE `tb_saudara_kandung` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanda_jasa_penghargaan`
--

CREATE TABLE `tb_tanda_jasa_penghargaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tanda_jasa_penghargaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `pemberi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_users_nip_unique` (`nip`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_anak`
--
ALTER TABLE `tb_anak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_anak_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_karya_ilmiah`
--
ALTER TABLE `tb_karya_ilmiah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_karya_ilmiah_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_keluarga`
--
ALTER TABLE `tb_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_keluarga_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_ket_organisasi`
--
ALTER TABLE `tb_ket_organisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_ket_organisasi_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_kunjungan_luar_negeri`
--
ALTER TABLE `tb_kunjungan_luar_negeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kunjungan_luar_negeri_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_kursus_latihan`
--
ALTER TABLE `tb_kursus_latihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kursus_latihan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orang_tua_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_pengalaman_kegiatan`
--
ALTER TABLE `tb_pengalaman_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengalaman_kegiatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_pengalaman_membingbing`
--
ALTER TABLE `tb_pengalaman_membingbing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengalaman_membingbing_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_pengalaman_mengajar`
--
ALTER TABLE `tb_pengalaman_mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengalaman_mengajar_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_pengalaman_penelitian`
--
ALTER TABLE `tb_pengalaman_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengalaman_penelitian_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_riwayat_jabatan`
--
ALTER TABLE `tb_riwayat_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_riwayat_jabatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_riwayat_kepangkatan`
--
ALTER TABLE `tb_riwayat_kepangkatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_riwayat_kepangkatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_riwayat_pendidikan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_saudara_kandung`
--
ALTER TABLE `tb_saudara_kandung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_saudara_kandung_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tb_tanda_jasa_penghargaan`
--
ALTER TABLE `tb_tanda_jasa_penghargaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_tanda_jasa_penghargaan_dosen_id_foreign` (`dosen_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `tb_anak`
--
ALTER TABLE `tb_anak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_karya_ilmiah`
--
ALTER TABLE `tb_karya_ilmiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_keluarga`
--
ALTER TABLE `tb_keluarga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_ket_organisasi`
--
ALTER TABLE `tb_ket_organisasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kunjungan_luar_negeri`
--
ALTER TABLE `tb_kunjungan_luar_negeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kursus_latihan`
--
ALTER TABLE `tb_kursus_latihan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_kegiatan`
--
ALTER TABLE `tb_pengalaman_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_membingbing`
--
ALTER TABLE `tb_pengalaman_membingbing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_mengajar`
--
ALTER TABLE `tb_pengalaman_mengajar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_penelitian`
--
ALTER TABLE `tb_pengalaman_penelitian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_jabatan`
--
ALTER TABLE `tb_riwayat_jabatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_kepangkatan`
--
ALTER TABLE `tb_riwayat_kepangkatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_saudara_kandung`
--
ALTER TABLE `tb_saudara_kandung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_tanda_jasa_penghargaan`
--
ALTER TABLE `tb_tanda_jasa_penghargaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_anak`
--
ALTER TABLE `tb_anak`
  ADD CONSTRAINT `tb_anak_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_karya_ilmiah`
--
ALTER TABLE `tb_karya_ilmiah`
  ADD CONSTRAINT `tb_karya_ilmiah_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_keluarga`
--
ALTER TABLE `tb_keluarga`
  ADD CONSTRAINT `tb_keluarga_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_ket_organisasi`
--
ALTER TABLE `tb_ket_organisasi`
  ADD CONSTRAINT `tb_ket_organisasi_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kunjungan_luar_negeri`
--
ALTER TABLE `tb_kunjungan_luar_negeri`
  ADD CONSTRAINT `tb_kunjungan_luar_negeri_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kursus_latihan`
--
ALTER TABLE `tb_kursus_latihan`
  ADD CONSTRAINT `tb_kursus_latihan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  ADD CONSTRAINT `tb_orang_tua_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengalaman_kegiatan`
--
ALTER TABLE `tb_pengalaman_kegiatan`
  ADD CONSTRAINT `tb_pengalaman_kegiatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengalaman_membingbing`
--
ALTER TABLE `tb_pengalaman_membingbing`
  ADD CONSTRAINT `tb_pengalaman_membingbing_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengalaman_mengajar`
--
ALTER TABLE `tb_pengalaman_mengajar`
  ADD CONSTRAINT `tb_pengalaman_mengajar_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengalaman_penelitian`
--
ALTER TABLE `tb_pengalaman_penelitian`
  ADD CONSTRAINT `tb_pengalaman_penelitian_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_jabatan`
--
ALTER TABLE `tb_riwayat_jabatan`
  ADD CONSTRAINT `tb_riwayat_jabatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_kepangkatan`
--
ALTER TABLE `tb_riwayat_kepangkatan`
  ADD CONSTRAINT `tb_riwayat_kepangkatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  ADD CONSTRAINT `tb_riwayat_pendidikan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_saudara_kandung`
--
ALTER TABLE `tb_saudara_kandung`
  ADD CONSTRAINT `tb_saudara_kandung_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_tanda_jasa_penghargaan`
--
ALTER TABLE `tb_tanda_jasa_penghargaan`
  ADD CONSTRAINT `tb_tanda_jasa_penghargaan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
