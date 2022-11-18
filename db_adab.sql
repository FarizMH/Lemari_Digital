-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2020 pada 04.36
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
-- Database: `db_adab`
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
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/action-selected', 'Delete data 6,4,3 at DOSEN', '', 1, '2020-01-28 08:24:19', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 04:11:25', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-02 04:15:07', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 04:15:15', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-02 04:15:29', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 04:17:34', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-02 04:17:46', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 04:26:55', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data Dasar Pemrograman at Pengalaman Mengajar', '', 1, '2020-02-02 05:42:57', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 20:24:01', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/5', 'Update data Wahyudin at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$byWrpP9wUeLPkFsbdhGKtOI8nCpy47s1ULF8Q35iX9sMjduJwBnym</td><td></td></tr><tr><td>nip</td><td></td><td>196707012014121004</td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td>Pria</td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td>Aktif</td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td>Guru Besar</td></tr><tr><td>pendidikan_terakhir</td><td></td><td>S3</td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td>lupa</td></tr><tr><td>nomor_kepegawaian</td><td></td><td>142131</td></tr><tr><td>alamat_rumah</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td>ushuludin</td></tr></tbody></table>', 1, '2020-02-03 02:22:05', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 05:39:14', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data dashboard admin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-04 05:44:31', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data DOSEN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-04 05:44:44', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Karya Tulis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:44:58', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Data Keluarga at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:45:35', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Keterangan Organisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:45:55', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Pengalaman Kunjungan Luar Negeri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:46:40', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Data Kursus Latihan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:46:56', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Data  Orang Tua at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:47:11', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pengalaman dan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:47:24', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Pengalaman membimbing at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:47:39', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Pengalaman Mengajar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:47:56', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Penelitian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:48:15', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Riwayat Jabatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:48:29', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Riwayat Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:48:43', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Saudara Kandung at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:48:56', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Jasa dan Penghargaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:49:16', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Riwayat Kepangkatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:49:30', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>17</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:49:45', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data akun dosen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>18</td><td></td></tr></tbody></table>', 1, '2020-02-04 05:50:01', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users30/add-save', 'Add New Data dosen2 at akun dosen', '', 1, '2020-02-04 05:50:58', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 05:52:25', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin2@crudbooster.com login with IP Address 127.0.0.1', '', 9, '2020-02-04 05:52:33', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users30/add-save', 'Add New Data dosen1 at akun dosen', '', 9, '2020-02-04 05:53:48', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin2@crudbooster.com logout', '', 9, '2020-02-04 07:56:38', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 07:56:42', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 08:10:18', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dosen1@crudbooster.com login with IP Address 127.0.0.1', '', 10, '2020-02-04 08:10:45', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dosen1@crudbooster.com logout', '', 10, '2020-02-04 08:13:29', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 08:13:32', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/10', 'Update data dosen1 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu</td><td></td></tr><tr><td>nip</td><td></td><td>196707012014121009</td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td>Pria</td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td>Aktif</td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td>Asisten Ahli Madya</td></tr><tr><td>pendidikan_terakhir</td><td></td><td>S3</td></tr><tr><td>gol_ruang</td><td></td><td>4A</td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td>lupa</td></tr><tr><td>nomor_kepegawaian</td><td></td><td>7788HHHF</td></tr><tr><td>no_tlp</td><td></td><td>+6281930662121</td></tr><tr><td>jurusan</td><td></td><td>STUDI AGAMA-AGAMA</td></tr><tr><td>fakultas</td><td></td><td>USHULUDDIN</td></tr><tr><td>jalan</td><td></td><td>JL CILEUNGI-JONGGOL</td></tr><tr><td>kelurahan</td><td></td><td>mekarsari</td></tr><tr><td>kabupaten</td><td></td><td>Kuningan</td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td>jawa barat</td></tr><tr><td>berat_badan</td><td></td><td>90 KG</td></tr><tr><td>warna_rambut</td><td></td><td>hitam</td></tr><tr><td>bentuk_wajah</td><td></td><td>bulat</td></tr><tr><td>warna_kulit</td><td></td><td>sawo mateng</td></tr><tr><td>ciri</td><td></td><td>bekas luka diwajah</td></tr><tr><td>cacat_tubuh</td><td></td><td>tidak ada</td></tr><tr><td>kegemaran</td><td></td><td>koleksi figure</td></tr></tbody></table>', 1, '2020-02-04 08:19:09', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/10', 'Update data dosen1 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu</td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td>PNS</td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-04 08:30:27', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/10', 'Update data dosen1 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu</td><td></td></tr><tr><td>tgl_lahir</td><td></td><td>2020-02-23</td></tr><tr><td>tempat_lahir</td><td></td><td>Bogor</td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-04 08:33:59', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/10', 'Update data dosen1 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu</td><td></td></tr><tr><td>agama</td><td></td><td>islam</td></tr><tr><td>s_nikah</td><td></td><td>Belum</td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-04 08:38:17', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/10', 'Update data dosen1 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu</td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>jurusan</td><td>STUDI AGAMA-AGAMA</td><td>Ilmu Tafsir dan Qur</td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td>ushuludin</td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td>cileungsi</td></tr></tbody></table>', 1, '2020-02-04 08:54:56', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data asmfm at Riwayat Pendidikan', '', 1, '2020-02-04 09:15:58', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data alsnf;lakn at Riwayat Pendidikan', '', 1, '2020-02-04 09:17:05', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data alsnf;akn at Riwayat Pendidikan', '', 1, '2020-02-04 09:17:20', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data kanfsl at Riwayat Pendidikan', '', 1, '2020-02-04 09:17:42', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data ajhdqkjab at Kursus Latihan', '', 1, '2020-02-04 09:25:58', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data kjsbflaf;lkan at Kursus Latihan', '', 1, '2020-02-04 09:27:08', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data lsknvlskn at Kursus Latihan', '', 1, '2020-02-04 09:27:23', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/edit-save/4', 'Update data lsknvlskn at Kursus Latihan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_kursus</td><td></td><td>26</td></tr><tr><td>ijazah_kursus</td><td></td><td>uploads/1/2020-02/98d147cf59778e44e581621091f9e1ba.png</td></tr></tbody></table>', 1, '2020-02-04 09:45:38', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data klnxkvn at Tambah Keterangan Organisasi', '', 1, '2020-02-04 09:57:57', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data dmnv;snvl at Tambah Keterangan Organisasi', '', 1, '2020-02-04 09:58:17', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data slvns;n at Tambah Keterangan Organisasi', '', 1, '2020-02-04 09:58:33', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 12:56:29', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 1, '2020-02-04 12:58:20', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 1, '2020-02-04 12:58:48', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/edit-save/3', 'Update data  at Riwayat Kepangkatan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>pejabat</td><td></td><td>kjbkjhjjbl</td></tr></tbody></table>', 1, '2020-02-04 13:01:20', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 1, '2020-02-04 13:04:56', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 1, '2020-02-04 13:05:22', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/edit-save/3', 'Update data  at Riwayat Jabatan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gol_ruang</td><td>IV A</td><td>3D</td></tr><tr><td>tgl_mulai</td><td></td><td>2020-02-23</td></tr><tr><td>pejabat</td><td></td><td>jkbljkb</td></tr></tbody></table>', 1, '2020-02-04 13:20:07', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/edit-save/2', 'Update data  at Riwayat Jabatan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_mulai</td><td></td><td>2020-02-24</td></tr><tr><td>pejabat</td><td></td><td>sFAD</td></tr><tr><td>no_sk</td><td></td><td>123AFGS</td></tr></tbody></table>', 1, '2020-02-04 13:27:09', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data NLVNL;KND;FV at Tanda Jasa dan Penghargaan', '', 1, '2020-02-04 13:30:08', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data SFLKFNLWB at Tanda Jasa dan Penghargaan', '', 1, '2020-02-04 13:30:23', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data svlsn at Data Keluarga', '', 1, '2020-02-04 13:35:03', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data djvblksj at Data Keluarga', '', 1, '2020-02-04 13:35:29', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 23:20:42', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data lnlkh at Anak', '', 1, '2020-02-04 23:22:44', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data ndvsnvlkn at Anak', '', 1, '2020-02-04 23:23:15', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data jvnslknvsj at Anak', '', 1, '2020-02-04 23:28:41', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data vnsljnkab at Anak', '', 1, '2020-02-04 23:29:02', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/edit-save/5', 'Update data vnsljnkab at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jk_anak</td><td></td><td>Laki-laki</td></tr></tbody></table>', 1, '2020-02-04 23:48:41', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data kjljkb at Data  Orang Tua', '', 1, '2020-02-04 23:51:51', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data knk;bk; at Data  Orang Tua', '', 1, '2020-02-04 23:52:36', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users30/add-save', 'Add New Data dosen2 at akun dosen', '', 1, '2020-02-04 23:58:57', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 23:59:10', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dosen1@crudbooster.com login with IP Address 127.0.0.1', '', 10, '2020-02-04 23:59:30', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data slknfa;n at Riwayat Pendidikan', '', 10, '2020-02-05 00:02:39', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dosen1@crudbooster.com logout', '', 10, '2020-02-05 00:03:31', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-05 00:03:36', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data ;lnm nm; at Saudara Kandung', '', 1, '2020-02-05 00:05:43', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data m,nkn;mn at Saudara Kandung', '', 1, '2020-02-05 00:05:59', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Pengalaman Kunjungan Luar Negeri', '', 1, '2020-02-05 00:26:34', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Pengalaman Kunjungan Luar Negeri', '', 1, '2020-02-05 00:26:47', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data Osis at Tambah Keterangan Organisasi', '', 1, '2020-02-05 00:30:59', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data slvn;sknv at Karya Tulis', '', 1, '2020-02-05 00:34:43', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data skjvbsljb at Karya Tulis', '', 1, '2020-02-05 00:34:53', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data ,m;lmlm at Pengalaman dan Kegiatan', '', 1, '2020-02-05 00:35:44', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data svblajb at Pengalaman dan Kegiatan', '', 1, '2020-02-05 00:36:20', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data kjnslkvnl at Pengalaman membimbing', '', 1, '2020-02-05 00:37:31', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data s,vmnslkn at Pengalaman membimbing', '', 1, '2020-02-05 00:38:07', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data gggge at Pengalaman Mengajar', '', 1, '2020-02-05 00:44:41', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data slvnlsvn at Tambah Data Penelitian', '', 1, '2020-02-05 00:46:17', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data jsbvkjsb at Tambah Data Penelitian', '', 1, '2020-02-05 00:46:27', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-05 00:47:13', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dosen2@crudbooster.com login with IP Address 127.0.0.1', '', 11, '2020-02-05 00:47:22', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/11', 'Update data dosen2 at DOSEN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$dB6tbI/TbfV2WIlx0JrvlO/TryCSxRPbI.CAxSqaVAc3eHC6QdmO6</td><td></td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td>Pria</td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td>Aktif</td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td>Pembina</td></tr><tr><td>pendidikan_terakhir</td><td></td><td>S3</td></tr><tr><td>gol_ruang</td><td></td><td>4A</td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td>lupa</td></tr><tr><td>nomor_kepegawaian</td><td></td><td>jsbkbk323</td></tr><tr><td>no_tlp</td><td></td><td>+6281930662121</td></tr><tr><td>jurusan</td><td></td><td>Tasawuf Psikoterapi</td></tr><tr><td>fakultas</td><td></td><td>ushuludin</td></tr><tr><td>jalan</td><td></td><td>Jln.Cigintung</td></tr><tr><td>kelurahan</td><td></td><td>snvslkn</td></tr><tr><td>kabupaten</td><td></td><td>slkvnsl</td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td>svnskl</td></tr><tr><td>berat_badan</td><td></td><td>90 KG</td></tr><tr><td>warna_rambut</td><td></td><td>ajbc</td></tr><tr><td>bentuk_wajah</td><td></td><td>svbk</td></tr><tr><td>warna_kulit</td><td></td><td>skvn</td></tr><tr><td>ciri</td><td></td><td>skjvb</td></tr><tr><td>cacat_tubuh</td><td></td><td>sjkvb</td></tr><tr><td>kegemaran</td><td></td><td>sjkvb</td></tr><tr><td>kecamatan</td><td></td><td>slvnkslkn</td></tr></tbody></table>', 11, '2020-02-05 00:49:07', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data kjsbvkj at Riwayat Pendidikan', '', 11, '2020-02-05 00:49:36', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data nslvls at Riwayat Pendidikan', '', 11, '2020-02-05 00:49:54', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data amnc at Riwayat Pendidikan', '', 11, '2020-02-05 00:50:08', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data snvlk at Kursus Latihan', '', 11, '2020-02-05 00:51:47', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/add-save', 'Add New Data lasnfv at Kursus Latihan', '', 11, '2020-02-05 00:52:07', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kursus_latihan/edit-save/6', 'Update data lasnfv at Kursus Latihan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>bulan</td><td>xm v,mz</td><td>hhhhaaahhha</td></tr></tbody></table>', 11, '2020-02-05 00:52:23', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 11, '2020-02-05 00:54:09', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 11, '2020-02-05 00:55:09', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_kepangkatan27/edit-save/4', 'Update data  at Riwayat Kepangkatan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gol_ruang</td><td>3</td><td>3B</td></tr></tbody></table>', 11, '2020-02-05 00:55:29', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 11, '2020-02-05 00:58:47', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 11, '2020-02-05 00:59:16', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_jabatan/edit-save/5', 'Update data  at Riwayat Jabatan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gol_ruang</td><td>4A</td><td>3C</td></tr></tbody></table>', 11, '2020-02-05 00:59:51', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data penghargaa ipk tertinggi at Tanda Jasa dan Penghargaan', '', 11, '2020-02-05 01:02:04', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/add-save', 'Add New Data d,nvlbkdn at Tanda Jasa dan Penghargaan', '', 11, '2020-02-05 01:02:15', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_tanda_jasa_penghargaan/edit-save/5', 'Update data ;sgmbdl;mb at Tanda Jasa dan Penghargaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_tanda_jasa_penghargaan</td><td>d,nvlbkdn</td><td>;sgmbdl;mb</td></tr></tbody></table>', 11, '2020-02-05 01:02:32', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Pengalaman Kunjungan Luar Negeri', '', 11, '2020-02-05 01:23:43', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/add-save', 'Add New Data  at Pengalaman Kunjungan Luar Negeri', '', 11, '2020-02-05 01:23:51', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_kunjungan_luar_negeri/edit-save/5', 'Update data  at Pengalaman Kunjungan Luar Negeri', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tujuan_kunjungan</td><td>ksjnvkjb</td><td>dkjkjdbih</td></tr></tbody></table>', 11, '2020-02-05 01:24:00', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data d,vnlsknv at Data Keluarga', '', 11, '2020-02-05 01:25:07', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/add-save', 'Add New Data s,vm s at Data Keluarga', '', 11, '2020-02-05 01:25:47', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_keluarga/edit-save/5', 'Update data s,vm s at Data Keluarga', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td>Hidup</td><td>Meninggal</td></tr></tbody></table>', 11, '2020-02-05 01:26:09', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data akvnslk at Anak', '', 11, '2020-02-05 01:28:27', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/add-save', 'Add New Data svdfv at Anak', '', 11, '2020-02-05 01:28:42', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_anak/edit-save/7', 'Update data hhsafs at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>svdfv</td><td>hhsafs</td></tr></tbody></table>', 11, '2020-02-05 01:28:58', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data dnbld at Data  Orang Tua', '', 11, '2020-02-05 01:30:08', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data svsv at Data  Orang Tua', '', 11, '2020-02-05 01:30:25', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data svdv at Data  Orang Tua', '', 11, '2020-02-05 01:30:42', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_orang_tua/add-save', 'Add New Data svs at Data  Orang Tua', '', 11, '2020-02-05 01:30:57', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data sfsf at Saudara Kandung', '', 11, '2020-02-05 01:32:00', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_saudara_kandung/add-save', 'Add New Data vgdbfh at Saudara Kandung', '', 11, '2020-02-05 01:32:14', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data sdvfds at Tambah Keterangan Organisasi', '', 11, '2020-02-05 01:33:01', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data zvdgb at Tambah Keterangan Organisasi', '', 11, '2020-02-05 01:33:15', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_ket_organisasi/add-save', 'Add New Data xbfhnzfe at Tambah Keterangan Organisasi', '', 11, '2020-02-05 01:33:29', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data kjx kjb at Karya Tulis', '', 11, '2020-02-05 01:34:33', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_karya_ilmiah/add-save', 'Add New Data xjv nljdv at Karya Tulis', '', 11, '2020-02-05 01:34:39', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data svbnsln at Pengalaman dan Kegiatan', '', 11, '2020-02-05 01:35:30', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_kegiatan/add-save', 'Add New Data dkmb;d at Pengalaman dan Kegiatan', '', 11, '2020-02-05 01:35:38', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data z.v, at Pengalaman membimbing', '', 11, '2020-02-05 01:36:38', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_membingbing/add-save', 'Add New Data Muhammad Diza Aulia at Pengalaman membimbing', '', 11, '2020-02-05 01:37:02', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_mengajar/add-save', 'Add New Data nxvjsn at Pengalaman Mengajar', '', 11, '2020-02-05 01:38:59', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data x ,,md at Tambah Data Penelitian', '', 11, '2020-02-05 01:39:28', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_pengalaman_penelitian/add-save', 'Add New Data cmv lkfd at Tambah Data Penelitian', '', 11, '2020-02-05 01:39:35', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dosen2@crudbooster.com logout', '', 11, '2020-02-05 01:39:52', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-05 01:39:58', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-05 01:41:31', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-05 01:43:49', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-05 01:51:30', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-05 01:58:05', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users30/add-save', 'Add New Data dosen3 at akun dosen', '', 1, '2020-02-05 01:59:03', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-09 11:41:54', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-11 22:10:39', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-11 22:10:40', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-14 06:46:52', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-16 18:42:17', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Profil at Menu Management', '', 1, '2020-02-16 18:44:34', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data Profil at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-16 18:44:57', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/22', 'Delete data Profil at Menu Management', '', 1, '2020-02-16 18:45:27', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data DRH at Menu Management', '', 1, '2020-02-16 19:00:59', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data DRH at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-16 19:01:28', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data Profile at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>DOSEN</td><td>Profile</td></tr><tr><td>parent_id</td><td>24</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:06:44', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Anak</td><td>Data Anak</td></tr><tr><td>parent_id</td><td>24</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:07:03', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Akun Dosen at Menu Management', '', 1, '2020-02-16 19:11:09', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Update data Akun Dosen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:12:05', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>akun dosen</td><td>List</td></tr><tr><td>parent_id</td><td>25</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:12:39', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-users</td><td>fa fa-plus</td></tr><tr><td>parent_id</td><td>25</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:13:08', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Pengalaman at Menu Management', '', 1, '2020-02-16 19:17:13', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Pengalaman at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-02-16 19:18:29', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-16 20:46:32', NULL),
(421, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/login', 'farizmaulanaherman@gmail.com login with IP Address ::1', '', 7, '2020-02-17 11:27:16', NULL),
(422, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/login', 'farizmaulanaherman@gmail.com login with IP Address ::1', '', 7, '2020-02-18 02:09:16', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-18 02:12:50', NULL),
(424, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/login', 'farizmaulanaherman@gmail.com login with IP Address ::1', '', 7, '2020-02-18 02:17:57', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-18 02:44:23', NULL),
(426, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/login', 'farizmaulanaherman@gmail.com login with IP Address ::1', '', 7, '2020-02-18 16:36:51', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-18 16:48:15', NULL),
(428, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/login', 'farizmaulanaherman@gmail.com login with IP Address ::1', '', 7, '2020-02-18 17:00:19', NULL),
(429, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/fah%20adab/blog/public/admin/logout', 'farizmaulanaherman@gmail.com logout', '', 7, '2020-02-18 17:02:09', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-20 00:53:45', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'farizmaulanaherman@gmail.com logout', '', 7, '2020-02-20 03:05:49', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'dosen1@crudbooster.com login with IP Address 127.0.0.1', '', 10, '2020-02-20 03:06:06', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_riwayat_pendidikan/add-save', 'Add New Data cileungsi at Riwayat Pendidikan', '', 10, '2020-02-20 03:07:52', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dosen1@crudbooster.com logout', '', 10, '2020-02-20 03:08:22', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-20 03:08:25', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-23 07:34:29', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'farizmaulanaherman@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-02-23 23:40:18', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-24 08:23:05', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data UDIN at DOSEN', '', 1, '2020-02-24 08:48:50', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/delete/13', 'Delete data UDIN at DOSEN', '', 1, '2020-02-24 08:49:04', NULL);

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
(1, 'Karya Tulis', 'Route', 'AdminTbKaryaIlmiahControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 5, '2020-01-03 06:12:37', '2020-02-04 05:44:57'),
(2, 'Data Keluarga', 'Route', 'AdminTbKeluargaControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 7, '2020-01-03 06:16:39', '2020-02-04 05:45:35'),
(3, 'Keterangan Organisasi', 'Route', 'AdminTbKetOrganisasiControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 12, '2020-01-03 06:18:02', '2020-02-04 05:45:54'),
(4, 'Pengalaman Kunjungan Luar Negeri', 'Route', 'AdminTbKunjunganLuarNegeriControllerGetIndex', 'normal', 'fa fa-edit', 26, 1, 0, 1, 1, '2020-01-03 06:19:22', '2020-02-04 05:46:39'),
(5, 'Data Kursus Latihan', 'Route', 'AdminTbKursusLatihanControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 3, '2020-01-03 06:21:12', '2020-02-04 05:46:55'),
(6, 'Data  Orang Tua', 'Route', 'AdminTbOrangTuaControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 9, '2020-01-03 06:22:40', '2020-02-04 05:47:10'),
(7, 'Pengalaman dan Kegiatan', 'Route', 'AdminTbPengalamanKegiatanControllerGetIndex', 'normal', 'fa fa-edit', 26, 1, 0, 1, 2, '2020-01-03 06:23:52', '2020-02-04 05:47:23'),
(8, 'Pengalaman membimbing', 'Route', 'AdminTbPengalamanMembingbingControllerGetIndex', 'normal', 'fa fa-edit', 26, 1, 0, 1, 5, '2020-01-03 06:25:22', '2020-02-04 05:47:38'),
(9, 'Pengalaman Mengajar', 'Route', 'AdminTbPengalamanMengajarControllerGetIndex', 'normal', 'fa fa-edit', 26, 1, 0, 1, 3, '2020-01-03 06:26:57', '2020-02-04 05:47:56'),
(10, 'Penelitian', 'Route', 'AdminTbPengalamanPenelitianControllerGetIndex', 'normal', 'fa fa-edit', 26, 1, 0, 1, 4, '2020-01-03 06:28:15', '2020-02-04 05:48:14'),
(11, 'Riwayat Jabatan', 'Route', 'AdminTbRiwayatJabatanControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 5, '2020-01-03 06:29:44', '2020-02-04 05:48:29'),
(13, 'Riwayat Pendidikan', 'Route', 'AdminTbRiwayatPendidikanControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 2, '2020-01-03 06:32:27', '2020-02-04 05:48:42'),
(14, 'Saudara Kandung', 'Route', 'AdminTbSaudaraKandungControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 10, '2020-01-03 06:35:28', '2020-02-04 05:48:56'),
(15, 'Jasa dan Penghargaan', 'Route', 'AdminTbTandaJasaPenghargaanControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 6, '2020-01-03 06:36:38', '2020-02-04 05:49:16'),
(16, 'Riwayat Kepangkatan', 'Route', 'AdminTbRiwayatKepangkatan27ControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 4, '2020-01-03 07:44:24', '2020-02-04 05:49:30'),
(17, 'Profile', 'Route', 'AdminCmsUsers1ControllerGetIndex', 'normal', 'fa fa-user', 24, 1, 0, 1, 1, '2020-01-03 07:50:55', '2020-02-16 19:06:43'),
(18, 'Data Anak', 'Route', 'AdminTbAnakControllerGetIndex', 'normal', 'fa fa-edit', 24, 1, 0, 1, 8, '2020-01-04 00:40:57', '2020-02-16 19:07:03'),
(19, 'dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-print', 0, 1, 1, 1, 1, '2020-01-04 06:26:44', '2020-01-04 06:27:32'),
(20, 'dashboard admin', 'Statistic', 'statistic_builder/show/dashboard-admin', 'normal', 'fa fa-print', 0, 1, 1, 1, 2, '2020-01-04 06:27:17', '2020-02-04 05:44:30'),
(21, 'List', 'Route', 'AdminCmsUsers30ControllerGetIndex', 'normal', 'fa fa-plus', 25, 1, 0, 1, 1, '2020-02-04 05:40:44', '2020-02-16 19:13:07'),
(23, 'HKI', 'Route', 'AdminTbKaryaIlmiah31ControllerGetIndex', NULL, 'fa fa-book', 24, 1, 0, 1, 11, '2020-02-16 18:49:05', NULL),
(24, 'DRH', 'URL', 'Dosen', 'normal', 'fa fa-user', 0, 1, 0, 1, 3, '2020-02-16 19:00:59', '2020-02-16 19:01:27'),
(25, 'Akun Dosen', 'URL', 'AdminCmsUsers30Controller', 'normal', 'fa fa-group', 0, 1, 0, 1, 6, '2020-02-16 19:11:09', '2020-02-16 19:12:05'),
(26, 'Pengalaman', 'URL', 'pengalaman_hidup', 'normal', 'fa fa-pencil-square-o', 0, 1, 0, 1, 4, '2020-02-16 19:17:13', '2020-02-16 19:18:29');

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
(67, 19, 2),
(77, 20, 3),
(78, 20, 1),
(82, 1, 3),
(83, 1, 2),
(84, 1, 1),
(85, 2, 3),
(86, 2, 2),
(87, 2, 1),
(88, 3, 3),
(89, 3, 2),
(90, 3, 1),
(91, 4, 3),
(92, 4, 2),
(93, 4, 1),
(94, 5, 3),
(95, 5, 2),
(96, 5, 1),
(97, 6, 3),
(98, 6, 2),
(99, 6, 1),
(100, 7, 3),
(101, 7, 2),
(102, 7, 1),
(103, 8, 3),
(104, 8, 2),
(105, 8, 1),
(106, 9, 3),
(107, 9, 2),
(108, 9, 1),
(109, 10, 3),
(110, 10, 2),
(111, 10, 1),
(112, 11, 3),
(113, 11, 2),
(114, 11, 1),
(115, 13, 3),
(116, 13, 2),
(117, 13, 1),
(118, 14, 3),
(119, 14, 2),
(120, 14, 1),
(121, 15, 3),
(122, 15, 2),
(123, 15, 1),
(124, 16, 3),
(125, 16, 2),
(126, 16, 1),
(133, 22, 1),
(134, 23, 1),
(136, 24, 3),
(137, 24, 2),
(138, 24, 1),
(139, 17, 3),
(140, 17, 2),
(141, 17, 1),
(142, 18, 3),
(143, 18, 2),
(144, 18, 1),
(147, 25, 3),
(148, 25, 1),
(151, 21, 3),
(152, 21, 1),
(153, NULL, 3),
(154, NULL, 1),
(155, 26, 3),
(156, 26, 2),
(157, 26, 1);

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
(29, 'Anak', 'fa fa-glass', 'tb_anak', 'tb_anak', 'AdminTbAnakController', 0, 0, '2020-01-04 00:40:57', NULL, NULL),
(30, 'akun dosen', 'fa fa-users', 'cms_users30', 'cms_users', 'AdminCmsUsers30Controller', 0, 0, '2020-02-04 05:40:44', NULL, NULL),
(31, 'HKI', 'fa fa-book', 'tb_karya_ilmiah31', 'tb_karya_ilmiah', 'AdminTbKaryaIlmiah31Controller', 0, 0, '2020-02-16 18:49:04', NULL, NULL);

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
(2, 'DOSEN', 0, 'skin-yellow', NULL, NULL),
(3, 'Admin', 0, 'skin-green-light', NULL, NULL);

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
(63, 0, 0, 1, 1, 1, 2, 4, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(65, 1, 1, 1, 1, 1, 3, 30, NULL, NULL),
(66, 1, 1, 1, 1, 1, 3, 29, NULL, NULL),
(67, 1, 1, 1, 1, 1, 3, 17, NULL, NULL),
(68, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
(69, 1, 1, 1, 1, 1, 3, 28, NULL, NULL),
(70, 1, 1, 1, 1, 1, 3, 12, NULL, NULL),
(71, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
(72, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(73, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
(74, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(75, 1, 1, 1, 1, 1, 3, 20, NULL, NULL),
(76, 1, 1, 1, 1, 1, 3, 22, NULL, NULL),
(77, 1, 1, 1, 1, 1, 3, 27, NULL, NULL),
(78, 1, 1, 1, 1, 1, 3, 24, NULL, NULL),
(79, 1, 1, 1, 1, 1, 3, 25, NULL, NULL),
(80, 1, 1, 1, 1, 1, 3, 21, NULL, NULL),
(81, 1, 1, 1, 1, 1, 3, 14, NULL, NULL),
(82, 1, 1, 1, 1, 1, 3, 26, NULL, NULL),
(83, 1, 1, 1, 1, 1, 1, 31, NULL, NULL);

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
(10, 'appname', 'SAMPLE', 'text', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-01-02 10:31:03', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-02/2902d28ef99f1e0b863ddcc56981e72c.png', 'upload_image', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-02/2ba1842e1814821281d89d5cc631c7ac.png', 'upload_image', NULL, NULL, '2020-01-02 10:31:03', NULL, 'Application Setting', 'Favicon'),
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
(10, 2, 'd66e8fc6cc5f7cd713ed012c9a334e67', 'chartbar', 'area5', 0, NULL, '{\"name\":\"GRAFIK GELAR S3\",\"sql\":\"SELECT COUNT(*) AS value , pendidikan_terakhir AS label\\tFROM `cms_users` GROUP BY pendidikan_terakhir\",\"area_name\":\"GELAR\",\"goals\":\"0\"}', '2020-01-10 06:14:57', NULL),
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
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jalan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berat_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_rambut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bentuk_wajah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_kulit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cacat_tubuh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegemaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kapreg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karis_su` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taspem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuptk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `nip`, `tgl_lahir`, `tempat_lahir`, `jk`, `agama`, `s_nikah`, `s_kepegawaian`, `jenis_kepegawaian`, `satuan_kerja`, `jabatan_terakhir`, `pendidikan_terakhir`, `gol_ruang`, `satuan_organisasi`, `kgb_terakhir`, `no_tlp`, `jurusan`, `fakultas`, `jalan`, `kelurahan`, `kabupaten`, `provinsi`, `tinggi_badan`, `berat_badan`, `warna_rambut`, `bentuk_wajah`, `warna_kulit`, `ciri`, `cacat_tubuh`, `kegemaran`, `kecamatan`, `pangkat`, `kapreg`, `karis_su`, `kpe`, `taspem`, `npwp`, `nuptk`, `nidn`) VALUES
(1, 'Super Admin', 'uploads/1/2020-01/logo_uin_png.png', 'admin@crudbooster.com', '$2y$10$yuw9cgGHRJJU2iLPtB9HYu7z0YRkGIUZlFDVhqHD5kJKrZYVURGyy', 1, '2020-01-02 10:31:02', '2020-01-10 06:40:31', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'fariz', 'uploads/1/2020-01/98d147cf59778e44e581621091f9e1ba.png', 'fariz.herman@gmail.com', '$2y$10$ghXvAowXl6nZsJ1X7FZ/mutJxSSVLOpqS/tqywrOrpXkpErDQ9JXK', 2, '2020-01-03 08:04:29', '2020-01-05 21:58:24', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Wahyudin', 'uploads/1/2020-01/wahyudin.png', 'yudi@crudbooster.com', '$2y$10$byWrpP9wUeLPkFsbdhGKtOI8nCpy47s1ULF8Q35iX9sMjduJwBnym', 2, '2020-01-06 23:53:29', '2020-02-03 02:22:05', 'Aktif', 196707012014121004, NULL, NULL, 'Pria', NULL, NULL, 'Aktif', NULL, NULL, 'Guru Besar', 'S3', NULL, NULL, 'lupa', NULL, NULL, 'ushuludin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Fariz Maulana Herman', 'uploads/1/2020-01/98d147cf59778e44e581621091f9e1ba.png', 'farizmaulanaherman@gmail.com', '$2y$10$miK.33AYGEQd5VIRxK7FDevjQWwo7Dogam3AcDRjNJ92o9/RTEuku', 1, '2020-01-26 23:51:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'dosen2', 'uploads/1/2020-02/98d147cf59778e44e581621091f9e1ba.png', 'admin2@crudbooster.com', '$2y$10$JqsyWeKGmF42ztT2RGTgZ.zkA6QPiDUAAJQlbQNHAq9oXdcVCJEzq', 3, '2020-02-04 05:50:58', NULL, 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'dosen1', 'uploads/9/2020-02/98d147cf59778e44e581621091f9e1ba.png', 'dosen1@crudbooster.com', '$2y$10$4U534nTHgrESI8tbL.16fezMmwHsrVP64AW8YnmpvCm4qGgWE9Ymu', 2, '2020-02-04 05:53:48', '2020-02-04 08:54:56', 'Aktif', 196707012014121009, '2020-02-23', 'Bogor', 'Pria', 'islam', 'Belum', 'Aktif', 'PNS', NULL, 'Asisten Ahli Madya', 'S3', '4A', NULL, 'lupa', '+6281930662121', 'Ilmu Tafsir dan Qur', 'ushuludin', 'JL CILEUNGI-JONGGOL', 'mekarsari', 'Kuningan', NULL, 'jawa barat', '90 KG', 'hitam', 'bulat', 'sawo mateng', 'bekas luka diwajah', 'tidak ada', 'koleksi figure', 'cileungsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'dosen2', 'uploads/1/2020-02/98d147cf59778e44e581621091f9e1ba.png', 'dosen2@crudbooster.com', '$2y$10$dB6tbI/TbfV2WIlx0JrvlO/TryCSxRPbI.CAxSqaVAc3eHC6QdmO6', 2, '2020-02-04 23:58:57', '2020-02-05 00:49:07', 'Aktif', NULL, NULL, NULL, 'Pria', NULL, NULL, 'Aktif', NULL, NULL, 'Pembina', 'S3', '4A', NULL, 'lupa', '+6281930662121', 'Tasawuf Psikoterapi', 'ushuludin', 'Jln.Cigintung', 'snvslkn', 'slkvnsl', NULL, 'svnskl', '90 KG', 'ajbc', 'svbk', 'skvn', 'skjvb', 'sjkvb', 'sjkvb', 'slvnkslkn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'dosen3', 'uploads/1/2020-02/98d147cf59778e44e581621091f9e1ba.png', 'dosen3@crudbooster.com', '$2y$10$SxeB5gAdUxatmbaSef6b5.S6/5WSKEeu81oK37kARXm7wFlA0.36m', 2, '2020-02-05 01:59:03', NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(59, '2020_01_04_073556_tb_anak', 2),
(60, '2020_02_04_125656_edit_d_b_dosen', 3),
(61, '2020_02_04_154221_add_atribute_kec', 4),
(62, '2020_02_04_163429_add_atribute', 5),
(63, '2020_02_04_195237_edit_tb_kep', 6),
(64, '2020_02_04_200736_edit_tb_jab', 7),
(65, '2020_02_04_202451_edit_tb_jab2', 8),
(66, '2020_02_05_063047_edit_t_b_anak', 9),
(67, '2020_02_05_072122_edit_t_b_kunj', 10),
(68, '2020_02_20_081804_add_no_peg_tb_dosen', 11),
(69, '2020_02_20_084728_edit_no_peg', 12);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `jk_anak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_anak`
--

INSERT INTO `tb_anak` (`id`, `dosen_id`, `nama`, `tempat_lahir`, `tgl_lahir`, `tgl_nikah`, `pekerjaan`, `keterangan`, `created_at`, `updated_at`, `jk_anak`) VALUES
(1, 1, 'Muhammad Diza Aulia', 'Kuningan', '2020-01-26', '2020-01-26', 'Buruh', 'Hidup', '2020-01-28 08:22:43', NULL, NULL),
(2, 1, 'lnlkh', 'msnvlak', '2020-02-04', '2020-02-18', 'Dosen', 'Hidup', '2020-02-04 23:22:44', NULL, NULL),
(3, 1, 'ndvsnvlkn', 'x.vnljsb', '2020-02-10', '2020-02-03', 'Guru', 'Pensiun', '2020-02-04 23:23:15', NULL, NULL),
(4, 10, 'jvnslknvsj', 'snlvskn', '2020-02-28', '2020-02-17', 'PNS', 'Hidup', '2020-02-04 23:28:41', NULL, NULL),
(5, 10, 'vnsljnkab', 'ldnvlsn', '2020-02-29', '2020-02-04', 'PNS', 'Hidup', '2020-02-04 23:29:02', '2020-02-04 23:48:41', 'Laki-laki'),
(6, 11, 'akvnslk', 'svn', '2020-02-20', '2020-02-28', 'Tidak Bekerja', 'Hidup', '2020-02-05 01:28:27', NULL, 'Perempuan'),
(7, 11, 'hhsafs', 'sxvd', '2020-02-03', '2020-02-16', 'TNI', 'Pensiun', '2020-02-05 01:28:42', '2020-02-05 01:28:58', 'Laki-laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karya_ilmiah`
--

CREATE TABLE `tb_karya_ilmiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_karya_ilmiah`
--

INSERT INTO `tb_karya_ilmiah` (`id`, `dosen_id`, `jenis`, `tahun`, `judul`, `penyelenggara`, `created_at`, `updated_at`) VALUES
(2, 10, 'sadfvnlsknv', 'slnvslknv', 'slvn;sknv', 'slvnk;slkn', '2020-02-05 00:34:43', NULL),
(3, 10, 'sakjvbkljsab', 'sjvbsljb', 'skjvbsljb', 'sjv;lsk', '2020-02-05 00:34:53', NULL),
(4, 11, 'jkbvjbs', 'xl ndjb', 'kjx kjb', 'jxnkj b', '2020-02-05 01:34:32', NULL),
(5, 11, 'svjb', 'kxjb kjdb', 'xjv nljdv', 'jkxn lbd', '2020-02-05 01:34:39', NULL);

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

--
-- Dumping data untuk tabel `tb_keluarga`
--

INSERT INTO `tb_keluarga` (`id`, `dosen_id`, `nama`, `tgl_lahir`, `tempat_lahir`, `pekerjaan`, `keterangan`, `tgl_nikah`, `jenis`, `created_at`, `updated_at`) VALUES
(2, 10, 'svlsn', '2020-02-25', 'slnvskln', 'Pengusaha', 'Hidup', '2020-02-27', 'Suami', '2020-02-04 13:35:03', NULL),
(3, 10, 'djvblksj', '2020-02-23', 'slvnslk', 'Pengusaha', 'Hidup', '2020-02-05', 'Istri', '2020-02-04 13:35:29', NULL),
(4, 11, 'd,vnlsknv', '2020-02-02', ',svn', 'TNI', 'Hidup', '2020-02-20', 'Suami', '2020-02-05 01:25:06', NULL),
(5, 11, 's,vm s', '2020-02-28', 'sfdbvg', 'Guru', 'Meninggal', '2020-02-29', 'Istri', '2020-02-05 01:25:47', '2020-02-05 01:26:09');

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

--
-- Dumping data untuk tabel `tb_ket_organisasi`
--

INSERT INTO `tb_ket_organisasi` (`id`, `dosen_id`, `jenis`, `nama_organisasi`, `kedudukan`, `periode`, `tempat`, `nama_pimpinan`, `created_at`, `updated_at`) VALUES
(2, 10, 'SMP', 'klnxkvn', 'xnvlskn', 'lxnvlkdn', 'lnvl;ksn', 'lxvndln', '2020-02-04 09:57:57', NULL),
(3, 10, 'Kuliah', 'dmnv;snvl', '.vc ksnmv;lsmv', 'dkmv;smv;', ';dmv;lsdmv;', ';lmv;ldsmv', '2020-02-04 09:58:17', NULL),
(4, 10, 'Kerja', 'slvns;n', 'nvlkdnvkdn', 'lknvlndknv', 'ldknvlkdn', 'lnvblkdn', '2020-02-04 09:58:33', NULL),
(5, 10, 'SMA', 'Osis', 'smvblsb', 'smnvlsn', 'slnvlsn', 'lsknvlsk', '2020-02-05 00:30:59', NULL),
(6, 11, 'SMP', 'sdvfds', 'dbd', 'vd b', 'xv x', 'dbdg', '2020-02-05 01:33:01', NULL),
(7, 11, 'Kuliah', 'zvdgb', 'dbfd', 'dbfg', 'dbhnh', 'xcxc', '2020-02-05 01:33:15', NULL),
(8, 11, 'Kerja', 'xbfhnzfe', 'zxcvdgbn', 'sfvbgn', 'dvbc', 'xvb', '2020-02-05 01:33:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kunjungan_luar_negeri`
--

CREATE TABLE `tb_kunjungan_luar_negeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lamanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yg_membiayai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tujuan_kunjungan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kunjungan_luar_negeri`
--

INSERT INTO `tb_kunjungan_luar_negeri` (`id`, `dosen_id`, `negara`, `tahun`, `lamanya`, `yg_membiayai`, `created_at`, `updated_at`, `tujuan_kunjungan`) VALUES
(2, 10, 'SnbvCJSBVJLN', ',SMVBLJSB', 'S,NVLSB', 'SNVCLSKNV', '2020-02-05 00:26:34', NULL, 'KJSBVLKJBSKL'),
(3, 10, 'JAKSBVKLJSBA', 'SNVLS', 'SLVJNSL', 'LSKNV', '2020-02-05 00:26:47', NULL, 'SKJBVSLJB'),
(4, 11, 'jkabl', 'sjnvkj', 'nsvkj', 'k kdvj', '2020-02-05 01:23:43', NULL, 'snvjb'),
(5, 11, 's,vnjwj', 'jndvkjd', 'ldnvkj', 'dvn', '2020-02-05 01:23:51', '2020-02-05 01:24:00', 'dkjkjdbih');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_kursus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah_kursus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kursus_latihan`
--

INSERT INTO `tb_kursus_latihan` (`id`, `dosen_id`, `nama_kursus_latihan`, `periode`, `jam`, `hari`, `bulan`, `tahun`, `tempat`, `sumber_dana`, `penyelenggara`, `created_at`, `updated_at`, `tgl_kursus`, `ijazah_kursus`) VALUES
(2, 10, 'ajhdqkjab', 'lknalkdq', 'jksakfbj', 'lsnflnlanf', 'lsknvlsnf', 'lsnvlsn', 'lsvnlna', 'lsnv;lksn', 'slnvls', '2020-02-04 09:25:58', NULL, NULL, NULL),
(3, 10, 'kjsbflaf;lkan', 'lskn;ka;fnvslnv', 'lsknvlanvcnsdvn', 'lsnvlknavnsl', 'sknv;ksm;vskdn', 'nslkvn;skn', 'lknslvn', 'lsnvlskn', 's;lsknvslkddk', '2020-02-04 09:27:08', NULL, NULL, NULL),
(4, 10, 'lsknvlskn', 'sklnlkvsnvln', 'lksnvlknsvn', 'knsvlknldknv', 'nslknvlkdnvld', 'klsnvlkdnv', 'lksnvldkn', 'slkvnldkn', 'lsknvlsknv', '2020-02-04 09:27:23', '2020-02-04 09:45:38', '26', 'uploads/1/2020-02/98d147cf59778e44e581621091f9e1ba.png'),
(5, 11, 'snvlk', 'lsknv', 'slkndv', 'lsknvl', 'lsknv', 'slkvn', 'sklnv', 'lsknv', 'slknv', '2020-02-05 00:51:47', NULL, 'lsknvlk', 'uploads/11/2020-02/enen_no_shouboutai.png'),
(6, 11, 'lasnfv', 'lksnvl', 'lnslkvnl', 'nlsnlvkn;mzc;', 'hhhhaaahhha', 'skhbw', 'lsvnl', 'sldnvk', 'slknv', '2020-02-05 00:52:07', '2020-02-05 00:52:23', 'lsknvl', 'uploads/11/2020-02/enen_no_shouboutai.png');

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

--
-- Dumping data untuk tabel `tb_orang_tua`
--

INSERT INTO `tb_orang_tua` (`id`, `dosen_id`, `nama`, `tgl_lahir`, `pekerjaan`, `jenis`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 10, 'kjljkb', '2020-02-02', 'TNI', 'Ayah', 'Hidup', '2020-02-04 23:51:51', NULL),
(3, 10, 'knk;bk;', '2020-02-04', 'TNI', 'Ayah Mertua', 'Hidup', '2020-02-04 23:52:36', NULL),
(4, 11, 'dnbld', '2020-02-12', 'TNI', 'Ibu', 'Hidup', '2020-02-05 01:30:07', NULL),
(5, 11, 'svsv', '2020-02-20', 'Guru', 'Ayah', 'Pensiunan', '2020-02-05 01:30:25', NULL),
(6, 11, 'svdv', '2020-02-21', 'Guru', 'Ayah Mertua', 'Hidup', '2020-02-05 01:30:41', NULL),
(7, 11, 'svs', '2020-02-25', 'Buruh', 'Ibu Mertua', 'Pensiunan', '2020-02-05 01:30:57', NULL);

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

--
-- Dumping data untuk tabel `tb_pengalaman_kegiatan`
--

INSERT INTO `tb_pengalaman_kegiatan` (`id`, `dosen_id`, `jenis`, `judul_kegiatan`, `penyelenggara`, `created_at`, `updated_at`) VALUES
(2, 10, 'Kegiatan Profesional', ',m;lmlm', 's;lmv;sl', '2020-02-05 00:35:44', NULL),
(3, 10, 'Simpusium', 'svblajb', 'sbvlkjsbl', '2020-02-05 00:36:20', NULL),
(4, 11, 'Simpusium', 'svbnsln', 'lknlvn', '2020-02-05 01:35:30', NULL),
(5, 11, 'Kegiatan Profesional', 'dkmb;d', 'lvkl', '2020-02-05 01:35:38', NULL);

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

--
-- Dumping data untuk tabel `tb_pengalaman_membingbing`
--

INSERT INTO `tb_pengalaman_membingbing` (`id`, `dosen_id`, `jenis_bimbingan`, `nama_mahasiswa`, `sk`, `tgl_mulai`, `tgl_akhir`, `jml_pertemuan`, `created_at`, `updated_at`) VALUES
(2, 10, 'KRS', 'kjnslkvnl', 'uploads/1/2020-02/koe_no_katachi_volume_1.jpg', '2020-02-09', '2020-02-17', 20, '2020-02-05 00:37:31', NULL),
(3, 10, 'Praktek Ibadah', 's,vmnslkn', 'uploads/1/2020-02/owari_no_seraph_volume_01.jpg', '2020-02-18', '2020-02-28', 3, '2020-02-05 00:38:07', NULL),
(4, 11, 'Praktek Ibadah', 'z.v,', 'uploads/11/2020-02/enen_no_shouboutai.png', '2020-02-02', '2020-02-08', 4, '2020-02-05 01:36:38', NULL),
(5, 11, 'Skripsi', 'Muhammad Diza Aulia', 'uploads/11/2020-02/enen_no_shouboutai.png', '2020-02-27', '2020-02-29', 12, '2020-02-05 01:37:02', NULL);

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
  `jam` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mengajar_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengalaman_mengajar`
--

INSERT INTO `tb_pengalaman_mengajar` (`id`, `dosen_id`, `kode_mk`, `nama_mk`, `jenjang`, `jurusan`, `tahun_akademik`, `semester`, `rentang_mulai`, `rentang_akhir`, `sk_mengajar`, `tgl_sk`, `jam`, `ruang`, `mengajar_bersama`, `sks`, `created_at`, `updated_at`) VALUES
(2, 5, 'rrra', 'Dasar Pemrograman', 'S1', 'Aqidah dan Filsafat Islam', '2016-2017', 'Genap', '2020-02-23', '2020-02-23', 'uploads/1/2020-02/133_article_text_142_2_10_20180602.pdf', '24-11-2019', '14', '4.01', 'tidak ada', 2, '2020-02-02 05:42:57', NULL),
(3, 10, 'gdjgjkl', 'gggge', 'S1', 'Ilmu Tafsir dan Qur', '2020/2021', 'Genap', '2020-02-25', '2020-02-27', 'uploads/1/2020-02/enen_no_shouboutai.png', '25-11-2019', '14.20', 'R 4.01', 'tidak ada', 2, '2020-02-05 00:44:41', NULL),
(4, 11, 'sknsk', 'nxvjsn', 'S1', 'Tasawuf Psikoterapi', 'nsvld;slv', 'Genap', '2020-02-05', '2020-02-29', 'uploads/11/2020-02/enen_no_shouboutai.png', '01-11-2019', ';lmxv;', 'm d', 'm xk', 5, '2020-02-05 01:38:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengalaman_penelitian`
--

CREATE TABLE `tb_pengalaman_penelitian` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengalaman_penelitian`
--

INSERT INTO `tb_pengalaman_penelitian` (`id`, `dosen_id`, `tahun`, `judul_penelitian`, `jabatan`, `sumber_dana`, `created_at`, `updated_at`) VALUES
(2, 10, 'jksnlnj', 'slvnlsvn', 'lsnvlsn', 'lnsvlskn', '2020-02-05 00:46:17', NULL),
(3, 10, 'svbskljb', 'jsbvkjsb', 'ljvbsjkvb', 'skjvsjk', '2020-02-05 00:46:27', NULL),
(4, 11, 'snbd', 'x ,,md', 'x,m vd', 'nc ja,', '2020-02-05 01:39:28', NULL),
(5, 11, 'x,mb dkn', 'cmv lkfd', ',xm v', 'c;lv m\'', '2020-02-05 01:39:35', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_mulai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_riwayat_jabatan`
--

INSERT INTO `tb_riwayat_jabatan` (`id`, `dosen_id`, `jabatan`, `tmt`, `gol_ruang`, `gaji_pokok`, `surat_keputusan`, `created_at`, `updated_at`, `tgl_mulai`, `pejabat`, `no_sk`) VALUES
(2, 10, 'PEMBINA', '2020-02-19', '4B', 200000, 'uploads/1/2020-02/000_cover_vol_01.jpg', '2020-02-04 13:04:56', '2020-02-04 13:27:09', '2020-02-24', 'sFAD', '123AFGS'),
(3, 10, 'PEMBINA', '2020-02-25', '3D', 2500000, 'uploads/1/2020-02/kiss_x_death.png', '2020-02-04 13:05:21', '2020-02-04 13:20:07', '2020-02-23', 'jkbljkb', NULL),
(4, 11, 'ASISTEN MADYA', '2020-02-29', '4A', 100000, 'uploads/11/2020-02/enen_no_shouboutai.png', '2020-02-05 00:58:47', NULL, '2020-02-02', 'jkbljkb', '5555'),
(5, 11, 'GURU BESAR', '2020-02-29', '3C', 2500000, 'uploads/11/2020-02/enen_no_shouboutai.png', '2020-02-05 00:59:16', '2020-02-05 00:59:51', '2020-02-01', 'kjbkjhjjbl', '5555');

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
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_sk` date NOT NULL,
  `tmt_sk` date NOT NULL,
  `gaji` double NOT NULL,
  `pak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_riwayat_kepangkatan`
--

INSERT INTO `tb_riwayat_kepangkatan` (`id`, `dosen_id`, `jenis_sk`, `pangkat`, `gol_ruang`, `no_sk`, `tgl_sk`, `tmt_sk`, `gaji`, `pak`, `created_at`, `updated_at`, `pejabat`) VALUES
(2, 10, 'TENAGA PENGAJAR', 'TENAGA PENGAJAR', '4A', '1234512', '2020-02-09', '2020-02-26', 25000000, 'tidak tahu', '2020-02-04 12:58:20', NULL, NULL),
(3, 10, 'TENAGA PENGAJAR', '3C', '3C', '1231412', '2020-02-25', '2020-02-29', 25000000, 'tidak tahu', '2020-02-04 12:58:48', '2020-02-04 13:01:20', 'kjbkjhjjbl'),
(4, 11, '3C', 'TENAGA PENGAJAR', '3B', '1111', '2020-02-12', '2020-02-29', 25000000, 'tidak tahu', '2020-02-05 00:54:09', '2020-02-05 00:55:29', 'kjbkjhjjbl'),
(5, 11, '3C', '4A', '4B', '5555', '2020-02-24', '2020-02-16', 25000000, 'tidak tahu', '2020-02-05 00:55:08', NULL, 'jkbljkb');

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
  `tahun_lulus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_riwayat_pendidikan`
--

INSERT INTO `tb_riwayat_pendidikan` (`id`, `dosen_id`, `tingkat_pendidikan`, `nama_sekolah_pt`, `fakultas`, `jurusan`, `tahun_lulus`, `sumber_dana`, `tempat`, `created_at`, `updated_at`) VALUES
(2, 10, 'SD', 'asmfm', '', '', 'm zvlkn', 'lnvks', 'lsnv;k', '2020-02-04 09:15:57', NULL),
(3, 10, 'SMP', 'alsnf;lakn', '', '', 'lsknf;aln', 'lkdnv;skn', 'knxlkvn', '2020-02-04 09:17:05', NULL),
(4, 10, 'SMA', 'alsnf;akn', '', 'skldnfvak', 'slknfs;kn', 'slknfsl', 'slknf', '2020-02-04 09:17:20', NULL),
(5, 10, 'S1', 'kanfsl', 'slnvlksn', 'slvns;kn', 'slknvs;k', 'ldknvd', 'sklnfa;', '2020-02-04 09:17:41', NULL),
(6, 10, 'S2', 'slknfa;n', 'sn;snv', 'snvsnvkn', 'snvcsnv;k', 'nsvkns;k', 'nvs;ksv', '2020-02-05 00:02:38', NULL),
(7, 11, 'SMP', 'kjsbvkj', '', '', 'skjbv', 'skjvb;l', 'sdcn', '2020-02-05 00:49:36', NULL),
(8, 11, 'SMA', 'nslvls', '', 'sjnvc', 'snvksj', 'slnv', 'lsndv', '2020-02-05 00:49:54', NULL),
(9, 11, 'S1', 'amnc', 'lnkac', 'alkn', 'lsnvlk', 'slknv', 'lsknv', '2020-02-05 00:50:08', NULL),
(10, 10, 'SMA', 'cileungsi', '', '', 'aadasd', 'asdasasdasd', 'asdas', '2020-02-20 03:07:52', NULL);

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

--
-- Dumping data untuk tabel `tb_saudara_kandung`
--

INSERT INTO `tb_saudara_kandung` (`id`, `dosen_id`, `nama`, `jk`, `tgl_lahir`, `pekerjaan`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 10, ';lnm nm;', 'Pria', '2020-02-18', 'TNI', 'Hidup', '2020-02-05 00:05:43', NULL),
(3, 10, 'm,nkn;mn', 'Pria', '2020-02-16', 'Ibu Rumah Tangga', 'Hidup', '2020-02-05 00:05:59', NULL),
(4, 11, 'sfsf', 'Pria', '2020-02-10', 'Buruh', 'Hidup', '2020-02-05 01:32:00', NULL),
(5, 11, 'vgdbfh', 'Wanita', '2020-02-21', 'Dan Lain-lain', 'Hidup', '2020-02-05 01:32:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanda_jasa_penghargaan`
--

CREATE TABLE `tb_tanda_jasa_penghargaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tanda_jasa_penghargaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemberi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_tanda_jasa_penghargaan`
--

INSERT INTO `tb_tanda_jasa_penghargaan` (`id`, `dosen_id`, `jenis`, `nama_tanda_jasa_penghargaan`, `tahun`, `pemberi`, `created_at`, `updated_at`) VALUES
(2, 10, 'Tanda Jasa', 'NLVNL;KND;FV', 'SVNS', 'NSVLSNVLSKN', '2020-02-04 13:30:08', NULL),
(3, 10, 'Penghargaan', 'SFLKFNLWB', 'LSNFLKSN', 'SLKNFSKN', '2020-02-04 13:30:23', NULL),
(4, 11, 'Tanda Jasa', 'penghargaa ipk tertinggi', 'amd', 's.,v ;', '2020-02-05 01:02:04', NULL),
(5, 11, 'Tanda Jasa', ';sgmbdl;mb', 'dvnlkdnq', 'dlknvd', '2020-02-05 01:02:15', '2020-02-05 01:02:32');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `tb_anak`
--
ALTER TABLE `tb_anak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_karya_ilmiah`
--
ALTER TABLE `tb_karya_ilmiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_keluarga`
--
ALTER TABLE `tb_keluarga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_ket_organisasi`
--
ALTER TABLE `tb_ket_organisasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_kunjungan_luar_negeri`
--
ALTER TABLE `tb_kunjungan_luar_negeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_kursus_latihan`
--
ALTER TABLE `tb_kursus_latihan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_kegiatan`
--
ALTER TABLE `tb_pengalaman_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_membingbing`
--
ALTER TABLE `tb_pengalaman_membingbing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_mengajar`
--
ALTER TABLE `tb_pengalaman_mengajar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pengalaman_penelitian`
--
ALTER TABLE `tb_pengalaman_penelitian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_jabatan`
--
ALTER TABLE `tb_riwayat_jabatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_kepangkatan`
--
ALTER TABLE `tb_riwayat_kepangkatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_saudara_kandung`
--
ALTER TABLE `tb_saudara_kandung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_tanda_jasa_penghargaan`
--
ALTER TABLE `tb_tanda_jasa_penghargaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
