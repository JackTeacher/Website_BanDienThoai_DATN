-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 12:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thegioididong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bac_tai_khoans`
--

CREATE TABLE `bac_tai_khoans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_bac_tai_khoan` varchar(100) NOT NULL,
  `han_muc` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bac_tai_khoans`
--

INSERT INTO `bac_tai_khoans` (`id`, `ten_bac_tai_khoan`, `han_muc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Không xếp bậc', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(2, 'Thành viên', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(3, 'Thành viên đồng', 100, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(4, 'Thành viên bạc', 1000, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(5, 'Thành viên vàng', 10000, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bo_nho_luu_trus`
--

CREATE TABLE `bo_nho_luu_trus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ram` varchar(500) NOT NULL,
  `bo_nho_trong` varchar(500) NOT NULL,
  `bo_nho_con_lai` varchar(500) NOT NULL,
  `the_nho` varchar(500) NOT NULL,
  `danh_ba` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bo_nho_luu_trus`
--

INSERT INTO `bo_nho_luu_trus` (`id`, `ram`, `bo_nho_trong`, `bo_nho_con_lai`, `the_nho`, `danh_ba`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4 GB', '128 GB', '110 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, '6 GB', '128 GB', '113 GB', 'Không có', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, '8 GB', '128 GB', '100 GB', 'Không có', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, '8 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, '8 GB', '256 GB', '229 GB', 'Không có', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, '8 GB', '128 GB', '107 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, '4 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 512 GB', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, '3 GB', '32 GB', '22 GB', 'MicroSD, hỗ trợ tối đa 128 GB', 'Không giới hạn', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, '16 MB', '24 MB', '110 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '500 số', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `camera_saus`
--

CREATE TABLE `camera_saus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `do_phan_giai` varchar(500) NOT NULL,
  `quay_phim` varchar(500) NOT NULL,
  `den_flash` varchar(500) NOT NULL,
  `tinh_nang` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `camera_saus`
--

INSERT INTO `camera_saus` (`id`, `do_phan_giai`, `quay_phim`, `den_flash`, `tinh_nang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chính 64 MP & Phụ 8 MP, 2 MP', '4K 2160p@30fps - FullHD 1080p@30fps - HD 720p@30fps', 'Có', 'AI Camera - Ban đêm (Night Mode) - Chuyên nghiệp (Pro) - Chạm lấy nét - Góc rộng (Wide) - HDR - Làm đẹp - Lấy nét theo pha (PDAF) -Nhận diện khuôn mặt - Siêu cận (Macro) - Toàn cảnh (Panorama) - Tự động lấy nét (AF) -Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, '3 camera 12 MP', '4K 2160p@24fps - 4K 2160p@30fps - 4K 2160p@60fps - FullHD 1080p@120fps - FullHD 1080p@240fps - FullHD 1080p@30fps - FullHD 1080p@60fps - HD 720p@30fps', 'Có', 'Ban đêm (Night Mode) - Chạm lấy nét - Chống rung quang học (OIS) - Dolby Vision HDR - Góc rộng (Wide) - Góc siêu rộng (Ultrawide) - HDR - Nhận diện khuôn mặt - Quay chậm (Slow Motion) - Siêu cận (Macro) - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Tự động lấy nét (AF) - Xóa phông - Zoom kỹ thuật số - Zoom quang học - Ảnh Raw', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', '4K 2160p@30fps - 4K 2160p@60fps - 8K 4320p@24fps - FullHD 1080p@240fps - FullHD 1080p@30fps - FullHD 1080p@60fps - HD 720p@30fps - HD 720p@960fps', 'Đèn LED kép', 'AI Camera - Ban đêm (Night Mode) - Bộ lọc màu - Chuyên nghiệp (Pro) - Chống rung quang học (OIS) - Góc rộng (Wide) - Góc siêu rộng (Ultrawide) - HDR - Làm đẹp - Quay chậm (Slow Motion) - Quay Siêu chậm (Super Slow Motion) - Quay video hiển thị kép - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xóa phông - Zoom kỹ thuật số - Zoom quang học', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Chính 64 MP & Phụ 8 MP, 2 MP', 'FullHD 1080p@24fps - FullHD 1080p@30fps - FullHD 1080p@60fps - HD 720p@120fps - HD 720p@24fps - HD 720p@30fps - HD 720p@60fps', 'Có', 'Ban đêm (Night Mode) - Chuyên nghiệp (Pro) - Chạm lấy nét - Góc siêu rộng (Ultrawide) - HDR - Làm đẹp - Nhãn dán (AR Stickers) - Nhận diện khuôn mặt - Quay chậm (Slow Motion) - Quay video hiển thị kép - Siêu cận (Macro) - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Tự động lấy nét (AF) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Chính 50 MP & Phụ 13 MP, 5 MP', '4K 2160p@30fps - 4K 2160p@60fps -  8K 4320p@24fps - FullHD 1080p@30fps - FullHD 1080p@60fps - HD 720p@30fps', 'Có', 'AI Camera - Ban đêm (Night Mode) - Bộ lọc màu -  Chuyên nghiệp (Pro) - Chống rung quang học (OIS) - Chụp bằng cử chỉ - Google Lens - Góc rộng (Wide) - Góc siêu rộng (Ultrawide) - HDR - Làm đẹp - Phơi sáng - Quay chậm (Slow Motion) - Quay video hiển thị kép - Siêu cận (Macro) - Siêu độ phân giải - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xiaomi ProFocus - Xóa phông - Ảnh Raw', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Chính 64 MP & Phụ 8 MP, 2 MP', 'FullHD 1080p@30fps - HD 720p@30fps - HD 720p@60fps', 'Có', 'AI Camera - Ban đêm (Night Mode) - Bộ lọc màu - Chuyên nghiệp (Pro) - Góc rộng (Wide) - HDR - Hiệu ứng Bokeh - Làm đẹp - Quay chậm (Slow Motion) - Quay video hiển thị kép - Siêu cận (Macro) - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Chính 50 MP & Phụ 2 MP, 2 MP', 'FullHD 1080p@30fps - HD 720p@30fps', 'Có', 'Ban đêm (Night Mode) - HDR - Làm đẹp - Siêu cận (Macro) - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Chính 8 MP & Phụ VGA, VGA', 'HD 720p@24fps', 'Có', 'Chạm lấy nét - Tự động lấy nét (AF) - Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Không có', 'Không có', 'Không có', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 'Chính 48 MP & Phụ 12 MP, 12 MP', 'HD 720p@30fps  FullHD 1080p@60fps  FullHD 1080p@30fps  4K 2160p@24fps  4K 2160p@30fps  4K 2160p@60fps', 'Có', 'Chế độ hành động (Action Mode)  Dolby Vision HDR  Trôi nhanh thời gian (Time Lapse)  Góc siêu rộng (Ultrawide)  Zoom kỹ thuật số  Cinematic  Quay chậm (Slow Motion)  Xóa phông  Deep Fusion  Toàn cảnh (Panorama)  Chống rung quang học (OIS)  Ban đêm (Night Mode)  Zoom quang học  Siêu cận (Macro)  Live Photo  Bộ lọc màu  Smart HDR 4', '2024-02-01 08:54:17', '2024-02-01 08:54:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `camera_truocs`
--

CREATE TABLE `camera_truocs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `do_phan_giai` varchar(500) NOT NULL,
  `tinh_nang` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `camera_truocs`
--

INSERT INTO `camera_truocs` (`id`, `do_phan_giai`, `tinh_nang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '32 MP', 'HDR - Làm đẹp - Nhãn dán (AR Stickers) - Nhận diện khuôn mặt - Quay video Full HD - Toàn cảnh (Panorama) - Tự động lấy nét (AF) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, '12 MP', 'HDR - Nhận diện khuôn mặt - Quay video 4K - Quay video Full HD - Quay video HD - Tự động lấy nét (AF) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, '40 MP', 'Bộ lọc màu - Chống rung - Chụp đêm - Góc rộng (Wide) - HDR - Live Photo - Làm đẹp - Làm đẹp A.I - Nhận diện khuôn mặt - Quay chậm (Slow Motion) - Quay video 4K - Quay video Full HD - Quay video HD - Trôi nhanh thời gian (Time Lapse) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, '50 MP', 'A.I Camera - Làm đẹp - Nhãn dán (AR Stickers) - Nhận diện khuôn mặt - Quay chậm (Slow Motion) - Quay video Full HD - Quay video HD - Tự động lấy nét (AF) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, '32 MP', 'Bộ lọc màu - Chân dung đêm - Chụp bằng cử chỉ - Flash màn hình - HDR - Hiệu ứng Bokeh - Làm đẹp A.I - Quay chậm (Slow Motion) - Quay video Full HD - Quay video HD - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, '16 MP', 'Bộ lọc màu - Chụp đêm - HDR - Hiệu ứng Bokeh - Làm đẹp - Nhận diện khuôn mặt - Quay video Full HD - Quay video HD - Toàn cảnh (Panorama) - Trôi nhanh thời gian (Time Lapse) - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, '8 MP', 'Chụp đêm - Làm đẹp - Xóa phông', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, '5 MP', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Không có', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, '13 MP', '13 MP', '2024-02-01 08:37:00', '2024-02-01 08:37:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cham_congs`
--

CREATE TABLE `cham_congs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nhan_vien_id` bigint(20) UNSIGNED NOT NULL,
  `he_so_luong_id` varchar(191) NOT NULL,
  `thuong_id` varchar(191) NOT NULL,
  `phu_cap_id` varchar(191) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `so_ngay_lam_viec` int(11) NOT NULL,
  `ung_truoc` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_dien_thoais`
--

CREATE TABLE `chi_tiet_dien_thoais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `man_hinh_id` bigint(20) UNSIGNED NOT NULL,
  `camera_sau_id` bigint(20) UNSIGNED NOT NULL,
  `camera_truoc_id` bigint(20) UNSIGNED NOT NULL,
  `he_dieu_hanh_cpu_id` bigint(20) UNSIGNED NOT NULL,
  `bo_nho_luu_tru_id` bigint(20) UNSIGNED NOT NULL,
  `ket_noi_id` bigint(20) UNSIGNED NOT NULL,
  `pin_sac_id` bigint(20) UNSIGNED NOT NULL,
  `tien_ich_id` bigint(20) UNSIGNED NOT NULL,
  `thong_tin_chung_id` bigint(20) UNSIGNED NOT NULL,
  `mau_sac_id` bigint(20) UNSIGNED NOT NULL,
  `gia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_dien_thoais`
--

INSERT INTO `chi_tiet_dien_thoais` (`id`, `dien_thoai_id`, `man_hinh_id`, `camera_sau_id`, `camera_truoc_id`, `he_dieu_hanh_cpu_id`, `bo_nho_luu_tru_id`, `ket_noi_id`, `pin_sac_id`, `tien_ich_id`, `thong_tin_chung_id`, `mau_sac_id`, `gia`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8900000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 8900000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 33590000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 33990000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 7, 30990000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 30990000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 8490000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 8490000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 19900000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 7900000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(11, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 7900000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(12, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 4200000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(13, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 4200000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(14, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 6, 2290000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 2290000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(16, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 2, 750000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(17, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 750000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(18, 10, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 13990000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(19, 11, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 28490000, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(20, 18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11990000, '2022-11-11 06:10:34', '2022-11-11 06:10:34', NULL),
(21, 18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 11990000, '2022-11-11 06:18:33', '2022-11-11 06:18:33', NULL),
(22, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 4, 16490000, '2022-11-11 07:42:23', '2022-11-11 07:42:23', NULL),
(23, 19, 1, 1, 1, 1, 4, 1, 3, 1, 1, 2, 6090000, '2024-02-01 06:34:24', '2024-02-01 06:34:24', NULL),
(24, 19, 1, 1, 1, 10, 5, 1, 3, 1, 1, 9, 6690000, '2024-02-01 06:37:17', '2024-02-01 06:37:17', NULL),
(25, 19, 1, 1, 1, 10, 5, 1, 3, 1, 1, 4, 6690000, '2024-02-01 06:38:11', '2024-02-01 06:38:11', NULL),
(26, 20, 1, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4990000, '2024-02-01 06:48:42', '2024-02-01 06:48:42', NULL),
(27, 20, 1, 1, 1, 1, 4, 1, 1, 1, 1, 2, 4990000, '2024-02-01 06:49:25', '2024-02-01 06:49:25', NULL),
(28, 20, 1, 1, 1, 1, 4, 1, 1, 1, 1, 12, 4990000, '2024-02-01 06:50:10', '2024-02-01 06:50:10', NULL),
(29, 21, 1, 1, 1, 10, 1, 1, 10, 1, 1, 13, 7990000, '2024-02-01 08:39:59', '2024-02-01 08:39:59', NULL),
(30, 21, 1, 1, 1, 1, 4, 1, 10, 1, 1, 14, 7990000, '2024-02-01 08:40:37', '2024-02-01 08:40:37', NULL),
(31, 22, 1, 1, 1, 1, 1, 3, 1, 1, 1, 5, 27990000, '2024-02-01 08:56:35', '2024-02-01 08:56:35', NULL),
(32, 23, 8, 1, 1, 1, 1, 1, 1, 1, 1, 15, 31990000, '2024-04-11 03:08:48', '2024-04-11 03:08:48', NULL),
(33, 23, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 31990000, '2024-04-11 03:09:11', '2024-04-11 03:09:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `don_hang_id` varchar(191) NOT NULL,
  `chi_tiet_dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `gia` double NOT NULL,
  `gia_giam` double NOT NULL,
  `so_luong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `chi_tiet_dien_thoai_id`, `gia`, `gia_giam`, `so_luong`, `created_at`, `updated_at`) VALUES
(1, 'DHAABBCC20220101', 1, 8900000, 8010000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(2, 'DHAABBCC20220101', 3, 33590000, 30231000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(3, 'DHCCDDEE20220201', 5, 30990000, 27891000, 35, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(4, 'DHCCDDEE20220201', 7, 8490000, 7641000, 8, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(5, 'DHQQWWEE20220301', 9, 19900000, 19900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(6, 'DHQQWWEE20220301', 10, 7900000, 7900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(7, 'DHRRTTYY20220401', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(8, 'DHRRTTYY20220401', 14, 2290000, 2290000, 22, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(9, 'DHPPOOII20220501', 16, 750000, 750000, 60, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(10, 'DHPPOOII20220501', 16, 750000, 750000, 80, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(11, 'DHHHJJKK20220601', 14, 2290000, 2290000, 50, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(12, 'DHHHJJKK20220601', 12, 4200000, 4200000, 58, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(13, 'DHAABBCC20210101', 1, 8900000, 8010000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(14, 'DHAABBCC20210101', 3, 33590000, 30231000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(15, 'DHCCDDEE20210201', 5, 30990000, 27891000, 35, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(16, 'DHCCDDEE20210201', 7, 8490000, 7641000, 8, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(17, 'DHQQWWEE20210301', 9, 19900000, 19900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(18, 'DHQQWWEE20210301', 10, 7900000, 7900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(19, 'DHRRTTYY20210401', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(20, 'DHRRTTYY20210401', 14, 2290000, 2290000, 22, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(21, 'DHPPOOII20210501', 16, 750000, 750000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(22, 'DHHHJJKK20210601', 14, 2290000, 2290000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(23, 'DHHHJJKK20210601', 12, 4200000, 4200000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(24, 'DHZZJJKK20210701', 10, 7900000, 7900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(25, 'DHZZJJKK20210701', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(26, 'DHLLHHKK20210801', 10, 7900000, 7900000, 30, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(27, 'DHLLHHKK20210801', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(28, 'DHLLHHMM20210901', 12, 4200000, 4200000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(29, 'DHLLHHMM20211001', 14, 2290000, 2290000, 50, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(30, 'DHLLHHMM20211101', 9, 19900000, 19900000, 55, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(31, 'DHLLHHMM20211201', 3, 33590000, 30231000, 40, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(32, 'DHAABBCC20200101', 1, 8900000, 8010000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(33, 'DHCCDDEE20200201', 5, 30990000, 27891000, 35, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(34, 'DHQQWWEE20200301', 10, 7900000, 7900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(35, 'DHRRTTYY20200401', 14, 2290000, 2290000, 22, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(36, 'DHPPOOII20200501', 16, 750000, 750000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(37, 'DHHHJJKK20200601', 12, 4200000, 4200000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(38, 'DHZZJJKK20200701', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(39, 'DHLLHHKK20200801', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(40, 'DHLLHHMM20200901', 12, 4200000, 4200000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(41, 'DHLLHHMM20201001', 14, 2290000, 2290000, 50, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(42, 'DHLLHHMM20201101', 9, 19900000, 19900000, 55, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(43, 'DHLLHHMM20201201', 3, 33590000, 30231000, 40, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(44, 'DHAABBCC20190101', 1, 8900000, 8010000, 38, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(45, 'DHCCDDEE20190201', 5, 30990000, 27891000, 55, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(46, 'DHQQWWEE20190301', 10, 7900000, 7900000, 25, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(47, 'DHRRTTYY20190401', 14, 2290000, 2290000, 42, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(48, 'DHPPOOII20190501', 16, 750000, 750000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(49, 'DHHHJJKK20190601', 12, 4200000, 4200000, 38, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(50, 'DHZZJJKK20190701', 12, 4200000, 4200000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(51, 'DHLLHHKK20190801', 12, 4200000, 4200000, 80, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(52, 'DHLLHHMM20190901', 12, 4200000, 4200000, 18, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(53, 'DHLLHHMM20191001', 14, 2290000, 2290000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(54, 'DHLLHHMM20191101', 9, 19900000, 19900000, 35, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(55, 'DHLLHHMM20191201', 3, 33590000, 30231000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(56, 'DHAABBCC20180101', 1, 8900000, 8010000, 18, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(57, 'DHCCDDEE20180201', 5, 30990000, 27891000, 45, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(58, 'DHQQWWEE20180301', 10, 7900000, 7900000, 55, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(59, 'DHRRTTYY20180401', 14, 2290000, 2290000, 12, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(60, 'DHPPOOII20180501', 16, 750000, 750000, 10, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(61, 'DHHHJJKK20180601', 12, 4200000, 4200000, 18, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(62, 'DHZZJJKK20180701', 12, 4200000, 4200000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(63, 'DHLLHHKK20180801', 12, 4200000, 4200000, 50, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(64, 'DHLLHHMM20180901', 12, 4200000, 4200000, 28, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(65, 'DHLLHHMM20181001', 14, 2290000, 2290000, 30, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(66, 'DHLLHHMM20181101', 9, 19900000, 19900000, 15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(67, 'DHLLHHMM20181201', 3, 33590000, 30231000, 20, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(68, 'DHyZkdCI20221112', 5, 30990000, 27891000, 1, '2022-11-11 23:54:37', '2022-11-11 23:54:37'),
(69, 'DHOvNqhq20221113', 6, 30990000, 27891000, 1, '2022-11-13 04:01:53', '2022-11-13 04:01:53'),
(70, 'DHy8VMQA20221113', 6, 30990000, 27891000, 1, '2022-11-13 05:50:10', '2022-11-13 05:50:10'),
(71, 'DHrjaVnZ20230808', 1, 8900000, 8900000, 1, '2023-08-07 21:22:16', '2023-08-07 21:22:16'),
(72, 'DHrjaVnZ20230808', 2, 8900000, 8900000, 1, '2023-08-07 21:22:16', '2023-08-07 21:22:16'),
(73, 'DHcKGk0r20231027', 3, 33590000, 33590000, 1, '2023-10-27 01:07:49', '2023-10-27 01:07:49'),
(74, 'DH8d1ekM20240116', 9, 19900000, 19900000, 1, '2024-01-16 08:42:48', '2024-01-16 08:42:48'),
(75, 'DHJZxPQL20240120', 8, 8490000, 8490000, 1, '2024-01-20 08:10:10', '2024-01-20 08:10:10'),
(76, 'DHJU6Ilj20240120', 4, 33990000, 33990000, 1, '2024-01-20 08:32:05', '2024-01-20 08:32:05'),
(77, 'DHgpJ6kv20240411', 6, 30990000, 30990000, 1, '2024-04-11 03:19:22', '2024-04-11 03:19:22'),
(78, 'DH3c5aR120240411', 8, 8490000, 8490000, 1, '2024-04-11 03:20:54', '2024-04-11 03:20:54'),
(79, 'DHyar0qX20240411', 5, 30990000, 24792000, 1, '2024-04-11 03:26:20', '2024-04-11 03:26:20'),
(80, 'DHyar0qX20240411', 7, 8490000, 6792000, 1, '2024-04-11 03:26:20', '2024-04-11 03:26:20'),
(81, 'DH3xRZXY20240412', 3, 33590000, 33590000, 1, '2024-04-12 10:41:29', '2024-04-12 10:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_khos`
--

CREATE TABLE `chi_tiet_khos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kho_id` bigint(20) UNSIGNED NOT NULL,
  `chi_tiet_dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_khos`
--

INSERT INTO `chi_tiet_khos` (`id`, `kho_id`, `chi_tiet_dien_thoai_id`, `so_luong`, `ngay_nhap`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 99, '2022-01-01', '2022-11-01 05:35:29', '2023-08-07 21:22:16', NULL),
(2, 2, 2, 99, '2022-01-01', '2022-11-01 05:35:29', '2023-08-07 21:22:16', NULL),
(3, 2, 3, 99, '2022-01-01', '2022-11-01 05:35:29', '2023-10-27 01:07:49', NULL),
(4, 2, 4, 99, '2022-01-01', '2022-11-01 05:35:29', '2024-01-20 08:32:05', NULL),
(5, 2, 5, 99, '2022-01-01', '2022-11-01 05:35:29', '2024-04-11 03:27:04', NULL),
(6, 2, 6, 99, '2022-01-01', '2022-11-01 05:35:29', '2024-04-11 03:19:22', NULL),
(7, 2, 7, 100, '2022-01-01', '2022-11-01 05:35:29', '2024-04-11 03:27:04', NULL),
(8, 2, 8, 98, '2022-01-01', '2022-11-01 05:35:29', '2024-04-11 03:20:54', NULL),
(9, 2, 9, 99, '2022-01-01', '2022-11-01 05:35:29', '2024-01-16 08:42:48', NULL),
(10, 2, 10, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(11, 2, 11, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(12, 2, 12, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(13, 2, 13, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(14, 2, 14, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(15, 2, 15, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(16, 2, 16, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(17, 2, 17, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(18, 2, 18, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(19, 2, 19, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(20, 2, 20, 100, '2022-01-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(21, 2, 30, 20, '2024-04-11', '2024-04-11 03:36:04', '2024-04-11 03:36:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_khuyen_mais`
--

CREATE TABLE `chi_tiet_khuyen_mais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khuyen_mai_id` bigint(20) UNSIGNED NOT NULL,
  `dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `phan_tram_giam` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_khuyen_mais`
--

INSERT INTO `chi_tiet_khuyen_mais` (`id`, `khuyen_mai_id`, `dien_thoai_id`, `phan_tram_giam`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.15, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(2, 1, 2, 0.1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(3, 1, 3, 0.1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(4, 1, 4, 0.1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(5, 1, 5, 0.05, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(6, 1, 6, 0.05, '2022-11-01 05:35:29', '2022-11-01 05:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_chuc_vu` varchar(30) NOT NULL,
  `luong_co_ban` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`, `luong_co_ban`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Quản lý cửa hàng', 15000000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(2, 'Quản lý kho', 15000000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(3, 'Nhân viên', 10000000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cua_hangs`
--

CREATE TABLE `cua_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_cua_hang` varchar(30) NOT NULL,
  `dia_chi` varchar(500) NOT NULL,
  `google_map` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cua_hangs`
--

INSERT INTO `cua_hangs` (`id`, `ten_cua_hang`, `dia_chi`, `google_map`, `created_at`, `updated_at`) VALUES
(2, '180 Lê Văn Việt', '180 Lê Văn Việt, P. Tăng Nhơn Phú B, Q. 9, TP.HCM', 'https://www.google.com/maps/place/224%2F2A+Lũy+Bán+Bích,+Hoà+Thanh,+Tân+Phú,+Thành+phố+Hồ+Chí+Minh,+Việt+Nam/@10.7877934,106.6342917,17z/data=!3m1!4b1!4m5!3m4!1s0x31752eac186db1a3:0x6bad77b88262ae95!8m2!3d10.7877934!4d106.6364804?hl=vi-VN', '2022-11-01 05:35:29', '2022-11-11 06:51:58'),
(3, 'Cửa hàng 2 Bình Thạnh', '474 Điện Biên Phủ, P. 17, Q. Bình Thạnh, TP.HCM', 'https://www.google.com/maps/place/2+Tân+Kỳ+Tân+Quý,+Bình+Hưng+Hoà+A,+Bình+Tân,+Thành+phố+Hồ+Chí+Minh,+Việt+Nam/@10.7924861,106.6054022,17z/data=!3m1!4b1!4m5!3m4!1s0x31752c0aee6278bd:0xddd5098866a1f499!8m2!3d10.7924861!4d106.6075909?hl=vi-VN', '2022-11-01 05:35:29', '2022-11-11 06:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `danh_gias`
--

CREATE TABLE `danh_gias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` varchar(191) NOT NULL,
  `so_sao` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_gias`
--

INSERT INTO `danh_gias` (`id`, `tai_khoan_id`, `dien_thoai_id`, `noi_dung`, `so_sao`, `trang_thai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 1, 'Tốt', 5, 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(2, 12, 4, 'OKK', 5, 1, '2024-04-11 03:29:29', '2024-04-11 03:29:29', NULL),
(3, 12, 1, 'OKK', 5, 1, '2024-04-11 03:30:34', '2024-04-11 03:30:34', NULL),
(4, 12, 6, 'OK', 5, 1, '2024-04-12 10:20:25', '2024-04-12 10:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dien_thoais`
--

CREATE TABLE `dien_thoais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thuong_hieu_id` bigint(20) UNSIGNED NOT NULL,
  `ten_san_pham` varchar(100) NOT NULL,
  `mo_ta` varchar(500) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dien_thoais`
--

INSERT INTO `dien_thoais` (`id`, `thuong_hieu_id`, `ten_san_pham`, `mo_ta`, `trang_thai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 'OPPO Reno6 Z 5G', 'Bộ sản phẩm gồm: Hộp, Cây lấy sim, Ốp lưng, Tai nghe dây, Cáp Type C, Củ sạc nhanh rời đầu Type A, Sách hướng dẫn', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 1, 'iPhone 13 Pro Max', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 7, 'Samsung Galaxy S22 Ultra 5G', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Cáp Type C', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 8, 'Vivo V23e', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Jack chuyển tai nghe 3.5mm, Cây lấy sim, Ốp lưng, Cáp Type C, Củ sạc nhanh rời đầu Type A, Tai nghe dây', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 9, 'Xiaomi 12', 'Bộ sản phẩm gồm: Cáp Type C, Cây lấy sim, Củ sạc nhanh rời đầu Type A, Hộp, Sách hướng dẫn, Ốp lưng', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 6, 'Realme 9 Pro 5G', 'Bộ sản phẩm gồm: Cáp Type C, Củ sạc nhanh rời đầu Type A, Cây lấy sim, Hộp, Sách hướng dẫn, Ốp lưng', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 4, 'Nokia G21', 'Bộ sản phẩm gồm: Cáp Type C, Củ sạc nhanh rời đầu Type A, Cây lấy sim, Hộp, Sách hướng dẫn, Ốp lưng', 1, '2022-11-01 05:35:27', '2024-02-01 08:46:13', NULL),
(8, 2, 'Itel L6502', 'Bộ sản phẩm gồm: Hộp, Sạc, Sách hướng dẫn, Ốp lưng, Cáp microUSB, Tai nghe dây', 0, '2022-11-01 05:35:27', '2024-02-01 08:45:22', NULL),
(9, 3, 'Masstel FAMI 60 4G', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Sạc liền đầu Type C, Pin', 0, '2022-11-01 05:35:27', '2024-02-01 08:45:17', NULL),
(10, 9, 'Xiaomi 11T Pro 5G', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Ốp lưng, Cáp Type C, Củ sạc nhanh rời đầu Type A', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(11, 1, 'iPhone 12 Pro', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C', 1, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(12, 2, 'Test', 'aaaaaaaaaaaaa', 1, '2022-11-01 05:51:51', '2022-11-11 01:05:46', '2022-11-11 01:05:46'),
(13, 1, 'IPSHSHSHH 13', 'aaaaaaaaaaaaaaaaaaa', 1, '2022-11-11 00:56:56', '2022-11-11 01:06:02', '2022-11-11 01:06:02'),
(14, 1, 'Iphone 14', NULL, 1, '2022-11-11 01:01:45', '2022-11-11 01:05:32', '2022-11-11 01:05:32'),
(15, 1, 'IPHONE 14S', NULL, 1, '2022-11-11 01:05:16', '2022-11-11 01:05:54', '2022-11-11 01:05:54'),
(18, 7, 'Sam Sung Galaxy A73 5G 128GB', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C', 1, '2022-11-11 06:08:12', '2022-11-11 06:27:41', NULL),
(19, 7, 'Điện thoại Samsung Galaxy A25 5G 8GB', 'Samsung Galaxy A25 5G 8GB một trong những mẫu điện thoại tầm trung mới nhất của Samsung được ra mắt vào tháng 12 năm 2023. Máy sở hữu thiết kế trẻ trung, màn hình Super AMOLED sống động, camera 50 MP chất lượng và pin 5000 mAh cho thời gian sử dụng lâu dài.', 1, '2024-02-01 06:27:37', '2024-02-01 06:27:37', NULL),
(20, 7, 'Điện thoại Samsung Galaxy A15 128GB', 'Vào dịp cuối năm 2023, Samsung tiếp tục mang đến cho người dùng mẫu điện thoại Samsung Galaxy A thế hệ mới, đây là phiên bản nâng cấp của Galaxy A14 với tên gọi Samsung Galaxy A15. Máy sở hữu phong cách thiết kế hiện đại, màn hình Super AMOLED sắc nét cùng một hiệu năng ổn định.', 1, '2024-02-01 06:44:43', '2024-02-01 06:44:43', NULL),
(21, 7, 'Điện thoại Samsung Galaxy M34 5G', 'Samsung Galaxy M34 5G đã thu hút sự chú ý của cộng đồng người dùng smartphone không chỉ với mức giá hấp dẫn mà còn với bộ thông số kỹ thuật ấn tượng. Khả năng vượt trội của camera, pin lớn cùng với thiết kế bắt mắt của chiếc điện thoại hứa hẹn mang đến những trải nghiệm sử dụng tốt nhất dành cho bạn.', 1, '2024-02-01 08:32:58', '2024-02-01 08:32:58', NULL),
(22, 1, 'Điện thoại iPhone 14 Pro Max 128GB', 'Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C Xem hình', 1, '2024-02-01 08:51:11', '2024-02-01 08:51:11', NULL),
(23, 1, 'Điện thoại iPhone 15 Pro 128GB', 'aaaaaaaaaaaaa', 1, '2024-04-11 03:04:33', '2024-04-11 03:04:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `ma_don_hang` varchar(191) NOT NULL,
  `tai_khoan_khach_hang_id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_nhan_vien_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phieu_giam_gia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cua_hang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(191) NOT NULL,
  `dia_chi_nhan_hang` varchar(191) NOT NULL,
  `so_dien_thoai_nguoi_nhan` varchar(191) NOT NULL,
  `ghi_chu` varchar(191) DEFAULT NULL,
  `phuong_thuc_nhan_hang` int(11) NOT NULL,
  `phuong_thuc_thanh_toan` int(11) NOT NULL,
  `ngay_giao` date DEFAULT NULL,
  `ngay_tao` date NOT NULL,
  `trang_thai_thanh_toan` int(11) NOT NULL,
  `trang_thai_don_hang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_hangs`
--

INSERT INTO `don_hangs` (`ma_don_hang`, `tai_khoan_khach_hang_id`, `tai_khoan_nhan_vien_id`, `phieu_giam_gia_id`, `cua_hang_id`, `ho_ten_nguoi_nhan`, `dia_chi_nhan_hang`, `so_dien_thoai_nguoi_nhan`, `ghi_chu`, `phuong_thuc_nhan_hang`, `phuong_thuc_thanh_toan`, `ngay_giao`, `ngay_tao`, `trang_thai_thanh_toan`, `trang_thai_don_hang`, `created_at`, `updated_at`) VALUES
('DHAABBCC20220101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-01-02', '2022-01-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHCCDDEE20220201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-02-02', '2022-02-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHQQWWEE20220301', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-03-02', '2022-03-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHRRTTYY20220401', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-04-02', '2022-04-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHPPOOII20220501', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-05-02', '2022-05-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHHHJJKK20220601', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2022-06-02', '2022-06-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHAABBCC20210101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-01-02', '2021-01-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHCCDDEE20210201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-02-02', '2021-02-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHQQWWEE20210301', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-03-02', '2021-03-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHRRTTYY20210401', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-04-02', '2021-04-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHPPOOII20210501', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-05-02', '2021-05-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHHHJJKK20210601', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-06-02', '2021-06-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHZZJJKK20210701', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-07-02', '2021-07-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHKK20210801', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-08-02', '2021-08-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20210901', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-09-02', '2021-09-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20211001', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-10-02', '2021-10-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20211101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-11-02', '2021-11-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20211201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2021-12-02', '2021-12-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHAABBCC20200101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-01-02', '2020-01-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHCCDDEE20200201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-02-02', '2020-02-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHQQWWEE20200301', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-03-02', '2020-03-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHRRTTYY20200401', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-04-02', '2020-04-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHPPOOII20200501', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-05-02', '2020-05-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHHHJJKK20200601', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-06-02', '2020-06-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHZZJJKK20200701', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-07-02', '2020-07-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHKK20200801', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-08-02', '2020-08-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20200901', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-09-02', '2020-09-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20201001', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-10-02', '2020-10-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20201101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-11-02', '2020-11-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20201201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2020-12-02', '2020-12-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHAABBCC20190101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-01-02', '2019-01-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHCCDDEE20190201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-02-02', '2019-02-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHQQWWEE20190301', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-03-02', '2019-03-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHRRTTYY20190401', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-04-02', '2019-04-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHPPOOII20190501', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-05-02', '2019-05-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHHHJJKK20190601', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-06-02', '2019-06-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHZZJJKK20190701', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-07-02', '2019-07-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHKK20190801', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-08-02', '2019-08-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20190901', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-09-02', '2019-09-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20191001', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-10-02', '2019-10-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20191101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-11-02', '2019-11-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20191201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2019-12-02', '2019-12-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHAABBCC20180101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-01-02', '2018-01-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHCCDDEE20180201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-02-02', '2018-02-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHQQWWEE20180301', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-03-02', '2018-03-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHRRTTYY20180401', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-04-02', '2018-04-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHPPOOII20180501', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-05-02', '2018-05-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHHHJJKK20180601', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-06-02', '2018-06-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHZZJJKK20180701', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-07-02', '2018-07-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHKK20180801', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-08-02', '2018-08-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20180901', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-09-02', '2018-09-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20181001', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-10-02', '2018-10-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20181101', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-11-02', '2018-11-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHLLHHMM20181201', 8, 1, NULL, 1, 'Nguyễn Thành Trung', '75B Phường 26,Bình Thạnh,TP Hồ Chí Minh', '0918123456', '', 1, 1, '2018-12-02', '2018-12-01', 1, 3, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
('DHyZkdCI20221112', 10, 1, NULL, NULL, 'Nguyễn Tấn Đạt', 'TP Hồ Chí Minh', '0999999999', 'OK', 1, 1, NULL, '2022-11-12', 0, 1, '2022-11-11 23:54:37', '2022-11-13 05:52:30'),
('DHOvNqhq20221113', 9, NULL, NULL, NULL, 'Nguyễn Thanh Lâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '0999999994', 'OK', 1, 1, NULL, '2022-11-13', 0, 4, '2022-11-13 04:01:53', '2022-11-13 04:02:27'),
('DHy8VMQA20221113', 10, NULL, NULL, NULL, 'Nguyễn Tấn Đạt', 'TP Hồ Chí Minh', '0999999999', 'OK', 1, 1, NULL, '2022-11-13', 0, 4, '2022-11-13 05:50:10', '2022-11-13 05:50:55'),
('DHrjaVnZ20230808', 9, 1, NULL, NULL, 'Nguyễn Thanh Lâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '0999999994', 'OK', 1, 1, '2023-08-08', '2023-08-08', 1, 3, '2023-08-07 21:22:16', '2023-08-07 21:23:35'),
('DHcKGk0r20231027', 9, NULL, NULL, NULL, 'Nguyễn Thanh Lâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '0999999994', 'OK', 1, 3, NULL, '2023-10-27', 1, 0, '2023-10-27 01:07:49', '2023-10-27 01:07:49'),
('DH8d1ekM20240116', 10, NULL, NULL, NULL, 'Nguyễn Tấn Đạt', 'TP Hồ Chí Minh', '0999999999', 'OK', 1, 1, NULL, '2024-01-16', 0, 3, '2024-01-16 08:42:48', '2024-01-16 08:42:48'),
('DHJZxPQL20240120', 10, NULL, NULL, NULL, 'Nguyễn Tấn Đạt', 'TP Hồ Chí Minh', '0999999999', 'OK', 1, 3, NULL, '2024-01-20', 1, 0, '2024-01-20 08:10:10', '2024-01-20 08:10:10'),
('DHJU6Ilj20240120', 11, 1, NULL, NULL, 'Nguyễn Thành Trung', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '0989275440', 'OK', 1, 3, '2024-01-20', '2024-01-20', 1, 3, '2024-01-20 08:32:05', '2024-01-20 08:34:24'),
('DHgpJ6kv20240411', 12, NULL, NULL, NULL, 'Phùng Văn Bình', 'TP HCM', '0987654321', 'OKKK', 1, 1, NULL, '2024-04-11', 0, 0, '2024-04-11 03:19:22', '2024-04-11 03:19:22'),
('DH3c5aR120240411', 12, 1, NULL, NULL, 'Phùng Văn Bình', 'TP HCM', '0987654321', 'OKK', 1, 3, '2024-04-11', '2024-04-11', 1, 3, '2024-04-11 03:20:54', '2024-04-11 03:28:25'),
('DHyar0qX20240411', 12, NULL, 12, NULL, 'Phùng Văn Bình', 'TP HCM', '0987654321', 'OKK', 1, 1, NULL, '2024-04-11', 0, 4, '2024-04-11 03:26:20', '2024-04-11 03:27:04'),
('DH3xRZXY20240412', 12, NULL, NULL, 2, 'Phùng Văn Bình', '180 Lê Văn Việt, P. Tăng Nhơn Phú B, Q. 9, TP.HCM', '0987654321', 'OKKK', 2, 1, NULL, '2024-04-12', 0, 0, '2024-04-12 10:41:29', '2024-04-12 10:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `he_dieu_hanh_cpus`
--

CREATE TABLE `he_dieu_hanh_cpus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `he_dieu_hanh` varchar(500) NOT NULL,
  `chip_xu_ly` varchar(500) NOT NULL,
  `toc_do_cpu` varchar(500) NOT NULL,
  `chip_do_hoa` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `he_dieu_hanh_cpus`
--

INSERT INTO `he_dieu_hanh_cpus` (`id`, `he_dieu_hanh`, `chip_xu_ly`, `toc_do_cpu`, `chip_do_hoa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Android 11', 'MediaTek Dimensity 800U 5G 8 nhân', '2 nhân 2.4 GHz & 6 nhân 2 GHz', 'Mali-G57 MC3', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'iOS 15', 'Apple A15 Bionic 6 nhân', '3.22 GHz', 'Apple GPU 5 nhân', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Android 12', 'Snapdragon 8 Gen 1 8 nhân', '1 nhân 3 GHz, 3 nhân 2.5 GHz & 4 nhân 1.79 GHz', 'Adreno 730', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Android 11', 'MediaTek Helio G96 8 nhân', '2 nhân 2.05 GHz & 6 nhân 2.0 GHz', 'Mali-G57 MC2', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Android 12', 'Snapdragon 8 Gen 1 8 nhân', '1 nhân 3 GHz, 3 nhân 2.5 GHz & 4 nhân 1.79 GHz', 'Adreno 730', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Android 12', 'Snapdragon 695 5G 8 nhân', '2 nhân 2.2 GHz & 6 nhân 1.8 GHz', 'Adreno 619', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Android 11', 'Unisoc T606 8 nhân', '1.6 GHz', 'Mali-G57', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Android 10 (Go Edition)', 'Spreadtrum SC9832E 4 nhân', '1.4 GHz', 'Mali-T820 MP1', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Không có', 'Unisoc UIS8910', 'Không có', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 'Android 14', 'Exynos 1280', '66', 'Exynos 1280', '2024-02-01 06:36:38', '2024-02-01 06:36:38', NULL),
(11, 'iOS 16', 'Apple A16 Bionic 6 nhân', '3.46 GHz', 'Apple GPU 5 nhân', '2024-02-01 08:55:04', '2024-02-01 08:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `he_so_luongs`
--

CREATE TABLE `he_so_luongs` (
  `ma_hsl` varchar(191) NOT NULL,
  `he_so_luong` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `he_so_luongs`
--

INSERT INTO `he_so_luongs` (`ma_hsl`, `he_so_luong`, `created_at`, `updated_at`, `deleted_at`) VALUES
('A', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('B', 1.5, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('C', 2, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('D', 2.5, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_banner_trang_chus`
--

CREATE TABLE `hinh_anh_banner_trang_chus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hinh_anh` varchar(191) NOT NULL,
  `loai_banner` int(11) NOT NULL,
  `vi_tri` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_chung_cua_dien_thoais`
--

CREATE TABLE `hinh_anh_chung_cua_dien_thoais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `hinh_anh` varchar(191) NOT NULL,
  `loai_hinh` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinh_anh_chung_cua_dien_thoais`
--

INSERT INTO `hinh_anh_chung_cua_dien_thoais` (`id`, `dien_thoai_id`, `hinh_anh`, `loai_hinh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhDaiDien/oppo-reno6-z-5g-aurora-1-600x600.jpg', 0, '2022-11-01 05:35:27', '2022-11-11 03:56:01', NULL),
(2, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMoHop/oppo-reno6-z-5g-bbh-org.jpg', 1, '2022-11-01 05:35:27', '2022-11-11 03:56:01', NULL),
(3, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhThongSoKyThuat/oppo-reno6-z-note.jpg', 2, '2022-11-01 05:35:27', '2022-11-11 03:56:01', NULL),
(4, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno-6z-thumb-1020x570.jpg', 3, '2022-11-01 05:35:27', '2022-11-11 04:01:40', NULL),
(5, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/10.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 06:49:57', NULL),
(6, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-3.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-4.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-5.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-6.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-7.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(11, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-8.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(12, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-9.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(13, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-10.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(14, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-11.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(15, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-12.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(16, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-13.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(17, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhNoiBat/oppo-reno6-z-5g-detail-14.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(18, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-17.jpg', 4, '2022-11-01 05:35:27', '2022-11-11 03:59:13', NULL),
(19, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-2.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(20, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-4.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(21, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-4.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(22, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-5.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(23, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-6.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(24, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-7.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(25, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-8.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(26, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-9.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(27, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-10.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(28, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-11.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(29, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-12.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(30, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-13.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(31, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-14.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(32, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-15.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(33, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-16.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(34, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-17.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(35, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-18.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(36, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-19.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(37, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-20.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(38, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-21.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(39, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-22.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(40, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-23.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(41, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-24.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(42, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-25.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(43, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-26.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(44, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-27.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(45, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-28.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(46, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-29.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(47, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-30.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(48, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-31.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(49, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-32.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(50, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-33.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(51, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-34.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(52, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-35.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(53, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnh360/oppo-reno6-z-5g-360-org-36.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(54, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhDaiDien/iphone-13-xanh-la-thumb-1-600x600.jpg', 0, '2022-11-01 05:35:27', '2022-11-11 01:18:22', NULL),
(55, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhMoHop/iphone-13-pro-max-bh-org.jpg', 1, '2022-11-01 05:35:27', '2022-11-12 00:09:40', NULL),
(56, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhThongSoKyThuat/iphone-13-pro-max-n-2.jpg', 2, '2022-11-01 05:35:27', '2022-11-12 00:09:40', NULL),
(57, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/RV-iphone-13-pro-max-Gioi-thieu-1020x570.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:10:37', NULL),
(58, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-256gb637698376653324619.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:10:47', NULL),
(59, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-256gb637698376647324398.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:10:55', NULL),
(60, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-slider-120hz-1020x570.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:11:06', NULL),
(61, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-slider-promotion-1020x570.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:11:14', NULL),
(62, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-slider-oled-1020x570-1.jpg', 3, '2022-11-01 05:35:27', '2022-11-12 00:11:23', NULL),
(63, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-camera.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(64, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-anh-macro.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(65, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-truedepth.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(66, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-deep-fusion.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(67, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-anh-chup.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(68, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-night-mode.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(69, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/vi-vn-iphone-13-pro-max-slider-thiet-ke.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(70, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnhNoiBat/iphone-13-pro-max-slider-5g-1020x570.jpg', 3, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(71, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-33.jpg', 4, '2022-11-01 05:35:27', '2022-11-12 00:12:38', NULL),
(72, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-2.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(73, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-3.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(74, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-4.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(75, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-5.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(76, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-6.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(77, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-7.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(78, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-8.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(79, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-9.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(80, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-10.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(81, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-11.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(82, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-12.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(83, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-13.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(84, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-14.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(85, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-15.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(86, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-16.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(87, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-17.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(88, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-18.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(89, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-19.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(90, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-20.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(91, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-21.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(92, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-22.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(93, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-23.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(94, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-24.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(95, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-25.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(96, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-26.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(97, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-27.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(98, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-28.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(99, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-29.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(100, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-30.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(101, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-31.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(102, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-32.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(103, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-33.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(104, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-34.jpg', 4, '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(105, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(106, 2, 'IPHONE/iPhone 13 Pro Max/HinhAnh360/iphone-13-pro-max-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(107, 11, 'IPHONE/iPhone 12 Pro/HinhAnhDaiDien/iphone-12-pro-512gb-190720-020739-200x200.jpg', 0, '2022-11-01 05:35:28', '2022-11-12 20:02:29', NULL),
(108, 11, 'IPHONE/iPhone 12 Pro/HinhAnhMoHop/iphone-12-pro-512gb-bbh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 20:02:29', NULL),
(109, 11, 'IPHONE/iPhone 12 Pro/HinhAnhThongSoKyThuat/iphone-12-pro-512gb-n.jpg', 2, '2022-11-01 05:35:28', '2022-11-12 20:02:29', NULL),
(110, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-thumbv-780x433-2.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:02:40', NULL),
(111, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212470.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:02:49', NULL),
(112, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212481.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:02:56', NULL),
(113, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-071220-0945540.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:03:04', NULL),
(114, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-071220-0945540.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:03:11', NULL),
(115, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212534.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:03:18', NULL),
(116, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212502.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:03:26', NULL),
(117, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212545.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 20:03:33', NULL),
(118, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1212588.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(119, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-1213009.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(120, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130110.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(121, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130211.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(122, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130412.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(123, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130513.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(124, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130714.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(125, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12130815.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(126, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-sạc-nhanh-780x433.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(127, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12131016.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(128, 11, 'IPHONE/iPhone 12 Pro/HinhAnhNoiBat/iphone-12-pro-512gb-281120-12131117.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(129, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(130, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(131, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(132, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(133, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(134, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(135, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(136, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(137, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(138, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(139, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(140, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(141, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(142, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(143, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(144, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(145, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(146, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(147, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(148, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(149, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(150, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(151, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(152, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(153, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(154, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(155, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(156, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(157, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(158, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(159, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(160, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(161, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(162, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(163, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(164, 11, 'IPHONE/iPhone 12 Pro/HinhAnh360/iphone-12-pro-512gb-360-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(165, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhDaiDien/samsung-galaxy-s22-ultra-090222-104147-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:25:47', NULL),
(166, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMoHop/samsung-galaxy-s22-ultra-bh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 04:25:47', NULL),
(167, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhThongSoKyThuat/samsung-galaxy-s22-ultra-note.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 04:25:47', NULL),
(168, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/s22-ultra-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 04:27:09', NULL),
(169, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/s22-ultra-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 04:27:17', NULL),
(170, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/3.Trainghiemthigiac-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(171, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/4.Vixulimanhme-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(172, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/5.Thietkebenbi-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(173, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/6.Dungluongpin-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(174, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhNoiBat/8.Matthanbongdem-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(175, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(176, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(177, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(178, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(179, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(180, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(181, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(182, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(183, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(184, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(185, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(186, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(187, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(188, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(189, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(190, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(191, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(192, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(193, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(194, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(195, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(196, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(197, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(198, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(199, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(200, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(201, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(202, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(203, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(204, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(205, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(206, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(207, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(208, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(209, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(210, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnh360/samsung-galaxy-s22-ultra-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(211, 4, 'VIVO/Vivo V23e/HinhAnhDaiDien/vivo-v23e-1-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 07:29:40', NULL),
(212, 4, 'VIVO/Vivo V23e/HinhAnhMoHop/vivo-v23e-bh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 07:29:40', NULL),
(213, 4, 'VIVO/Vivo V23e/HinhAnhThongSoKyThuat/vivo-v23-note.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 07:29:40', NULL),
(214, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vivo-v23e-1020x571-1.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:30:59', NULL),
(215, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vivo-v23e-baomat-1020x570-1.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(216, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-manhinh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(217, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-amthanh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(218, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-cauhinh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(219, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-mulititurbo-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(220, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-camera-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(221, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-phoisangslider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(222, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-selfie-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(223, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-laynet-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(224, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-pin-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(225, 4, 'VIVO/Vivo V23e/HinhAnhNoiBat/vi-vn-vivo-v23e-sacnhanh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(226, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(227, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(228, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(229, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(230, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(231, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(232, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(233, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(234, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(235, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(236, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(237, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(238, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(239, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(240, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(241, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(242, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(243, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(244, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(245, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(246, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(247, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(248, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(249, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(250, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(251, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(252, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(253, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(254, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(255, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(256, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(257, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(258, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(259, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(260, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(261, 4, 'VIVO/Vivo V23e/HinhAnh360/vivo-v23e-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(262, 5, 'XIAOMI/Xiaomi 12/HinhAnhDaiDien/Xiaomi-12-xanh-duong-thumb-mau-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 07:38:17', NULL),
(263, 5, 'XIAOMI/Xiaomi 12/HinhAnhMoHop/xiaomi-mi-12-bbh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 07:38:17', NULL),
(264, 5, 'XIAOMI/Xiaomi 12/HinhAnhThongSoKyThuat/xiaomi-mi-12-note.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 07:38:17', NULL),
(265, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Xiaomi-12-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:39:25', NULL),
(266, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard1-fixed-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:39:34', NULL),
(267, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard6-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:39:41', NULL),
(268, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard4-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(269, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard7-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:40:02', NULL),
(270, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard5-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:40:21', NULL),
(271, 5, 'XIAOMI/Xiaomi 12/HinhAnhNoiBat/Artboard2-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 07:40:12', NULL),
(272, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-11 07:43:13', NULL),
(273, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(274, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(275, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(276, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(277, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(278, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(279, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(280, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(281, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(282, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(283, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(284, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(285, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(286, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(287, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(288, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(289, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(290, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(291, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(292, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(293, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(294, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(295, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(296, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(297, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(298, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(299, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(300, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(301, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(302, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(303, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(304, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(305, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(306, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(307, 5, 'XIAOMI/Xiaomi 12/HinhAnh360/xiaomi-mi-12-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(308, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhDaiDien/xiaomi-11t-pro-5g-8gb-thumb-600x600.jpeg', 0, '2022-11-01 05:35:28', '2022-11-11 22:11:50', NULL),
(309, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMoHop/xiaomi-11t-pro-bbh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:11:50', NULL),
(310, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhThongSoKyThuat/xiaomi-11t-pro-note.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 22:11:50', NULL),
(311, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/Thumb-Video-XIaomi-11T-Pro-5G-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:12:39', NULL),
(312, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-tongquan-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:12:46', NULL),
(313, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-manhinh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:12:53', NULL),
(314, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-camera-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:12:59', NULL),
(315, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-gocrong-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(316, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-macro-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(317, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/vi-vn-xiaomi-11t-pro-5g-8gb-amthanh-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(318, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/xiaomi-11t-pro-5g-8gb-slider-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(319, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/xiaomi-11t-pro-5g-8gb-matkinh-slider-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(320, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhNoiBat/xiaomi-11t-pro-5g-8gb-pinsac-slider-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(321, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-11 22:14:33', NULL),
(322, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(323, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(324, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(325, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(326, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(327, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(328, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(329, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(332, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(333, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(334, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(335, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(336, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(337, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(338, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(339, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(340, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(341, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(342, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(343, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(344, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(345, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(346, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(347, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(348, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(349, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(350, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(351, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(352, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(353, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(354, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnh360/xiaomi-11t-pro-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(356, 6, 'REALME/Realme 9 Pro 5G/HinhAnhDaiDien/realme-9-pro-thumb-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 21:57:53', NULL),
(357, 6, 'REALME/Realme 9 Pro 5G/HinhAnhMoHop/realme-9-pro-bbh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 21:57:53', NULL),
(358, 6, 'REALME/Realme 9 Pro 5G/HinhAnhThongSoKyThuat/realme-9-pro-n.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 21:57:53', NULL),
(359, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/realme9prothumbvideo-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:02:00', NULL),
(360, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/1(1)(1)-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:02:08', NULL),
(361, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/6-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:02:15', NULL),
(362, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/5-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:02:33', NULL),
(363, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/5-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(364, 6, 'REALME/Realme 9 Pro 5G/HinhAnhNoiBat/6-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(365, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-11 22:04:20', NULL),
(366, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(367, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(368, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(369, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(370, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(371, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(372, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(373, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(374, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(375, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(376, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(377, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(378, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(379, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(380, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(381, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(382, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(383, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(384, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL);
INSERT INTO `hinh_anh_chung_cua_dien_thoais` (`id`, `dien_thoai_id`, `hinh_anh`, `loai_hinh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(385, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(386, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(387, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(388, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(389, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(390, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(391, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(392, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(393, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(394, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(395, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(396, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(397, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(398, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(399, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(400, 6, 'REALME/Realme 9 Pro 5G/HinhAnh360/realme-9-pro-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(401, 7, 'NOKIA/Nokia G21/HinhAnhDaiDien/nokia-g21-tim-thum-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 22:06:50', NULL),
(402, 7, 'NOKIA/Nokia G21/HinhAnhMoHop/nokia-g21-14-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:06:50', NULL),
(403, 7, 'NOKIA/Nokia G21/HinhAnhThongSoKyThuat/nokia-g21-15.jpg', 2, '2022-11-01 05:35:28', '2022-11-11 22:06:50', NULL),
(404, 7, 'NOKIA/Nokia G21/HinhAnhNoiBat/Nokia-G21-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:07:33', NULL),
(405, 7, 'NOKIA/Nokia G21/HinhAnhNoiBat/Artboard1-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:07:41', NULL),
(406, 7, 'NOKIA/Nokia G21/HinhAnhNoiBat/Artboard5-1020x570 (1).jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:07:47', NULL),
(407, 7, 'NOKIA/Nokia G21/HinhAnhNoiBat/Artboard3-1020x570 (1).jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:07:55', NULL),
(408, 7, 'NOKIA/Nokia G21/HinhAnhNoiBat/Artboard4-1020x570 (1).jpg', 3, '2022-11-01 05:35:28', '2022-11-11 22:08:01', NULL),
(409, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(410, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(411, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(412, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(413, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(414, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(415, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(416, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(417, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(418, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(419, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(420, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(421, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(422, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(423, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(424, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(425, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(426, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(427, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(428, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(429, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(430, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(431, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(432, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(433, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(434, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(435, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(436, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(437, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(438, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(439, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(440, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(441, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(442, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(443, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(444, 7, 'NOKIA/Nokia G21/HinhAnh360/nokia-g21-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(445, 8, 'ITEL/Itel L6502/HinhAnhDaiDien/itel-l6502-den-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-12 19:53:28', NULL),
(446, 8, 'ITEL/Itel L6502/HinhAnhMoHop/itel-l6502-bh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:53:28', NULL),
(447, 8, 'ITEL/Itel L6502/HinhAnhThongSoKyThuat/itel-l6502-n-2.jpg', 2, '2022-11-01 05:35:28', '2022-11-12 19:53:28', NULL),
(448, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/vi-vn-itel-l6502-slider-tong-quan-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 19:54:10', NULL),
(449, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/itel-l6502-slider-cau-hinh-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-12 19:54:19', NULL),
(450, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/bg_csmh_tgdd-min.png', 3, '2022-11-01 05:35:28', '2022-11-12 19:54:54', NULL),
(451, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/itel-l6502-slider-camera-1020x570.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(452, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/vi-vn-itel-l6502-slider-thiet-ke.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(453, 8, 'ITEL/Itel L6502/HinhAnhNoiBat/vi-vn-itel-l6502-slider-bao-mat.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(454, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(455, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(456, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(457, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(458, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(459, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(460, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(461, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(462, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(463, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(464, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(465, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(466, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(467, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(468, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(469, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(470, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(471, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(472, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(473, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(474, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(475, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(476, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(477, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(478, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(479, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(480, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(481, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(482, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(483, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(484, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(485, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(486, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(487, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(488, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(489, 8, 'ITEL/Itel L6502/HinhAnh360/itel-l6502-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(490, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhDaiDien/masstel-fami-60-thumb-600x600.jpeg', 0, '2022-11-01 05:35:28', '2022-11-12 19:57:20', NULL),
(491, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMoHop/masstel-fami-60-bh-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:57:20', NULL),
(492, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhThongSoKyThuat/masstel-fami-60-note.jpg', 2, '2022-11-01 05:35:28', '2022-11-12 19:57:20', NULL),
(493, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-tinhnang-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(494, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-thietke-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(495, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-banphim-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(496, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-nghenhac-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(497, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-volte-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(498, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-sos-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(499, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhNoiBat/vi-vn-masstel-fami-60-pin-slider.jpg', 3, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(500, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-1.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(501, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-2.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(502, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-3.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(503, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-4.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(504, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-5.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(505, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-6.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(506, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-7.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(507, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-8.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(508, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-9.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(509, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-10.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(510, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-11.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(511, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-12.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(512, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-13.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(513, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-14.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(514, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-15.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(515, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-16.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(516, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-17.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(517, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-18.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(518, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-19.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(519, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-20.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(520, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-21.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(521, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-22.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(522, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-23.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(523, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-24.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(524, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-25.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(525, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-26.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(526, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-27.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(527, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-28.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(528, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-29.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(529, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-30.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(530, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-31.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(531, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-32.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(532, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-33.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(533, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-34.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(534, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-35.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(535, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnh360/masstel-fami-60-360-org-36.jpg', 4, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(536, 1, 'default/default.png', 4, '2022-11-01 06:42:17', '2022-11-01 06:42:17', NULL),
(537, 15, 'default/default.png', 0, '2022-11-11 01:05:16', '2022-11-11 01:05:16', NULL),
(538, 15, 'default/default.png', 1, '2022-11-11 01:05:16', '2022-11-11 01:05:16', NULL),
(539, 15, 'default/default.png', 2, '2022-11-11 01:05:16', '2022-11-11 01:05:16', NULL),
(540, 18, 'SAMSUNG/Sam Sung 5G 128GB/HinhAnhDaiDien/samsung-galaxy-a73-1-600x600.jpg', 0, '2022-11-11 06:08:12', '2022-11-11 06:08:12', NULL),
(541, 18, 'SAMSUNG/Sam Sung 5G 128GB/HinhAnhMoHop/samsung-galaxy-a73-bh-org.jpg', 1, '2022-11-11 06:08:12', '2022-11-11 06:08:12', NULL),
(542, 18, 'SAMSUNG/Sam Sung 5G 128GB/HinhAnhThongSoKyThuat/samsung-galaxy-a73-n.jpg', 2, '2022-11-11 06:08:12', '2022-11-11 06:08:12', NULL),
(543, 18, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhNoiBat/Galaxy-A73-1020x570.jpg', 3, '2022-11-11 06:11:32', '2022-11-11 06:11:32', NULL),
(544, 18, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnh360/samsung-galaxy-a73-org-32.jpg', 4, '2022-11-11 06:13:25', '2022-11-11 06:13:25', NULL),
(545, 18, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhNoiBat/1.Tongquan-1020x570-1.jpg', 3, '2022-11-11 06:16:53', '2022-11-11 06:16:53', NULL),
(546, 18, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhNoiBat/samsung-galaxy-a73637850244363254507.jpg', 3, '2022-11-11 06:17:07', '2022-11-11 06:17:07', NULL),
(547, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhDaiDien/samsung-galaxy-a25-8gb-(4).jpg', 0, '2024-02-01 06:27:38', '2024-02-01 06:27:38', NULL),
(548, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhMoHop/bbh-org.jpg', 1, '2024-02-01 06:27:38', '2024-02-01 06:27:38', NULL),
(549, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhThongSoKyThuat/note.jpg', 2, '2024-02-01 06:27:38', '2024-02-01 06:27:38', NULL),
(550, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-THUMB-YT-1020x570.jpg', 3, '2024-02-01 06:30:58', '2024-02-01 06:31:56', NULL),
(551, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866615651999.jpg', 3, '2024-02-01 06:32:06', '2024-02-01 06:32:06', NULL),
(552, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866609861475.jpg', 3, '2024-02-01 06:32:22', '2024-02-01 06:32:22', NULL),
(553, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866614301501.jpg', 3, '2024-02-01 06:32:31', '2024-02-01 06:32:31', NULL),
(554, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866608651453.jpg', 3, '2024-02-01 06:32:39', '2024-02-01 06:32:39', NULL),
(555, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866605631428.jpg', 3, '2024-02-01 06:32:49', '2024-02-01 06:32:49', NULL),
(556, 19, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhNoiBat/samsung-galaxy-a25-8gb638392866603741416.jpg', 3, '2024-02-01 06:32:58', '2024-02-01 06:32:58', NULL),
(557, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhDaiDien/samsung-galaxy-a15-256gb-(2).jpg', 0, '2024-02-01 06:44:43', '2024-02-01 06:44:43', NULL),
(558, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhMoHop/samsung-galaxy-a15-bbh-org.jpg', 1, '2024-02-01 06:44:43', '2024-02-01 06:44:43', NULL),
(559, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhThongSoKyThuat/samsung-galaxy-a15-note.jpg', 2, '2024-02-01 06:44:43', '2024-02-01 06:44:43', NULL),
(560, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-8gb-1-1020x570.jpg', 3, '2024-02-01 06:46:03', '2024-02-01 06:46:03', NULL),
(561, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-128gb638392840160002461.jpg', 3, '2024-02-01 06:46:13', '2024-02-01 06:46:13', NULL),
(562, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-128gb638392840155842424.jpg', 3, '2024-02-01 06:46:22', '2024-02-01 06:46:22', NULL),
(563, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-128gb638392840162562454.jpg', 3, '2024-02-01 06:46:38', '2024-02-01 06:46:38', NULL),
(564, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-128gb638392840157002405.jpg', 3, '2024-02-01 06:46:51', '2024-02-01 06:46:51', NULL),
(565, 20, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhNoiBat/samsung-galaxy-a15-128gb638392840163542523.jpg', 3, '2024-02-01 06:47:05', '2024-02-01 06:47:05', NULL),
(566, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhDaiDien/samsung-galaxy-m34-5g-(4).jpg', 0, '2024-02-01 08:32:58', '2024-02-01 08:32:58', NULL),
(567, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhMoHop/samsung-galaxy-m34-bbh-org.jpg', 1, '2024-02-01 08:32:58', '2024-02-01 08:32:58', NULL),
(568, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhThongSoKyThuat/samsung-galaxy-m34-note-new.jpg', 2, '2024-02-01 08:32:58', '2024-02-01 08:32:58', NULL),
(569, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-slider-1-1020x570.jpg', 3, '2024-02-01 08:34:21', '2024-02-01 08:34:21', NULL),
(570, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225546761190.jpg', 3, '2024-02-01 08:34:30', '2024-02-01 08:34:30', NULL),
(571, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225545451188.jpg', 3, '2024-02-01 08:34:37', '2024-02-01 08:34:37', NULL),
(572, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225552451324.jpg', 3, '2024-02-01 08:34:50', '2024-02-01 08:34:50', NULL),
(573, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225548111204.jpg', 3, '2024-02-01 08:35:03', '2024-02-01 08:35:03', NULL),
(574, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225549161228.jpg', 3, '2024-02-01 08:35:15', '2024-02-01 08:35:15', NULL),
(575, 21, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhNoiBat/samsung-galaxy-m34-5g638320225554951186.jpg', 3, '2024-02-01 08:35:23', '2024-02-01 08:35:23', NULL),
(576, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhDaiDien/iphone-15-pro-max-(6).jpg', 0, '2024-02-01 08:51:11', '2024-02-01 08:51:11', NULL),
(577, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhMoHop/iphone-14-pro-max-bbh-org.jpg', 1, '2024-02-01 08:51:11', '2024-02-01 08:51:11', NULL),
(578, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhThongSoKyThuat/iphone-14-pro-max-note.jpg', 2, '2024-02-01 08:51:11', '2024-02-01 08:51:11', NULL),
(579, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/iphone-14-pro-max-thumb-1020x570.jpg', 3, '2024-02-01 08:52:07', '2024-02-01 08:52:07', NULL),
(580, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/iphone-14-pro-max-tong-quan-1020x570.jpg', 3, '2024-02-01 08:52:16', '2024-02-01 08:52:16', NULL),
(581, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/iphone-14-pro-max-up-3-new-1020x570.jpg', 3, '2024-02-01 08:52:29', '2024-02-01 08:52:29', NULL),
(582, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/vi-vn-iphone-14-pro-max-up-4.jpg', 3, '2024-02-01 08:52:37', '2024-02-01 08:52:37', NULL),
(583, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/vi-vn-iphone-14-pro-max-up-6.jpg', 3, '2024-02-01 08:52:44', '2024-02-01 08:52:44', NULL),
(584, 22, 'IPHONE/Điện thoại iPhone 14 Pro Max 128GB/HinhAnhNoiBat/vi-vn-iphone-14-pro-max-up-7.jpg', 3, '2024-02-01 08:52:51', '2024-02-01 08:52:51', NULL),
(585, 23, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhDaiDien/iphone-15-pro-blue-thumbnew-600x600.jpg', 0, '2024-04-11 03:04:33', '2024-04-11 03:04:33', NULL),
(586, 23, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhMoHop/chao-nhom-chong-dinh-van-da-day-tu-20-cm-green-cook-gcp226-20ih-250923-030924-600x600.jpg', 1, '2024-04-11 03:04:33', '2024-04-11 03:04:33', NULL),
(587, 23, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhThongSoKyThuat/vi-vn-iphone-15-pro-slider--(3).jpg', 2, '2024-04-11 03:04:33', '2024-04-11 03:04:33', NULL),
(588, 23, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhNoiBat/iphone-15-pro-slider--10--1020x570.jpg', 3, '2024-04-11 03:05:20', '2024-04-11 03:05:20', NULL),
(589, 23, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnh360/iphone-12-360-25.jpg', 4, '2024-04-11 03:10:29', '2024-04-11 03:10:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_mau_sac_cua_dien_thoais`
--

CREATE TABLE `hinh_anh_mau_sac_cua_dien_thoais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `mau_sac_id` bigint(20) UNSIGNED NOT NULL,
  `hinh_anh` varchar(191) NOT NULL,
  `hinh_anh_dai_dien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinh_anh_mau_sac_cua_dien_thoais`
--

INSERT INTO `hinh_anh_mau_sac_cua_dien_thoais` (`id`, `dien_thoai_id`, `mau_sac_id`, `hinh_anh`, `hinh_anh_dai_dien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-1-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 04:00:36', NULL),
(242, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-1-org.jpg', 0, '2022-11-11 04:03:05', '2022-11-11 04:03:05', NULL),
(3, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-1-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:02:23', NULL),
(4, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-1-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:02:43', NULL),
(5, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-1-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:02:51', NULL),
(6, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-5-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(7, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-6-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(8, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-7-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(9, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-8-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(10, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-9-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(11, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-10-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(12, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-11-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(14, 1, 1, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-bac-13-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(15, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-black-1-200x200.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(16, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-1-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(17, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-2-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(18, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-3-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(19, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-4-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(21, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-6-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(22, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-7-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(23, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-8-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(24, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-9-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(25, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-10-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(26, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-11-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(27, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-12-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(28, 1, 2, 'OPPO/OPPO Reno6 Z 5G/HinhAnhMauSac/oppo-reno6-z-5g-den-13-org.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(29, 2, 3, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-12-xanh-duong-new-2-200x200.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 07:33:45', NULL),
(31, 2, 3, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-xanh-la-thumb-1-600x600.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 00:24:31', NULL),
(33, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 00:11:55', NULL),
(34, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(35, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(36, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(37, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-4-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(38, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-5-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(39, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-6-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(40, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-7-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(41, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-8-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(43, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-10-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(44, 2, 1, 'IPHONE/iPhone 13 Pro Max/HinhAnhMauSac/iphone-13-pro-max-11-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(47, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-1-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 20:04:03', NULL),
(48, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-2-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(49, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-3-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(50, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-4-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(51, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-5-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(52, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-6-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(53, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-7-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(54, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-8-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(55, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-9-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(56, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-10-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(57, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-11-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(58, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-512gb-xam-12-org.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(59, 11, 10, 'IPHONE/iPhone 12 Pro/HinhAnhMauSac/iphone-12-pro-15.jpg', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(60, 3, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMauSac/samsung-galaxy-s22-ultra-xanh-reu-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 04:31:44', NULL),
(61, 3, 3, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMauSac/samsung-galaxy-s22-ultra-xanh-reu-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:33:18', NULL),
(75, 3, 7, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMauSac/samsung-galaxy-s22-ultra-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 04:32:25', NULL),
(76, 3, 7, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMauSac/samsung-galaxy-s22-ultra-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(80, 3, 7, 'SAMSUNG/Samsung Galaxy S22 Ultra 5G/HinhAnhMauSac/samsung-galaxy-s22-ultra-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 04:31:56', NULL),
(243, 18, 1, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhMauSac/samsung-galaxy-a73-5g-1.jpg', 1, '2022-11-11 06:10:34', '2022-11-11 06:12:21', NULL),
(244, 18, 1, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhMauSac/samsung-galaxy-a73-1-1.jpg', 0, '2022-11-11 06:14:50', '2022-11-11 06:14:50', NULL),
(245, 18, 10, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhMauSac/samsung-galaxy-a73-1-1 (1).jpg', 1, '2022-11-11 06:18:33', '2022-11-11 06:19:17', NULL),
(246, 18, 10, 'SAMSUNG/Sam Sung Galaxy A73 5G 128GB/HinhAnhMauSac/samsung-galaxy-a73-1-1 (1).jpg', 0, '2022-11-11 06:19:52', '2022-11-11 06:19:52', NULL),
(90, 4, 8, 'VIVO/Vivo V23e/HinhAnhMauSac/vivo-v23e-xanh-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 07:35:25', NULL),
(91, 4, 8, 'VIVO/Vivo V23e/HinhAnhMauSac/vivo-v23e-xanh-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(103, 4, 2, 'VIVO/Vivo V23e/HinhAnhMauSac/vivo-v23e-den-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 07:35:07', NULL),
(105, 4, 2, 'VIVO/Vivo V23e/HinhAnhMauSac/vivo-v23e-den-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 07:35:15', NULL),
(116, 5, 5, 'XIAOMI/Xiaomi 12/HinhAnhMauSac/xiaomi-mi-12-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 07:41:45', NULL),
(118, 5, 5, 'XIAOMI/Xiaomi 12/HinhAnhMauSac/xiaomi-mi-12-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-11 07:41:52', NULL),
(247, 5, 4, 'XIAOMI/Xiaomi 12/HinhAnhMauSac/1.jpg', 1, '2022-11-11 07:42:23', '2022-11-11 07:42:44', NULL),
(131, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:13:32', NULL),
(132, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(133, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-2.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(134, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-3.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(135, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-4.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(136, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(137, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(138, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(139, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-8.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(140, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-9.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(141, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-10.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(142, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-11.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(143, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-12.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(144, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-13.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(145, 10, 10, 'XIAOMI/Xiaomi 11T Pro 5G/HinhAnhMauSac/xiaomi-11t-pro-tem.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(146, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:03:39', NULL),
(147, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(148, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-2.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(149, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-3.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(150, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-4.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(151, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(152, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(153, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(154, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-8.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(155, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-9.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(156, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-10.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(157, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-11.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(158, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-12.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(159, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-13.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(160, 6, 4, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-14.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(161, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-1-2.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:03:18', NULL),
(162, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-1-2.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(163, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(164, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(165, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-4-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(166, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-5-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(167, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-6-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(168, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-7-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(169, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-8-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(170, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-9-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(171, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-10-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(172, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-11-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(173, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-12-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(174, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-13-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(175, 6, 3, 'REALME/Realme 9 Pro 5G/HinhAnhMauSac/realme-9-pro-14-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(176, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:08:49', NULL),
(177, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(178, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-2.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(179, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-3.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(180, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-4.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(181, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(182, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(183, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(184, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-8.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(185, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-9.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(186, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-10.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(187, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-11.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(188, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-12.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(189, 7, 6, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-13.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(190, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-11 22:09:08', NULL),
(191, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(192, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(193, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-3.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(194, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-4.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(195, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(196, 7, 5, 'NOKIA/Nokia G21/HinhAnhMauSac/nokia-g21-tim-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(197, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-1-2.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:55:49', NULL),
(198, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-1-2.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(199, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(200, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(201, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-4-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(202, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-5-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(203, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-6-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(204, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-7-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(205, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-8-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(206, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-9-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(207, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-10-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(208, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-11-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(209, 8, 6, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-xanh-12-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(210, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:55:13', NULL),
(211, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(212, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(213, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(214, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(215, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-4.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(216, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(217, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(218, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(219, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-8.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(220, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-9.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(221, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-10.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(222, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-11.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(223, 8, 2, 'ITEL/Itel L6502/HinhAnhMauSac/itel-l6502-den-12.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(224, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:59:29', NULL),
(225, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(226, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(227, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(228, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-4-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(229, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(230, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(231, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-vang-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(232, 9, 9, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/fami-60-99.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(233, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-1-1.jpg', 1, '2022-11-01 05:35:28', '2022-11-12 19:59:13', NULL),
(234, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-1-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(235, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-2-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(236, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-3-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(237, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-4-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(238, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-5.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(239, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-6.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(240, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/masstel-fami-60-den-7.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(241, 9, 2, 'MASSTEL/Masstel FAMI 60 4G/HinhAnhMauSac/fami-60-99-1.jpg', 0, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(248, 19, 2, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhMauSac/samsung-galaxy-a25-xanh-den-1.jpg', 1, '2024-02-01 06:34:24', '2024-02-01 06:38:29', NULL),
(249, 19, 9, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhMauSac/samsung-galaxy-a25-vang-1.jpg', 1, '2024-02-01 06:37:17', '2024-02-01 06:38:51', NULL),
(250, 19, 4, 'SAMSUNG/Điện thoại Samsung Galaxy A25 5G 8GB/HinhAnhMauSac/samsung-galaxy-a25-5g-xanh-1.jpg', 1, '2024-02-01 06:38:11', '2024-02-01 06:39:19', NULL),
(251, 20, 4, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhMauSac/samsung-galaxy-a15-xanh-1 (1).jpg', 1, '2024-02-01 06:48:42', '2024-02-01 06:51:01', NULL),
(252, 20, 2, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhMauSac/samsung-galaxy-a15-xanh-den-1 (1).jpg', 1, '2024-02-01 06:49:25', '2024-02-01 06:51:14', NULL),
(253, 20, 12, 'SAMSUNG/Điện thoại Samsung Galaxy A15 128GB/HinhAnhMauSac/samsung-galaxy-a15-vang-1.jpg', 1, '2024-02-01 06:50:10', '2024-02-01 06:51:35', NULL),
(254, 21, 13, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhMauSac/samsung-galaxy-m34-xanh-nhat-1.jpg', 1, '2024-02-01 08:39:59', '2024-02-01 08:41:18', NULL),
(255, 21, 14, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhMauSac/samsung-galaxy-m34-xanh-dam-1.jpg', 1, '2024-02-01 08:40:37', '2024-02-01 08:41:28', NULL),
(256, 21, 13, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhMauSac/samsung-galaxy-m34-xanh-nhat-1.jpg', 0, '2024-02-01 08:43:33', '2024-02-01 08:43:33', NULL),
(257, 21, 14, 'SAMSUNG/Điện thoại Samsung Galaxy M34 5G/HinhAnhMauSac/samsung-galaxy-m34-xanh-dam-1.jpg', 0, '2024-02-01 08:43:45', '2024-02-01 08:43:45', NULL),
(258, 22, 5, 'default/default.png', 1, '2024-02-01 08:56:35', '2024-02-01 08:56:35', NULL),
(259, 23, 15, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhMauSac/iphone-15-pro-blue-1.jpg', 1, '2024-04-11 03:08:48', '2024-04-11 03:09:30', NULL),
(260, 23, 1, 'IPHONE/Điện thoại iPhone 15 Pro 128GB/HinhAnhMauSac/iphone-15-pro-white-1.jpg', 1, '2024-04-11 03:09:11', '2024-04-11 03:09:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ket_nois`
--

CREATE TABLE `ket_nois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mang_di_dong` varchar(500) NOT NULL,
  `sim` varchar(500) NOT NULL,
  `wifi` varchar(500) NOT NULL,
  `gps` varchar(500) NOT NULL,
  `bluetooth` varchar(500) NOT NULL,
  `cong_ket_noi` varchar(500) NOT NULL,
  `jack_tai_nghe` varchar(500) NOT NULL,
  `ket_noi_khac` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ket_nois`
--

INSERT INTO `ket_nois` (`id`, `mang_di_dong`, `sim`, `wifi`, `gps`, `bluetooth`, `cong_ket_noi`, `jack_tai_nghe`, `ket_noi_khac`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hỗ trợ 5G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac - Wi-Fi Direct -  Wi-Fi hotspot', 'GPS - BDS - GALILEO - GLONASS', 'A2DP - LE - v5.1', 'Type-C', '3.5 mm', 'OTG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'Hỗ trợ 5G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac/ax - Wi-Fi hotspot - Wi-Fi MIMO', 'BEIDOU - QZSS - GALILEO - iBeacon -  GPS - GLONASS', 'A2DP - LE - v5.0', 'Lightning', 'Lightning', 'NFC', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Hỗ trợ 5G', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac/ax - Wi-Fi Direct - Wi-Fi hotspot', 'BEIDOU - GALILEO - GLONASS - GPS - QZSS', 'v5.2', 'Type-C', 'Type-C', 'NFC', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Hỗ trợ 4G', '2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac - Wi-Fi Direct - Wi-Fi hotspot', 'BEIDOU - GPS - GALILEO - GLONASS', 'v5.2', 'Type-C', 'Type-C', 'OTG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Hỗ trợ 5G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac - Wi-Fi Direct -  Wi-Fi hotspot', 'BEIDOU - GPS - GALILEO - GLONASS', 'A2DP - LE - v5.2', 'Type-C', 'Type-C', 'Hồng ngoại - NFC', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Hỗ trợ 5G', '2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac', 'BEIDOU - GPS - GLONASS', 'v5.1', 'Type-C', '3.5 mm', 'NFC', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz) - Wi-Fi 802.11 a/b/g/n/ac', 'GPS - GALILEO - GLONASS', 'v5.0', 'Type-C', '3.5 mm', 'NFC - OTG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Hỗ trợ 4G', '2 Nano SIM', 'Wi-Fi 802.11 b/g/n', 'GPS', 'v4.3', 'Micro USB', '3.5 mm', 'OTG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Hỗ trợ 4G VoLTE', '2 Nano SIM', 'Không có', 'Không có', 'v4.2', 'Type-C', 'Không có', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khos`
--

CREATE TABLE `khos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_kho` varchar(30) NOT NULL,
  `dia_chi` varchar(500) NOT NULL,
  `google_map` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khos`
--

INSERT INTO `khos` (`id`, `ten_kho`, `dia_chi`, `google_map`, `created_at`, `updated_at`) VALUES
(2, 'Kho chính', '285 Lê Văn Việt, Phường 8,Quận 9 ,TP Hồ Chí Minh', 'https://www.google.com/maps/place/222%2F1C+Lũy+Bán+', '2022-11-01 05:35:29', '2024-04-12 10:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `khuyen_mais`
--

CREATE TABLE `khuyen_mais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_khuyen_mai` varchar(100) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khuyen_mais`
--

INSERT INTO `khuyen_mais` (`id`, `ten_khuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi 2022', '2022-01-01', '2022-12-01', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(2, 'Khuyến mãi t1 2024', '2024-01-21', '2024-01-31', '2024-01-20 08:35:41', '2024-01-20 08:35:41'),
(3, 'Khuyến Mãi T4', '2024-04-12', '2024-04-30', '2024-04-11 03:12:06', '2024-04-11 03:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `loai_tai_khoans`
--

CREATE TABLE `loai_tai_khoans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_loai_tai_khoan` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_tai_khoans`
--

INSERT INTO `loai_tai_khoans` (`id`, `ten_loai_tai_khoan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(2, 'Quản lý cửa hàng', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(3, 'Quản lý kho', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(4, 'Nhân viên', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(5, 'Người dùng T&TMobile', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(6, 'Người dùng Facebook', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(7, 'Người dùng Zalo', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(8, 'Người dùng Google', '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `man_hinhs`
--

CREATE TABLE `man_hinhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cong_nghe_man_hinh` varchar(500) NOT NULL,
  `do_phan_giai` varchar(500) NOT NULL,
  `man_hinh_rong` varchar(500) NOT NULL,
  `do_sang_toi_da` varchar(500) NOT NULL,
  `mat_kinh_cam_ung` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `man_hinhs`
--

INSERT INTO `man_hinhs` (`id`, `cong_nghe_man_hinh`, `do_phan_giai`, `man_hinh_rong`, `do_sang_toi_da`, `mat_kinh_cam_ung`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.43\" - Tần số quét 60 Hz', '1 nits', 'Kính cường lực Corning Gorilla Glass 5', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'OLED', '1284 x 2778 Pixels', '6.7\" - Tần số quét 120 Hz', '1200 nits', 'Kính cường lực Ceramic Shield', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Dynamic AMOLED 2X', '2K+ (1440 x 3088 Pixels)', '6.8\" - Tần số quét 120 Hz', '1750 nits', 'Kính cường lực Corning Gorilla Glass Victus+', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.44\" - Tần số quét 60 Hz', '570 nits', 'Kính cường lực', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.28\" - Tần số quét 120 Hz', '1100 nits', 'Kính cường lực Corning Gorilla Glass Victus', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'IPS LCD', '1080 x 2412 Pixels', '6.6\" - Tần số quét 120 Hz', '600 nits', 'Kính cường lực Panda', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'TFT LCD', 'HD+ (720 x 1600 Pixels)', '6.5\" - Tần số quét 90 Hz', '400 nits', 'Kính cường lực Panda', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'IPS LCD', 'HD+ (720 x 1600 Pixels)', '6.5\" - Tần số quét Hãng không công bố', 'Hãng không công bố', 'Mặt kính cong 2.5D', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'TFT LCD', '176 x 220 Pixels', '2\" - Tần số quét Không có', 'Hãng không công bố', 'Không có cảm ứng', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 'OLED', 'Super Retina XDR (1290 x 2796 Pixels)', '6.7\" - Tần số quét 120 Hz', '2000 nits', 'Kính cường lực Ceramic Shield', '2024-02-01 08:53:38', '2024-02-01 08:53:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mau_sacs`
--

CREATE TABLE `mau_sacs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_mau_sac` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mau_sacs`
--

INSERT INTO `mau_sacs` (`id`, `ten_mau_sac`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bạc', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'Đen', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Xanh lá', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Xanh dương', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Tím', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Xanh', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Đỏ', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Xanh hồng', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Vàng', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 'Xám', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(11, 'Testt', '2024-01-20 08:35:53', '2024-01-20 08:36:07', '2024-01-20 08:36:07'),
(12, 'Vàng Nhạt', '2024-02-01 06:49:43', '2024-02-01 06:49:43', NULL),
(13, 'Xanh Nhạt', '2024-02-01 08:33:19', '2024-02-01 08:33:19', NULL),
(14, 'Xanh Đậm', '2024-02-01 08:33:25', '2024-02-01 08:33:25', NULL),
(15, 'TiTan Xanh', '2024-04-11 03:08:07', '2024-04-11 03:08:07', NULL),
(16, 'TiTan Trắng', '2024-04-11 03:09:02', '2024-04-11 03:09:02', NULL),
(17, 'Xanh Da Trời', '2024-04-11 03:13:43', '2024-04-11 03:13:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_12_12_024134_add_facebook_id_column_in_users_table', 1),
(5, '2022_03_20_035410_create_mau_sacs_table', 1),
(6, '2022_03_20_040417_create_thuong_hieus_table', 1),
(7, '2022_03_20_042155_create_man_hinhs_table', 1),
(8, '2022_03_20_042427_create_camera_saus_table', 1),
(9, '2022_03_20_042829_create_camera_truocs_table', 1),
(10, '2022_03_20_043228_create_he_dieu_hanh_cpus_table', 1),
(11, '2022_03_20_043853_create_bo_nho_luu_trus_table', 1),
(12, '2022_03_20_044322_create_ket_nois_table', 1),
(13, '2022_03_20_044456_create_pin_sacs_table', 1),
(14, '2022_03_20_044639_create_tien_iches_table', 1),
(15, '2022_03_20_044806_create_thong_tin_chungs_table', 1),
(16, '2022_03_20_045252_create_dien_thoais_table', 1),
(17, '2022_03_20_050131_create_chi_tiet_dien_thoais_table', 1),
(18, '2022_03_21_033438_create_hinh_anh_chung_cua_dien_thoais_table', 1),
(19, '2022_03_21_044544_create_hinh_anh_mau_sac_cua_dien_thoais_table', 1),
(20, '2022_03_21_044743_create_hinh_anh_banner_trang_chus_table', 1),
(21, '2022_03_21_125117_create_bac_tai_khoans_table', 1),
(22, '2022_03_21_125321_create_loai_tai_khoans_table', 1),
(23, '2022_03_21_125545_create_tai_khoans_table', 1),
(24, '2022_03_21_130617_create_thong_tin_tai_khoans_table', 1),
(25, '2022_03_21_130845_create_danh_gias_table', 1),
(26, '2022_03_21_131314_create_phan_hoi_danh_gias_table', 1),
(27, '2022_03_21_132002_create_phieu_giam_gias_table', 1),
(28, '2022_03_21_132224_create_don_hangs_table', 1),
(29, '2022_03_21_132730_create_chi_tiet_don_hangs_table', 1),
(30, '2022_03_21_132923_create_cua_hangs_table', 1),
(31, '2022_03_21_133304_create_san_pham_phan_bos_table', 1),
(32, '2022_03_21_133513_create_khos_table', 1),
(33, '2022_03_21_133752_create_chi_tiet_khos_table', 1),
(34, '2022_03_21_133948_create_khuyen_mais_table', 1),
(35, '2022_03_21_134036_create_chi_tiet_khuyen_mais_table', 1),
(36, '2022_03_23_090828_create_chuc_vus_table', 1),
(37, '2022_03_23_091158_create_he_so_luongs_table', 1),
(38, '2022_03_23_091442_create_phu_caps_table', 1),
(39, '2022_03_23_092419_create_thuongs_table', 1),
(40, '2022_03_24_035948_create_nhan_viens_table', 1),
(41, '2022_03_24_040913_create_cham_congs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhan_viens`
--

CREATE TABLE `nhan_viens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chuc_vu_id` bigint(20) UNSIGNED NOT NULL,
  `quan_ly_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cua_hang_id` bigint(20) UNSIGNED NOT NULL,
  `kho_id` bigint(20) UNSIGNED NOT NULL,
  `ho_ten` varchar(191) NOT NULL,
  `dia_chi` varchar(191) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `so_dien_thoai` varchar(191) NOT NULL,
  `cccd` varchar(191) NOT NULL,
  `bhxh` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_viens`
--

INSERT INTO `nhan_viens` (`id`, `chuc_vu_id`, `quan_ly_id`, `tai_khoan_id`, `cua_hang_id`, `kho_id`, `ho_ten`, `dia_chi`, `ngay_sinh`, `gioi_tinh`, `so_dien_thoai`, `cccd`, `bhxh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 2, 2, 'Võ Minh Tâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '2001-01-01', 1, '0123456785', '079201026785', '0123456785', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(2, 1, 1, 2, 2, 2, 'Nguyễn Thành Trung', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1995-01-01', 1, '0999999999', '079201026789', '0123456789', '2022-11-01 05:35:29', '2022-11-11 06:42:59', NULL),
(3, 1, 1, 3, 2, 2, 'Nguyễn Tiến Đạt', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1996-01-01', 1, '0999999996', '079201026780', '0123456780', '2022-11-01 05:35:29', '2022-11-11 06:46:17', NULL),
(4, 1, 2, 4, 2, 2, 'Nguyễn Thanh Lâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1997-01-01', 1, '0999999998', '079201026787', '0123456785', '2022-11-01 05:35:29', '2022-11-11 06:44:22', NULL),
(5, 1, 2, 5, 2, 2, 'Nguyễn Ngọc Hà', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1997-01-01', 0, '0999999997', '079201026784', '0123456784', '2022-11-01 05:35:29', '2022-11-11 06:45:08', NULL),
(6, 1, 3, 6, 2, 2, 'Võ Văn Hùng', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1997-01-01', 1, '0999999995', '079201026788', '0123456788', '2022-11-01 05:35:29', '2022-11-11 06:47:06', NULL),
(7, 1, 3, 7, 2, 2, 'Vũ Thị Trang', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '1997-01-01', 0, '0999999994', '079201026778', '0123456778', '2022-11-01 05:35:29', '2022-11-11 06:47:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_hoi_danh_gias`
--

CREATE TABLE `phan_hoi_danh_gias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `danh_gia_id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` varchar(191) NOT NULL,
  `trang_thai` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phan_hoi_danh_gias`
--

INSERT INTO `phan_hoi_danh_gias` (`id`, `danh_gia_id`, `tai_khoan_id`, `noi_dung`, `trang_thai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Cảm ơn quý khách đã đánh giá !', '1', '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_giam_gias`
--

CREATE TABLE `phieu_giam_gias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `phan_tram_giam` double NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_het_han` date NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieu_giam_gias`
--

INSERT INTO `phieu_giam_gias` (`id`, `code`, `phan_tram_giam`, `ngay_bat_dau`, `ngay_het_han`, `trang_thai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ZrxmY2XA', 0.1, '2022-01-01', '2022-12-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(2, 'RFxDu9W4', 0.1, '2022-01-01', '2022-12-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(3, 'clS47ahh', 0.1, '2022-01-01', '2022-12-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(4, 'ZQ6DvMaI', 0.1, '2022-01-01', '2022-12-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(5, 'GOHKKKcf', 0.1, '2022-01-01', '2022-12-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(6, 'WgFk1dDj', 0.1, '2023-08-08', '2024-08-08', 1, '2023-08-07 21:23:28', '2023-08-07 21:23:28', NULL),
(7, 'qcRJnEfI', 0.15, '2023-08-08', '2024-08-08', 1, '2023-08-07 21:23:33', '2023-08-07 21:23:33', NULL),
(8, 'EXYK3nrr', 0.2, '2023-08-08', '2024-08-08', 1, '2023-08-07 21:23:34', '2023-08-07 21:23:34', NULL),
(9, 'byIt23Kj', 0.1, '2024-01-20', '2025-01-20', 1, '2024-01-20 08:34:17', '2024-01-20 08:34:17', NULL),
(10, 'JlUDueeQ', 0.15, '2024-01-20', '2025-01-20', 1, '2024-01-20 08:34:21', '2024-01-20 08:34:21', NULL),
(11, 'QNgi4RP9', 0.2, '2024-01-20', '2025-01-20', 1, '2024-01-20 08:34:22', '2024-01-20 08:34:22', NULL),
(12, 'MyjEdTeK', 0.2, '2024-04-10', '2024-04-30', 0, '2024-04-11 03:13:13', '2024-04-11 03:26:20', NULL),
(13, 'C5LD4dMQ', 0.1, '2024-04-11', '2025-04-11', 1, '2024-04-11 03:28:21', '2024-04-11 03:28:21', NULL),
(14, 'Q0LtfDYw', 0.15, '2024-04-11', '2025-04-11', 1, '2024-04-11 03:28:24', '2024-04-11 03:28:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phu_caps`
--

CREATE TABLE `phu_caps` (
  `ma_phu_cap` varchar(191) NOT NULL,
  `tien_phu_cap` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phu_caps`
--

INSERT INTO `phu_caps` (`ma_phu_cap`, `tien_phu_cap`, `created_at`, `updated_at`, `deleted_at`) VALUES
('phucap00', 0, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('phucap01', 500000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('phucap02', 1000000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('phucap03', 1500000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pin_sacs`
--

CREATE TABLE `pin_sacs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dung_luong_pin` varchar(500) NOT NULL,
  `loai_pin` varchar(500) NOT NULL,
  `ho_tro_sac_toi_da` varchar(500) NOT NULL,
  `sac_kem_theo_may` varchar(500) NOT NULL,
  `cong_nghe_pin` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pin_sacs`
--

INSERT INTO `pin_sacs` (`id`, `dung_luong_pin`, `loai_pin`, `ho_tro_sac_toi_da`, `sac_kem_theo_may`, `cong_nghe_pin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4310 mAh', 'Li-Po', '30 W', '30 W', 'Sạc nhanh VOOC', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, '4352 mAh', 'Li-Ion', '20 W', 'Không có', 'Siêu tiết kiệm pin - Sạc không dây - Sạc không dây MagSafe - Sạc pin nhanh', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, '5000 mAh', 'Li-Ion', '45 W', 'Không có', 'Sạc không dây - Sạc ngược không dây - Sạc pin nhanh', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, '4050 mAh', 'Li-Po', '44 W', '44 W', 'Sạc pin nhanh - Tiết kiệm pin', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, '4500 mAh', 'Li-Ion', '67 W', '67 W', 'Sạc không dây - Sạc ngược không dây - Sạc pin nhanh - Tiết kiệm pin', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, '5000 mAh', 'Li-Po', '33 W', '33 W', 'Siêu tiết kiệm pin - Sạc pin nhanh', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, '5050 mAh', 'Li-Ion', '18 W', '10 W', 'Sạc pin nhanh', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, '4000 mAh', 'Li-Ion', '5 W', '5 W', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, '2000 mAh', 'Li-Ion', 'Không có', '2.5 W', 'Không có', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, '6000 mAh', 'Li-Po', '25 W', 'Không', 'Sạc pin nhanhTiết kiệm pin', '2024-02-01 08:39:12', '2024-02-01 08:39:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham_phan_bos`
--

CREATE TABLE `san_pham_phan_bos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cua_hang_id` bigint(20) UNSIGNED NOT NULL,
  `chi_tiet_dien_thoai_id` bigint(20) UNSIGNED NOT NULL,
  `so_luong` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `san_pham_phan_bos`
--

INSERT INTO `san_pham_phan_bos` (`id`, `cua_hang_id`, `chi_tiet_dien_thoai_id`, `so_luong`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(2, 2, 2, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(3, 2, 3, '99', '2022-11-01 05:35:29', '2024-04-12 10:41:29'),
(4, 2, 4, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(5, 2, 5, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(6, 2, 6, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(7, 2, 7, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(8, 2, 8, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(9, 2, 9, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(10, 2, 10, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(11, 2, 11, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(12, 2, 12, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(13, 2, 13, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(14, 2, 14, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(15, 2, 15, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(16, 2, 16, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(17, 2, 17, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(18, 2, 18, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(19, 2, 19, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(20, 2, 20, '100', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(21, 3, 1, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(22, 3, 2, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(23, 3, 3, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(24, 3, 4, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(25, 3, 5, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(26, 3, 6, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(27, 3, 7, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(28, 3, 8, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(29, 3, 9, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(30, 3, 10, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(31, 3, 11, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(32, 3, 12, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(33, 3, 13, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(34, 3, 14, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(35, 3, 15, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(36, 3, 16, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(37, 3, 17, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(38, 3, 18, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(39, 3, 19, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(40, 3, 20, '0', '2022-11-01 05:35:29', '2022-11-01 05:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loai_tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `bac_tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `diem_thuong` int(11) NOT NULL,
  `password` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tai_khoans`
--

INSERT INTO `tai_khoans` (`id`, `loai_tai_khoan_id`, `bac_tai_khoan_id`, `username`, `diem_thuong`, `password`, `token`, `trang_thai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'admin', 0, '$2y$10$npc9eK9p4o7dEAP5lAPSSeDC2mGNSfaIQvlzVsgqOn0GGMcKN1mkG', 'NTrxOgPjTUTjz0izxjdFzJlrZ4wS74ygPbKwasBvKtyZfucOeXzSytrUB7XL', 1, '2022-11-01 05:35:28', '2022-11-12 17:53:11', NULL),
(2, 2, 1, 'quanlycuahang1', 0, '$2y$10$epcxq1h.pGVJ4Swt0RQFPuUzwqWoQzEs1cd6dczNUDbotTyHBLUt6', 'i6oeD8E90GP7e9HZGCpdsYiQGSOQn3y6RSJZrihNZM9VQaxe0ViufYjSimuK', 1, '2022-11-01 05:35:28', '2022-11-12 17:53:57', NULL),
(3, 3, 1, 'quanlykho1', 0, '$2y$10$jt1GrzcHjVZkiJuZCLleLO0TxL795oLPKm5ujxeIh9MSTHHPYPywa', 'gQuKQlDrh4Dt5qguFq9rT3wTG4Ctl85ohyaElevemZ98lTZKPTPSKXv8TIC4', 1, '2022-11-01 05:35:28', '2022-11-01 05:35:28', NULL),
(4, 4, 1, 'nhanviencuahang1', 0, '$2y$10$wDBNo0nbj91wv6eAZXKRm.3D3mRzDAFIPoldf9b3l/i9SMso6WXZe', 'FXxybhXR4jtPs7yRNpwIxqLG56rC3Ffgiv4AzLooZkMISsA9ViZFHOO0EW69', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(5, 4, 1, 'nhanviencuahang2', 0, '$2y$10$CtLsyPYO65OmNFFqB3iwrOCVLpueSNxxbUSlfYi/OobFXCHrVkttC', '0IOwF1kgL0oGVRJFfB4g7eceb0uZng0KCG2ey2jPHEh0ZDkCUmo6Fj2OcUyl', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(6, 4, 1, 'nhanvienkho1', 0, '$2y$10$BgYtnHMETGXxZsgsguP65.4jMvn3uUzqSHXLy.85EYrcpPGpuB1Sa', 'kzxENHkeVN9HjpwAts7YimVfboEChZqIheT58kLHNOMpoW0ZRotbCIOHYB1p', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(7, 4, 1, 'nhanvienkho2', 0, '$2y$10$K3upG0eQl5GIJhEPpN2/qO0wefn0Eovam35ptsXkMxpNY3YyEBJwG', 'C4lLD7U4WDosIOGFdzSawPqAymUuffzs8TB1HjX3VkVztBLiz2mERORA4IRd', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(8, 5, 2, 'nguyenvana', 0, '$2y$10$I27xunzgoiisuXH.x4ek/.QlGoGW6pR2//MAN/VPk7x4iQ2MC80/G', 'GuJLRsbGxpLwhIBViqoUBBgm5wJcv0tAPBNEq0Zy1fYa0XhbQ90ecTegp3Op', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
(9, 5, 4, 'thanhlam1105', 1780, '$2y$10$OT77HvVd2p6B7V5dfFsegOMDiu8Msj.6YnbXaNQrRhKKKgvcyrVEC', 'ZEiEmoxMx5hwKNNgkuPhuyjMj4JAOb4Z8IxLhjhDwOVPjdcfllHuA1BvV4lZ', 1, '2022-11-01 06:46:49', '2023-08-07 21:23:35', NULL),
(10, 5, 1, 'tandat1100', 0, '$2y$10$vpTulYWllOg9Tr9Tvan20eo.9tpRURecLPN20a34/zch7RARsgGrK', 'VFCz6bcs6SMJwUwU5t1WoeH47HyZSI5PqTDoNyq4ezZiQAKjUdiVax6XUgaW', 1, '2022-11-11 23:52:56', '2024-04-12 10:46:46', NULL),
(11, 5, 4, 'laptrinhvlog', 3399, '$2y$10$w7JaCUWSLbA2v/y/mfjmg.zQ9EtF1XxWmzwBQiIeGiEz9rCMCYPHu', 'qa81yaFqdpHLMp8Hd6nBK4GsVB2r2PdWYBh51nVvBMN20HBhPuxpbzXx0bas', 1, '2024-01-20 08:27:36', '2024-01-20 08:34:24', NULL),
(12, 5, 3, 'abcxyz', 849, '$2y$10$24OXMD6Mka2YKt0L5l/s1.qLJt5M3XyMs7aVVhKiGHR3b8pNHFzpq', '454ojJfkbY5EaGGOrWhwaqtA7BfdrCXPFOPcIuz8xfS3wXZrF6fPt3COZ0MU', 1, '2024-04-11 03:17:08', '2024-04-11 03:28:25', NULL),
(13, 4, 1, 'Test123', 0, '$2y$10$a9dcCZH1EZmYGxTs4s/Wz.a4Bz5w1AeJGn3cMBDOBTLgg9cLvqmVK', 'yiCAl5hosvegAwbBejDPh7B2o9hwcY7aEh1RhcP7rS0WqsE35MyH8KXe8DAA', 1, '2024-04-12 10:09:36', '2024-04-12 10:09:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_chungs`
--

CREATE TABLE `thong_tin_chungs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thiet_ke` varchar(500) NOT NULL,
  `chat_lieu` varchar(500) NOT NULL,
  `kich_thuoc_khoi_luong` varchar(500) NOT NULL,
  `thoi_diem_ra_mat` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thong_tin_chungs`
--

INSERT INTO `thong_tin_chungs` (`id`, `thiet_ke`, `chat_lieu`, `kich_thuoc_khoi_luong`, `thoi_diem_ra_mat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyên khối', 'Khung hợp kim & Mặt lưng thuỷ tinh hữu cơ', 'Dài 160.2 mm - Ngang 73.38 mm - Dày 7.97 mm - Nặng 173 g', '2021-01-07', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'Nguyên khối', 'Khung thép không gỉ & Mặt lưng kính cường lực', 'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.65 mm - Nặng 240 g', '2021-01-09', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Nguyên khối', 'Khung kim loại & Mặt lưng kính', 'Dài 163.3 mm - Ngang 77.9 mm - Dày 8.9 mm - Nặng 228 g', '2022-02-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Nguyên khối', 'Khung nhựa & Mặt lưng kính', 'Dài 160.87 mm - Ngang 74.28 mm - Dày 7.41 mm - Nặng 172 g', '2021-11-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Nguyên khối', 'Khung kim loại & Mặt lưng kính', 'Dài 152.7 mm - Ngang 69.9 mm - Dày 8.2 mm - Nặng 180 g', '2022-03-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Nguyên khối', 'Khung nhựa, kim loại & Mặt lưng nhựa', 'Dài 164.3 mm - Ngang 75.6 mm - Dày 8.5 mm - Nặng 195 g', '2022-03-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Nguyên khối', 'Khung kim loại & Mặt lưng nhựa', 'Dài 164.6 mm - Ngang 75.9 mm - Dày 8.5 mm - Nặng 190 g', '2022-04-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Pin rời', 'Khung nhôm & Mặt lưng nhựa', 'Dài 166 mm - Ngang 75.9 mm - Dày 8.55 mm - Nặng 179 g', '2021-10-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Pin rời', 'Khung kim loại & Mặt lưng nhựa', 'Dài 125.9 mm - Ngang 57.1 mm - Dày 15.3 mm - Nặng 146.2 g', '2021-12-01', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_tai_khoans`
--

CREATE TABLE `thong_tin_tai_khoans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `ho_ten` varchar(191) NOT NULL,
  `dia_chi` varchar(191) DEFAULT NULL,
  `so_dien_thoai` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thong_tin_tai_khoans`
--

INSERT INTO `thong_tin_tai_khoans` (`id`, `tai_khoan_id`, `ho_ten`, `dia_chi`, `so_dien_thoai`, `email`, `ngay_sinh`, `gioi_tinh`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn Thành Trung', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111121', 'admin@gmail.com', '2001-01-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(2, 2, 'Phạm Hoàng Minh', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111122', 'quanlycuahang1@gmail.com', '1995-01-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(3, 3, 'Lê Văn Lâm', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111123', 'quanlykho1@gmail.com', '1996-01-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(4, 4, 'Nguyễn Quỳnh Như', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111124', 'nhanviencuahang1@gmail.com', '1997-01-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(5, 5, 'Nguyễn Thị Hương Ly', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111125', 'nhanviencuahang2@gmail.com', '1997-01-01', 0, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(6, 6, 'Lương Lư Vương', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111126', 'nhanviencuahang2@gmail.com', '1997-01-01', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(7, 7, 'Lương Lư Hà', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918111127', 'nhanviencuahang2@gmail.com', '1997-01-01', 0, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(8, 8, 'Nguyễn Văn An', '25A Nam Kỳ Khởi Nghĩa,Bến Nghé,Q1, Hồ Chí Minh', '0918123456', '0306181350@caothang.edu.vn', '2001-01-02', 1, '2022-11-01 05:35:29', '2022-11-01 05:35:29'),
(9, 9, 'Nguyễn Thanh Lâm', '25A Đinh Bộ Lĩnh,Phường 25,Bình Thạnh, Hồ Chí Minh', '0999999994', 'thanhlam1105@gmail.com', '1997-05-01', 1, '2022-11-01 06:46:49', '2022-11-13 04:03:01'),
(10, 10, 'Nguyễn Tấn Đạt', 'TP Hồ Chí Minh', '0999999999', 'nguyenkhanhstmqn@gmail.com', '2000-02-12', 1, '2022-11-11 23:52:56', '2022-11-11 23:53:37'),
(11, 11, 'Nguyễn Thành Trung', NULL, NULL, 'kq909981@gmail.com', '2024-01-20', 1, '2024-01-20 08:27:36', '2024-01-20 08:27:36'),
(12, 12, 'Phùng Văn Bình', NULL, NULL, 'binh17965@huce.edu.vn', '2024-04-11', 1, '2024-04-11 03:17:08', '2024-04-11 03:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `thuongs`
--

CREATE TABLE `thuongs` (
  `ma_thuong` varchar(191) NOT NULL,
  `tien_thuong` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuongs`
--

INSERT INTO `thuongs` (`ma_thuong`, `tien_thuong`, `created_at`, `updated_at`, `deleted_at`) VALUES
('mathuong00', 0, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('mathuong01', 500000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('mathuong02', 1000000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL),
('mathuong03', 1500000, '2022-11-01 05:35:29', '2022-11-01 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thuong_hieus`
--

CREATE TABLE `thuong_hieus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_thuong_hieu` varchar(30) NOT NULL,
  `hinh_anh` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuong_hieus`
--

INSERT INTO `thuong_hieus` (`id`, `ten_thuong_hieu`, `hinh_anh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'IPHONE', 'IPHONE/logo-iphone.png', '2022-11-01 05:35:27', '2022-11-01 06:54:13', NULL),
(2, 'ITEL', 'ITEL/logo-itel.jpg', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'MASSTEL', 'MASSTEL/logo-masstel.png', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'NOKIA', 'NOKIA/logo-nokia.jpg', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'OPPO', 'OPPO/logo-oppo.jpg', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'REALME', 'REALME/logo-realme.png', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'SAMSUNG', 'SAMSUNG/logo-samsung.png', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'VIVO', 'VIVO/logo-vivo.jpg', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'XIAOMI', 'XIAOMI/logo-xiaomi.png', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(10, 'TEST', 'default/default.png', '2022-11-13 05:54:25', '2022-11-13 05:54:32', '2022-11-13 05:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `tien_iches`
--

CREATE TABLE `tien_iches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bao_mat_nang_cao` varchar(500) NOT NULL,
  `tinh_nang_dac_biet` varchar(500) NOT NULL,
  `khang_nuoc_bui` varchar(500) NOT NULL,
  `ghi_am` varchar(500) NOT NULL,
  `xem_phim` varchar(500) NOT NULL,
  `nghe_nhac` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tien_iches`
--

INSERT INTO `tien_iches` (`id`, `bao_mat_nang_cao`, `tinh_nang_dac_biet`, `khang_nuoc_bui`, `ghi_am`, `xem_phim`, `nghe_nhac`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mở khoá khuôn mặt - Mở khoá vân tay dưới màn hình', 'Chạm 2 lần sáng màn hình Ứng dụng kép (Nhân bản ứng dụng)', 'Không có', 'Ghi âm mặc định', '3GP - AVI - MP4 - WMV', 'AAC - AMR - MP3 - WAV - WMA', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(2, 'Mở khoá khuôn mặt Face ID', 'Không có', 'IP68', 'Ghi âm có microphone chuyên dụng chống ồn', 'H.264(MPEG4-AVC)', 'AAC - FLAC - Lossless', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(3, 'Mở khoá khuôn mặt - Mở khoá vân tay dưới màn hình', 'Chạm 2 lần sáng màn hình - Chặn cuộc gọi - Chặn tin nhắn - Không gian thứ hai (Thư mục bảo mật) -  Màn hình luôn hiển thị AOD - Samsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC) - Samsung Pay - Thu nhỏ màn hình sử dụng một tay - Trợ lý ảo Samsung Bixby - Tối ưu game (Game Booster) - Âm thanh AKG - Âm thanh Dolby Atmos - Đa cửa sổ (chia đôi màn hình)', 'Không có', 'Ghi âm cuộc gọi - Ghi âm mặc định', '3GP - AVI - FLV - MKV - MP4', 'AAC - AMR - M4A - MP3 - OGG - WAV', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(4, 'Mở khoá khuôn mặt - Mở khoá vân tay dưới màn hình', 'Mở rộng bộ nhớ RAM - Tối ưu game (Siêu trò chơi)', 'Không có', 'Ghi âm mặc định', '3GP - AVI - MKV - MP4 - FLV', 'APE - FLAC - Midi - MP2 - MP3 - Vorbis - WAV', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(5, 'Mở khoá khuôn mặt - Mở khoá vân tay dưới màn hình', 'Chạm 2 lần tắt/sáng màn hình - Công nghệ tản nhiệt LiquidCool - Loa kép - Màn hình luôn hiển thị AOD - Âm thanh bởi Harman Kardon - Âm thanh Dolby Atmos - Đa cửa sổ (chia đôi màn hình)', 'Không có', 'Ghi âm cuộc gọi - Ghi âm mặc định', 'AVI - MP4', 'FLAC - Midi - MP3 - OGG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(6, 'Mở khoá khuôn mặt - Mở khoá vân tay cạnh viền', 'Chế độ trẻ em (Không gian trẻ em) - Chế độ đơn giản (Giao diện đơn giản) - Mở rộng bộ nhớ RAM - Trợ lý ảo Google Assistant', 'Không có', 'Ghi âm mặc định', '3GP - AVI - FLV - MKV - MP4 - TS - WMV', 'AAC - AMR - APE - FLAC - Midi - MP3 - WAV - WMA', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(7, 'Mở khoá khuôn mặt - Mở khoá vân tay cạnh viền', 'Không có', 'IP52', 'Ghi âm mặc định - Hỗ trợ ứng dụng ghi âm', 'AVI - MP4', 'FLAC - Midi - MP3 - OGG', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(8, 'Mở khoá khuôn mặt - Mở khoá bằng vân tay', 'Không có', 'Không có', 'Ghi âm mặc định', '3GP - AVI - MP4', 'AAC - Midi - MP3 - WAV', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL),
(9, 'Không có', 'Không có', 'Không có', 'Ghi âm mặc định', '3GP - MP4', 'AAC - M4A - MP3', '2022-11-01 05:35:27', '2022-11-01 05:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bac_tai_khoans`
--
ALTER TABLE `bac_tai_khoans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bo_nho_luu_trus`
--
ALTER TABLE `bo_nho_luu_trus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camera_saus`
--
ALTER TABLE `camera_saus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camera_truocs`
--
ALTER TABLE `camera_truocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cham_congs`
--
ALTER TABLE `cham_congs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cham_congs_nhan_vien_id_foreign` (`nhan_vien_id`),
  ADD KEY `cham_congs_he_so_luong_id_foreign` (`he_so_luong_id`),
  ADD KEY `cham_congs_phu_cap_id_foreign` (`phu_cap_id`),
  ADD KEY `cham_congs_thuong_id_foreign` (`thuong_id`);

--
-- Indexes for table `chi_tiet_dien_thoais`
--
ALTER TABLE `chi_tiet_dien_thoais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_dien_thoais_dien_thoai_id_foreign` (`dien_thoai_id`),
  ADD KEY `chi_tiet_dien_thoais_man_hinh_id_foreign` (`man_hinh_id`),
  ADD KEY `chi_tiet_dien_thoais_camera_sau_id_foreign` (`camera_sau_id`),
  ADD KEY `chi_tiet_dien_thoais_camera_truoc_id_foreign` (`camera_truoc_id`),
  ADD KEY `chi_tiet_dien_thoais_he_dieu_hanh_cpu_id_foreign` (`he_dieu_hanh_cpu_id`),
  ADD KEY `chi_tiet_dien_thoais_bo_nho_luu_tru_id_foreign` (`bo_nho_luu_tru_id`),
  ADD KEY `chi_tiet_dien_thoais_ket_noi_id_foreign` (`ket_noi_id`),
  ADD KEY `chi_tiet_dien_thoais_pin_sac_id_foreign` (`pin_sac_id`),
  ADD KEY `chi_tiet_dien_thoais_tien_ich_id_foreign` (`tien_ich_id`),
  ADD KEY `chi_tiet_dien_thoais_thong_tin_chung_id_foreign` (`thong_tin_chung_id`),
  ADD KEY `chi_tiet_dien_thoais_mau_sac_id_foreign` (`mau_sac_id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_don_hangs_don_hang_id_foreign` (`don_hang_id`),
  ADD KEY `chi_tiet_don_hangs_chi_tiet_dien_thoai_id_foreign` (`chi_tiet_dien_thoai_id`);

--
-- Indexes for table `chi_tiet_khos`
--
ALTER TABLE `chi_tiet_khos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_khos_kho_id_foreign` (`kho_id`),
  ADD KEY `chi_tiet_khos_chi_tiet_dien_thoai_id_foreign` (`chi_tiet_dien_thoai_id`);

--
-- Indexes for table `chi_tiet_khuyen_mais`
--
ALTER TABLE `chi_tiet_khuyen_mais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_khuyen_mais_khuyen_mai_id_foreign` (`khuyen_mai_id`),
  ADD KEY `chi_tiet_khuyen_mais_dien_thoai_id_foreign` (`dien_thoai_id`);

--
-- Indexes for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cua_hangs`
--
ALTER TABLE `cua_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_gias`
--
ALTER TABLE `danh_gias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_gias_tai_khoan_id_foreign` (`tai_khoan_id`),
  ADD KEY `danh_gias_dien_thoai_id_foreign` (`dien_thoai_id`);

--
-- Indexes for table `dien_thoais`
--
ALTER TABLE `dien_thoais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dien_thoais_thuong_hieu_id_foreign` (`thuong_hieu_id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `don_hangs_tai_khoan_khach_hang_id_foreign` (`tai_khoan_khach_hang_id`),
  ADD KEY `don_hangs_tai_khoan_nhan_vien_id_foreign` (`tai_khoan_nhan_vien_id`),
  ADD KEY `don_hangs_phieu_giam_gia_id_foreign` (`phieu_giam_gia_id`),
  ADD KEY `don_hangs_cua_hang_id_foreign` (`cua_hang_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `he_dieu_hanh_cpus`
--
ALTER TABLE `he_dieu_hanh_cpus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `he_so_luongs`
--
ALTER TABLE `he_so_luongs`
  ADD PRIMARY KEY (`ma_hsl`);

--
-- Indexes for table `hinh_anh_banner_trang_chus`
--
ALTER TABLE `hinh_anh_banner_trang_chus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinh_anh_chung_cua_dien_thoais`
--
ALTER TABLE `hinh_anh_chung_cua_dien_thoais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinh_anh_chung_cua_dien_thoais_dien_thoai_id_foreign` (`dien_thoai_id`);

--
-- Indexes for table `hinh_anh_mau_sac_cua_dien_thoais`
--
ALTER TABLE `hinh_anh_mau_sac_cua_dien_thoais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinh_anh_mau_sac_cua_dien_thoais_dien_thoai_id_foreign` (`dien_thoai_id`),
  ADD KEY `hinh_anh_mau_sac_cua_dien_thoais_mau_sac_id_foreign` (`mau_sac_id`);

--
-- Indexes for table `ket_nois`
--
ALTER TABLE `ket_nois`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khos`
--
ALTER TABLE `khos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khuyen_mais`
--
ALTER TABLE `khuyen_mais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_tai_khoans`
--
ALTER TABLE `loai_tai_khoans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `man_hinhs`
--
ALTER TABLE `man_hinhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mau_sacs`
--
ALTER TABLE `mau_sacs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mau_sacs_ten_mau_sac_unique` (`ten_mau_sac`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_viens`
--
ALTER TABLE `nhan_viens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhan_viens_chuc_vu_id_foreign` (`chuc_vu_id`),
  ADD KEY `nhan_viens_quan_ly_id_foreign` (`quan_ly_id`),
  ADD KEY `nhan_viens_tai_khoan_id_foreign` (`tai_khoan_id`),
  ADD KEY `nhan_viens_cua_hang_id_foreign` (`cua_hang_id`),
  ADD KEY `nhan_viens_kho_id_foreign` (`kho_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phan_hoi_danh_gias`
--
ALTER TABLE `phan_hoi_danh_gias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phan_hoi_danh_gias_danh_gia_id_foreign` (`danh_gia_id`),
  ADD KEY `phan_hoi_danh_gias_tai_khoan_id_foreign` (`tai_khoan_id`);

--
-- Indexes for table `phieu_giam_gias`
--
ALTER TABLE `phieu_giam_gias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phieu_giam_gias_code_unique` (`code`);

--
-- Indexes for table `phu_caps`
--
ALTER TABLE `phu_caps`
  ADD PRIMARY KEY (`ma_phu_cap`);

--
-- Indexes for table `pin_sacs`
--
ALTER TABLE `pin_sacs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham_phan_bos`
--
ALTER TABLE `san_pham_phan_bos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_phan_bos_cua_hang_id_foreign` (`cua_hang_id`),
  ADD KEY `san_pham_phan_bos_chi_tiet_dien_thoai_id_foreign` (`chi_tiet_dien_thoai_id`);

--
-- Indexes for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tai_khoans_username_unique` (`username`),
  ADD KEY `tai_khoans_loai_tai_khoan_id_foreign` (`loai_tai_khoan_id`),
  ADD KEY `tai_khoans_bac_tai_khoan_id_foreign` (`bac_tai_khoan_id`);

--
-- Indexes for table `thong_tin_chungs`
--
ALTER TABLE `thong_tin_chungs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_tai_khoans`
--
ALTER TABLE `thong_tin_tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thong_tin_tai_khoans_tai_khoan_id_foreign` (`tai_khoan_id`);

--
-- Indexes for table `thuongs`
--
ALTER TABLE `thuongs`
  ADD PRIMARY KEY (`ma_thuong`);

--
-- Indexes for table `thuong_hieus`
--
ALTER TABLE `thuong_hieus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thuong_hieus_ten_thuong_hieu_unique` (`ten_thuong_hieu`);

--
-- Indexes for table `tien_iches`
--
ALTER TABLE `tien_iches`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bac_tai_khoans`
--
ALTER TABLE `bac_tai_khoans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bo_nho_luu_trus`
--
ALTER TABLE `bo_nho_luu_trus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `camera_saus`
--
ALTER TABLE `camera_saus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `camera_truocs`
--
ALTER TABLE `camera_truocs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cham_congs`
--
ALTER TABLE `cham_congs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_dien_thoais`
--
ALTER TABLE `chi_tiet_dien_thoais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `chi_tiet_khos`
--
ALTER TABLE `chi_tiet_khos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chi_tiet_khuyen_mais`
--
ALTER TABLE `chi_tiet_khuyen_mais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cua_hangs`
--
ALTER TABLE `cua_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danh_gias`
--
ALTER TABLE `danh_gias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dien_thoais`
--
ALTER TABLE `dien_thoais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `he_dieu_hanh_cpus`
--
ALTER TABLE `he_dieu_hanh_cpus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hinh_anh_banner_trang_chus`
--
ALTER TABLE `hinh_anh_banner_trang_chus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinh_anh_chung_cua_dien_thoais`
--
ALTER TABLE `hinh_anh_chung_cua_dien_thoais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `hinh_anh_mau_sac_cua_dien_thoais`
--
ALTER TABLE `hinh_anh_mau_sac_cua_dien_thoais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `ket_nois`
--
ALTER TABLE `ket_nois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `khos`
--
ALTER TABLE `khos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khuyen_mais`
--
ALTER TABLE `khuyen_mais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loai_tai_khoans`
--
ALTER TABLE `loai_tai_khoans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `man_hinhs`
--
ALTER TABLE `man_hinhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mau_sacs`
--
ALTER TABLE `mau_sacs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `nhan_viens`
--
ALTER TABLE `nhan_viens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phan_hoi_danh_gias`
--
ALTER TABLE `phan_hoi_danh_gias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phieu_giam_gias`
--
ALTER TABLE `phieu_giam_gias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pin_sacs`
--
ALTER TABLE `pin_sacs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `san_pham_phan_bos`
--
ALTER TABLE `san_pham_phan_bos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `thong_tin_chungs`
--
ALTER TABLE `thong_tin_chungs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thong_tin_tai_khoans`
--
ALTER TABLE `thong_tin_tai_khoans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `thuong_hieus`
--
ALTER TABLE `thuong_hieus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tien_iches`
--
ALTER TABLE `tien_iches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
