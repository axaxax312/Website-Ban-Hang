-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 27, 2020 lúc 12:21 PM
-- Phiên bản máy phục vụ: 5.7.23
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doantotnghiep_webbangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Tôi là Admin', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0123456789', 4, '2017-05-12 09:25:39', '2017-05-12 09:25:39'),
(2, 'Đỗ Việt Anh', 'dovietanh@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0986420994', 1, '2017-05-12 08:09:11', '2017-05-12 08:09:11'),
(4, 'Đỗ Gia Tùng', 'tunggia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0986541230', 1, '2017-05-12 09:43:31', '2017-05-12 09:43:31'),
(5, 'Phan Trung Phú', 'trungphu150994@gmail.com', '25f9e794323b453885f5181f1b624d0b', '13409676756', 4, '2017-05-12 09:50:28', '2019-11-01 13:12:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth`
--

CREATE TABLE `auth` (
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thunbar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `id_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth`
--

INSERT INTO `auth` (`name`, `email`, `password`, `address`, `thunbar`, `level`, `phone`, `created_at`, `updated_at`, `id`, `id_auth`) VALUES
('Nguyễn Văn A', 'nguyenvana@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Xóm 3 Quỳnh Ngọc Quỳnh Lưu Nghệ An', NULL, 0, '0987654321', '2017-04-26 21:32:46', '2017-04-26 21:32:46', 1, NULL),
('admin', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Hà Nội', NULL, 2, NULL, '2017-04-26 22:01:10', '2017-04-26 22:01:10', 2, NULL),
('Linh Chi', 'linhchi@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Hà Nội', NULL, 0, '0987654321', '2017-04-29 14:08:46', '2017-04-29 14:08:46', 3, NULL),
('Linh CHi Nguyễn', 'nguyenlinhchi@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Hà Nội', NULL, 0, '1234567890', '2017-04-29 14:11:30', '2017-04-29 14:11:30', 4, NULL),
('Nguyễn Văn B', 'nguyenvandd@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Hà Nội', NULL, 0, '0987654321', '2017-04-30 07:03:52', '2017-04-30 07:03:52', 5, NULL),
('vanb', 'vanb@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Hà Nội', NULL, 0, '12345678', '2017-05-01 15:26:55', '2017-05-01 15:26:55', 6, NULL),
('Thu Hiền', 'thuhien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'TP HCM', NULL, 0, '0123456789', '2017-05-12 16:22:55', '2017-05-12 16:22:55', 8, NULL),
('TrungPhuNA', 'phupt.humg.94@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Ngách 138, Số nhà 62', NULL, 0, '0986420994', '2019-11-01 13:20:20', '2019-11-01 13:20:20', 9, NULL),
('Nguyễn Văn A', 'nguyenvana@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Tây Mỗ - Hà Nội', '12.jpeg', 0, '0987654321', '2019-11-01 19:52:52', '2019-11-01 19:52:52', 10, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `donhang_id` int(11) DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`donhang_id`, `sanpham_id`, `soluong`, `gia`, `hinhanh`, `id`) VALUES
(6, 10, 1, 12870000, 'OM-D_E-M5_Mark_II__kit_14-150mm_II_zSop_-_003.jpg', 1),
(7, 9, 1, 24500000, 'May_anh_Canon_EOS_5D_Mark_IV_kit__24-70mm__F4L__IS__USM_001.jpg', 2),
(7, 8, 1, 1862000, 'OM-D_E-M5_Mark_II__kit_14-150mm_II_zSop_-_003.jpg', 3),
(8, 7, 1, 5194000, '892349.jpg', 4),
(9, 8, 1, 1862000, 'OM-D_E-M5_Mark_II__kit_14-150mm_II_zSop_-_003.jpg', 5),
(9, 11, 1, 1176000, 'May_quay_GoPro_Hero5__Black_001.jpg', 6),
(9, 4, 1, 1425000, 'a1.jpg', 7),
(13, 10, 1, 12870000, 'OM-D_E-M5_Mark_II__kit_14-150mm_II_zSop_-_003.jpg', 8),
(13, 12, 1, 24000, 'Ong_kinh_Canon_EF_135mm_F2L_USM_001_m7h6-oq.jpg', 9),
(14, 11, 1, 1176000, 'May_quay_GoPro_Hero5__Black_001.jpg', 10),
(14, 12, 1, 24000, 'Ong_kinh_Canon_EF_135mm_F2L_USM_001_m7h6-oq.jpg', 11),
(14, 13, 2, 297000, 'Ong_kinh_Canon_EF_100mm_F2_usm_001.jpg', 12),
(14, 14, 1, 306000, 'Ong_kinh_Canon_EF_28-300mm_F3.5-5.6_001.jpg', 13),
(15, 7, 1, 5194000, '892349.jpg', 14),
(16, 11, 1, 1176000, 'May_quay_GoPro_Hero5__Black_001.jpg', 15),
(16, 10, 1, 12870000, 'OM-D_E-M5_Mark_II__kit_14-150mm_II_zSop_-_003.jpg', 16),
(17, 3, 1, 2700000, '2-min-ec90c621-6a0a-4e23-a2d4-58a4391b3444.jpg', 17),
(18, 7, 2, 5194000, '12-min-0ea01181-833e-44a2-b159-e74819794d38.jpg', 18),
(18, 14, 2, 306000, '9-ea248091-e5bd-4e3f-986a-acfb2db000a4.jpg', 19),
(19, 14, 1, 306000, '9-ea248091-e5bd-4e3f-986a-acfb2db000a4.jpg', 20),
(19, 13, 1, 297000, '13-min.jpg', 21),
(12, 14, 1, 306000, '9-ea248091-e5bd-4e3f-986a-acfb2db000a4.jpg', 22),
(13, 11, 2, 1764000, 'giay-vai-nam-pettino-gv01-trang-3697-2457893-cb6fdc5a3d4657c77e487b67380c4df4-webp-catalog_233.jpg', 23),
(14, 5, 1, 186200, 'giay-jean-nam-xanh-jean-1871-5322872-1c9138ecb6127a9c3325bbf8dcef2c76-webp-catalog_233.jpg', 24),
(14, 9, 1, 24500000, 'giay-nam-dep-2017-gv02-trang-3866-0298554-8027bc8b77072ed24f12bc270db46df8-webp-catalog_233.jpg', 25),
(14, 38, 1, 247500, 'UOUdSW_simg_b5529c_250x250_maxb.jpg', 26),
(14, 37, 1, 376200, '2d8f74_simg_b5529c_250x250_maxb.jpg', 27),
(15, 38, 1, 247500, 'UOUdSW_simg_b5529c_250x250_maxb.jpg', 28),
(15, 33, 1, 384000, '53c1dc_simg_b5529c_250x250_maxb.jpg', 29),
(16, 101, 1, 800000, 'J9p2gK_simg_b5529c_250x250_maxb.jpg', 30),
(16, 88, 1, 432000, 'NfjymX_simg_b5529c_250x250_maxb.png', 31),
(16, 4, 1, 1425000, 'giay-bot-da-lon-thoi-trang-zapas-gb090-mau-den-9547-2380581-76df311417869ffbc3456d85b4b7c10d-webp-catalog_233.jpg', 32),
(16, 6, 1, 120000, 'giay-bot-da-lon-buoc-day-zapas-gb082-mau-nau-2718-0930581-cfd293ea579a46783f424371c49c579b-webp-catalog_233.jpg', 33),
(17, 4, 1, 1425000, 'giay-bot-da-lon-thoi-trang-zapas-gb090-mau-den-9547-2380581-76df311417869ffbc3456d85b4b7c10d-webp-catalog_233.jpg', 34),
(18, 108, 2, 552000, 'c6D7Zm_simg_b5529c_250x250_maxb.jpg', 35),
(18, 107, 1, 392000, '8.jpg', 36),
(18, 2, 2, 196000, '5-min-a34571b3-bd89-418a-99f3-09cac3f32a04.jpg', 37),
(18, 15, 7, 1800000, 'xuong-cung-cap-mua-ban-buon-giay-dep-nam-nu-si-dep-gia-re-tphcm-1.jpg', 38),
(19, 110, 1, 13000, 'giay.png', 39),
(19, 15, 7, 1800000, 'xuong-cung-cap-mua-ban-buon-giay-dep-nam-nu-si-dep-gia-re-tphcm-1.jpg', 40),
(20, 106, 3, 297000, '7.jpg', 41),
(20, 109, 3, 384000, '9.jpg', 42),
(21, 4, 1, 1425000, 'giay-bot-da-lon-thoi-trang-zapas-gb090-mau-den-9547-2380581-76df311417869ffbc3456d85b4b7c10d-webp-catalog_233.jpg', 43),
(21, 6, 1, 120000, 'giay-bot-da-lon-buoc-day-zapas-gb082-mau-nau-2718-0930581-cfd293ea579a46783f424371c49c579b-webp-catalog_233.jpg', 44),
(21, 12, 1, 240000, '9-min.jpg', 45),
(22, 4, 4, 1425000, 'giay-bot-da-lon-thoi-trang-zapas-gb090-mau-den-9547-2380581-76df311417869ffbc3456d85b4b7c10d-webp-catalog_233.jpg', 46),
(22, 6, 3, 120000, 'giay-bot-da-lon-buoc-day-zapas-gb082-mau-nau-2718-0930581-cfd293ea579a46783f424371c49c579b-webp-catalog_233.jpg', 47),
(22, 110, 3, 13000, 'giay.png', 48),
(22, 109, 3, 384000, '9.jpg', 49),
(23, 109, 11, 384000, '9.jpg', 50),
(23, 104, 1, 400000, '2.jpg', 51),
(24, 109, 1, 384000, '9.jpg', 52),
(25, 109, 1, 384000, '9.jpg', 53);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `yes` int(11) DEFAULT '0',
  `no` int(11) DEFAULT '0',
  `sum` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`yes`, `no`, `sum`, `created_at`, `id`) VALUES
(9, 6, 15, '2017-04-29 05:28:43', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `tendanhmuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuccha_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`tendanhmuc`, `slug`, `hinhanh`, `danhmuccha_id`, `created_at`, `updated_at`, `id`) VALUES
('Giày dép nam', 'giay-dep-nam', NULL, 0, '2017-04-21 13:31:23', '2017-04-29 08:43:25', 1),
('Giày nữ', 'giay-nu', NULL, 0, '2017-04-21 13:31:47', '2017-04-29 08:51:40', 2),
('Phụ Kiện', 'phu-kien', NULL, 0, '2017-04-21 13:50:51', '2017-04-21 13:50:51', 3),
('Giày Sneaker', 'giay-sneaker', NULL, 1, '2017-04-21 14:16:25', '2017-05-09 21:45:52', 5),
('Lót giày', 'lot-giay', NULL, 3, '2017-04-21 14:17:47', '2017-05-09 11:21:36', 6),
('Tất đi', 'tat-di', NULL, 3, '2017-04-25 08:20:20', '2017-05-09 11:37:44', 7),
('Giày Tây', 'giay-tay', NULL, 1, '2017-04-29 13:54:30', '2017-05-09 11:48:17', 8),
('Dép Nam', 'dep-nam', NULL, 1, '2017-04-29 13:57:56', '2017-05-09 22:01:49', 9),
('Giày cao gót', 'giay-cao-got', NULL, 2, '2017-05-01 16:31:01', '2017-05-01 16:31:01', 12),
('Giày bệt', 'giay-bet', NULL, 2, '2017-05-01 16:31:25', '2017-05-01 16:31:25', 13),
('Dép nữ', 'dep-nu', NULL, 2, '2017-05-09 07:31:21', '2017-05-09 07:31:21', 15),
(' Đế giày  update', 'de-giay-update', NULL, 3, '2017-05-12 16:23:29', '2017-05-12 11:23:46', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ten`, `diachi`, `sodienthoai`, `email`, `tongtien`, `noidung`, `trangthai`, `created_at`, `updated_at`, `id`) VALUES
('Nguyễn Văn A', 'Quốc Oai Hà Nội', '0986420364', 'nguyenvana@gmail.com', 37370000, 'Giao hàng tại nhà', 0, '2017-04-25 21:36:29', '2017-04-25 21:36:29', 1),
('Nguyễn Văn B', 'Xóm 3 Quỳnh Ngọc Quỳnh Lưu Nghệ An', '0123456789', 'nguyenvanb@gmail.com', 26362000, 'Giao tận nhà khi đi mang theo tiền lẻ', 1, '2017-04-25 21:38:16', '2017-04-25 18:31:28', 2),
('Nguyễn Văn C', 'Thanh Oai hà Nội', '012345678', 'nguyenvanc@gmail.com', 5194000, 'Giao hàng tận nhà', 1, '2017-04-25 23:34:57', '2017-04-25 18:35:30', 3),
('Nguyễn Văn DX', 'Hải Hậu Nam Định', '09876543210', 'nguyenvand@gmail.com', 4463000, 'Giao hàng tận nơi ', 1, '2017-04-27 13:49:04', '2017-04-27 08:50:16', 4),
('Nguyễn Văn DD', 'Hà Nội', '0987654321', 'nguyenvandd@gmail.com', 12894000, 'ok', 0, '2017-04-27 18:42:28', '2017-04-27 18:42:28', 5),
('Nguyễn Văn P', 'Hoàng Mai - Hà Nội', '1234567890', 'nguyenvanp@gmail.com', 2100000, 'giao hàng tận nơi', 0, '2017-04-27 18:43:44', '2017-04-27 18:43:44', 6),
('Nguyễn Văn BBBB', 'Hải Dương', '0987654321', 'nguyenvandd@gmail.com', 5194000, 'Giao hàng tại nhà', 1, '2017-04-28 22:57:58', '2017-04-28 17:58:14', 7),
('Nguyễn Trần ABC', 'Hà Nội City', '0987654321', 'nguyentranadb@gmail.com', 14046000, 'Tốt', 1, '2017-04-29 12:30:55', '2017-04-29 07:31:17', 8),
('Nguyễn Văn L ', 'Hà Nội', '0987654321', 'nguyenvanl@gmail.com', 2700000, 'Tốt', 0, '2017-04-29 14:07:34', '2017-04-29 14:07:34', 9),
('Nguyễn Linh Chi', 'Hà Nội', '12345890', 'nguyenlinhci@gmail.com', 11000000, 'OK', 1, '2017-04-29 14:12:31', '2017-04-29 09:13:42', 10),
('Test DDD', 'Hà Nội', '0987121245', 'test@gmail.com', 603000, 'OK giao hàng tận nơi', 1, '2017-04-30 07:07:43', '2017-04-30 02:08:04', 11),
('Pham linh chi', 'OK', '1234578', 'Dongphuongkygiai_95@yahoo.com', 306000, 'OK', 1, '2017-05-01 15:26:12', '2017-05-01 10:26:23', 12),
('chi', 'thanh hoa', '87654321', 'abc@gmail.com', 3528000, 'ok', 0, '2017-05-02 04:06:39', '2017-05-02 04:06:39', 13),
('Pham thi linh chi', 'Yen hoa', '87654321', 'linhchi@gmail.com', 25309900, 'Hjghn', 0, '2017-05-09 06:27:18', '2017-05-09 06:27:18', 14),
('Pham thi linh chi', 'yen hoa', '87654321', 'linhchi@gmail.com', 631500, 'dfgg', 0, '2017-05-09 06:29:59', '2017-05-09 06:29:59', 15),
('Pham thi linh chi', 'Yen hoa', '02936558', 'linhchi@gmail.com', 2777000, '23', 0, '2017-05-11 07:31:07', '2017-05-11 07:31:07', 16),
(' Code thuê đồ án CNTT - Website php mysql', 'ad', '123456789', 'phupt.humg.94@gmail.com', 1425000, 'ad', 0, '2017-05-11 22:14:12', '2017-05-11 22:14:12', 17),
('Trung PHus NA', ' Nghệ AN', '0986420994', 'trungphu150994@gmail.com', 13039200, 'OK', 1, '2017-05-12 07:00:31', '2017-05-12 02:01:16', 18),
('Phan Trung Phú', 'Xóm 3 Quỳnh Ngọc Quỳnh Lưu Nghệ An', '0986420994', 'trungphu150994@gmail.com', 11351700, 'OK', 1, '2017-05-12 16:26:46', '2017-05-12 11:26:58', 19),
('Nguyễn Hoàng Anh', 'Hà Nội', '0987654321', 'hoanganh@gmail.com', 2043000, 'Giao hàng thành công', 1, '2017-05-12 19:49:26', '2017-05-12 14:50:19', 20),
('Hoàng Văn Thọ', 'Nghệ An', '0987655121', 'hoangvantho@gmail.com', 1785000, 'ok', 0, '2017-05-12 20:26:58', '2017-05-12 20:26:58', 21),
('Nguyễn Linh Chi', 'Xóm 3 Quỳnh Ngọc Quỳnh Lưu Nghệ An', '0987121245', 'nguyenlinhchi@gmail.com', 7105980, ' Hà Nội', 0, '2017-05-12 20:33:24', '2017-05-12 20:33:24', 22),
('Trung Phu NA', 'Ngách 138, Số nhà 62', '0986420994', 'phupt.humg.94@gmail.com', 4624000, 'Nội dung', 0, '2019-11-01 13:19:26', '2019-11-01 13:19:26', 23),
('Trung Phu NA', 'Ngách 138, Số nhà 62', '0986420994', 'phupt.humg.94@gmail.com', 384000, '1212121', 0, '2019-11-01 13:20:52', '2019-11-01 13:20:52', 24),
('Nguyễn Văn A', 'Ngách 138, Số nhà 62', '0986420994', 'nguyenvana@gmail.com', 384000, 'Hà Nôi', 0, '2019-11-01 19:53:27', '2019-11-01 19:53:27', 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `tenmenu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vitri` tinyint(4) DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`tenmenu`, `slug`, `vitri`, `id`) VALUES
('Giới thiệu', 'gioi-thieu.php', 0, 1),
('Địa chỉ', 'dia-chi.php', 0, 2),
('tin tức', 'tin-tuc.php', 0, 3),
('Đánh giá website', 'danh-gia-website.php', 0, 4),
('Liên hệ', 'lien-he.php', 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `tennhacc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`tennhacc`, `diachi`, `sodienthoai`, `email`, `created_at`, `updated_at`, `id`) VALUES
('Công ty Nam Hà', ' Thái Nguyên', '09865243246', 'samsung@gmail.com', '2017-04-26 00:31:59', '2017-04-26 00:31:59', 1),
('Công ty THHH Phúc Anh', '345 Cầu Giấy Hà Nội', '0321564896', 'phucanh@gmail.com', '2017-04-26 00:38:56', '2017-04-26 00:38:56', 2),
('Công ty THHH Hoàng Long', ' Ngách  56/34 số nhà 22 Phường Đức Thắng - Quận Bắc Từ Liêm - Hà Nội', '0986423562', 'hoanglong@gmail.com', '2017-04-26 00:47:26', '2017-04-26 00:47:26', 3),
('CTTNHH 1 thành viên', 'hà Nội', '0987654321', 'adminad@gmail.com', '2017-04-30 07:12:26', '2017-04-30 07:12:26', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `tensanpham` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT '0',
  `soluong` int(11) DEFAULT '0',
  `giamgia` tinyint(4) DEFAULT '0',
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text,
  `trangthai` varchar(255) DEFAULT NULL,
  `hot` tinyint(3) UNSIGNED DEFAULT '0',
  `yeuthich` int(11) DEFAULT '0',
  `nhacungcap_id` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `size` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`tensanpham`, `slug`, `danhmuc_id`, `gia`, `soluong`, `giamgia`, `hinhanh`, `mota`, `trangthai`, `hot`, `yeuthich`, `nhacungcap_id`, `gianhap`, `pay`, `created_at`, `updated_at`, `id`, `size`) VALUES
('Giày nữ', 'giay-nu', 2, 190000, 20, 0, '12-min-0ea01181-833e-44a2-b159-e74819794d38.jpg', 'ok', NULL, 0, 0, 2, 180000, 0, '2017-04-21 18:04:07', '2017-04-21 18:04:07', 1, 0),
('Giày Sneaker ', 'giay-sneaker', 1, 200000, 8, 2, '5-min-a34571b3-bd89-418a-99f3-09cac3f32a04.jpg', 'Chất liệu da PU cao cấp\r\nMũi giày tròn.\r\nPhối da sau gót giày thời trang.\r\nĐế bằng cao su tổng hợp; xẻ rãnh chống trơn trượt.\r\n', NULL, 0, 0, 1, 100000, 1, '2017-04-21 18:04:58', '2017-04-21 18:04:58', 2, 0),
('Giày Bốt Nam Cổ Ngắn ', 'giay-bot-nam-co-ngan', 1, 200000, 2, 10, 'giay-bot-nam-co-ngan-thoi-trang-dodaco-ddc3022-nau-4656-6106513-c74f8e7959ee92734421a1b3872f0521-webp-catalog_233.jpg', 'Chất liệu da bền đẹp\r\nAn toàn cho người dùng\r\nKiểu dáng thời trang, cá tính\r\nDễ dàng phối trang phục', NULL, 0, 0, 3, 900000, 0, '2017-04-22 05:20:05', '2017-04-22 05:20:05', 3, 0),
('Giày bốt da lộn thời trang Zapas', 'giay-bot-da-lon-thoi-trang-zapas', 5, 1500000, 18, 5, 'giay-bot-da-lon-thoi-trang-zapas-gb090-mau-den-9547-2380581-76df311417869ffbc3456d85b4b7c10d-webp-catalog_233.jpg', 'Chất liệu cao cấp\r\nThiết kế hợp thời trang\r\nPhù hợp nhiều phong cách', NULL, 0, 0, 2, 1000000, 1, '2017-04-22 05:52:48', '2017-04-22 05:52:48', 4, 0),
('Giày Jean Nam', 'giay-jean-nam', 9, 196000, 10, 5, 'giay-jean-nam-xanh-jean-1871-5322872-1c9138ecb6127a9c3325bbf8dcef2c76-webp-catalog_233.jpg', 'Thiết kế đơn giản nhưng năng động; cá tính tạo vẻ ngoài trẻ trung; phong cách cho các bạn nam.\r\nForm dày ôm chân nhưng vẫn tạo sự thoải mái với đế bệt xẻ rãnh chống trơn trượt cho bạn tự tin sải bước.\r\nChất liệu cao su - vải jean thông thoáng; thấm hút tốt; đường may tinh tế; tỉ mỉ đến từng chi tiết.\r\nDễ dàng khi mix cùng nhiều trang phục như áo thun; áo sơ mi; quần jeans; quần kaki; quần short…', NULL, 0, 0, 1, 200000, 0, '2017-04-25 07:41:45', '2017-04-25 07:41:45', 5, 0),
('Giày Bốt Da Lộn Buộc Dây Zapas', 'giay-bot-da-lon-buoc-day-zapas', 5, 120000, 34, 0, 'giay-bot-da-lon-buoc-day-zapas-gb082-mau-nau-2718-0930581-cfd293ea579a46783f424371c49c579b-webp-catalog_233.jpg', 'Chất liệu cao cấp\r\nThiết kế hợp thời trang\r\nPhù hợp nhiều phong cách', NULL, 0, 1, 2, 500000, 0, '2017-04-25 08:01:28', '2017-04-25 08:01:28', 6, 0),
('Giày nữ', 'giay-nu', 2, 5300000, 19, 2, '12-min-0ea01181-833e-44a2-b159-e74819794d38.jpg', 'Tốt', NULL, 0, 0, 1, 5200000, 3, '2017-04-25 08:02:04', '2017-04-25 08:02:04', 7, 0),
('Giày nam bệt', 'giay-nam-bet', 2, 1900000, 17, 2, '7-min-b0397d03-c03d-4d05-9f1f-86d95f9d4f33.jpg', 'Tuyệt vời', NULL, 0, 0, 1, 1000000, 1, '2017-04-25 08:05:36', '2017-04-25 08:05:36', 8, 0),
(' GV02 (trắng)  ', 'gv02-trang', 9, 25000000, 24, 2, 'giay-nam-dep-2017-gv02-trang-3866-0298554-8027bc8b77072ed24f12bc270db46df8-webp-catalog_233.jpg', 'Sản phẩm được đảm bảo chất lượng\r\nGiá tốt nhất thị trường\r\nThiết kế thời trang\r\nChất liệu da cao cấp\r\nKiểu dáng phong cách\r\nĐộ bền cao\r\nDễ phối đồ', NULL, 0, 0, 2, 24000000, 0, '2017-04-25 08:10:53', '2017-04-25 08:10:53', 9, 0),
('Sandal 3 quai ngang nam thời trang Everest', 'sandal-3-quai-ngang-nam-thoi-trang-everest', 8, 13000000, 11, 1, 'giay-sandal-3-quai-ngang-nam-thoi-trang-everest-eve01-den-phoi-trang-6179-2773852-9207395504e8f5607ef619c2c5f87be3-webp-catalog_233.jpg', 'Thiết kế tinh tế thời trang\r\nMàu sắc nổi bật , phong cách\r\nChất liệu cao cấp , êm ái , chắc chắn\r\nKiểu dáng phong phú hiện đại\r\nThích hợp sử dụng hằng ngày , đa năng\r\nDễ dàng phối trang phục ', NULL, 0, 0, 3, 12000000, 1, '2017-04-25 08:12:39', '2017-04-25 08:12:39', 10, 0),
('PETTINO GV01 (TRẮNG)', 'pettino-gv01-trang', 9, 1800000, 28, 2, 'giay-vai-nam-pettino-gv01-trang-3697-2457893-cb6fdc5a3d4657c77e487b67380c4df4-webp-catalog_233.jpg', 'Sản phẩm được đảm bảo chất lượng\r\nGiá tốt nhất thị trường\r\nThiết kế thời trang\r\nChất liệu vải cao cấp\r\nKiểu dáng phong cách\r\nĐộ bền cao\r\nDễ phối đồ\r\n', NULL, 1, 0, 1, 1100000, 2, '2017-04-25 08:16:47', '2017-04-25 08:16:47', 11, 0),
('Giày cao cổ 10', 'giay-cao-co-10', 5, 240000, 20, 0, '9-min.jpg', 'Chất liệu cao cấp\r\nKiểu dáng thời trang\r\nDễ dàng phối với nhiều trang phục', NULL, 1, 0, 1, 190000, 0, '2017-04-26 19:07:50', '2017-04-26 19:07:50', 12, 0),
('Giày cao cổ 2017', 'giay-cao-co-2017', 5, 300000, 0, 1, '13-min.jpg', 'Chất liệu bền đẹp\r\nAn toàn cho người dung\r\nKiểu dáng thời trang cá tính\r\nDễ dàng phối trang phục', NULL, 0, 1, 1, 250000, 2, '2017-04-26 19:10:45', '2017-04-26 19:10:45', 13, 0),
('Giày thể thao nam Biti\'s Hunter', 'giay-the-thao-nam-bitis-hunter', 1, 2000000, -11, 10, 'xuong-cung-cap-mua-ban-buon-giay-dep-nam-nu-si-dep-gia-re-tphcm-1.jpg', 'Công nghệ Liteknit với quai dệt có lỗ thoát khí thông thoáng\r\nPhần đế từ chất liệu phylon siêu nhẹ\r\nĐế tiếp đất từ chất liệu cao su cao cấp\r\nThiết kế thời trang, phong cách năng động', NULL, 1, 0, 1, 1000000, 2, '2017-04-27 17:01:24', '2017-04-27 17:01:24', 15, 0),
('Giày Tây Da Nam Kiểu Xỏ Zapas', 'giay-tay-da-nam-kieu-xo-zapas', 1, 2000000, 10, 127, 'giay-tay-da-nam-kieu-xo-zapas-gt005-mau-den-1328-6705302-c33803f0df24a2758cc0cca7062b42ac-webp-catalog_233.jpg', 'Chất liệu cao cấp\r\nKiểu dáng thời trang\r\nDễ dàng phối với nhiều trang phục', NULL, 0, 0, 1, 1000000, 0, '2017-05-01 17:06:51', '2017-05-01 17:06:51', 16, 2),
('Sandal 3 quai ngang nam thời trang Everest', 'sandal-3-quai-ngang-nam-thoi-trang-everest', 5, 212, 12, 0, 'xuong-cung-cap-mua-ban-buon-giay-dep-nam-nu-si-dep-gia-re-tphcm-1.jpg', '12', NULL, 0, 0, 1, 121, 0, '2017-05-02 03:51:01', '2017-05-02 03:51:01', 17, 1),
('Giày đế xuồng kéo khóa hở gót', 'giay-de-xuong-keo-khoa-ho-got', 12, 300000, 15, 1, 'WoBAiR_simg_b5529c_250x250_maxb.jpg', 'Đi êm chân\r\nDễ phối đồ', NULL, 1, 0, 1, 150000, 0, '2017-05-04 06:24:10', '2017-05-04 06:24:10', 18, 1),
('Giày cao gót phối nơ cao cấp', 'giay-cao-got-phoi-no-cao-cap', 12, 400000, 10, 0, 'KiLMBe_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 8cm\r\n+ màu sắc: đen - nâu da bò', NULL, 1, 0, 1, 250000, 0, '2017-05-04 06:28:19', '2017-05-04 06:28:19', 19, 1),
('Giày cao gót quai cài thời trang - LN1190', 'giay-cao-got-quai-cai-thoi-trang---ln1190', 12, 250000, 20, 2, 'vKrsae_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: DA cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc: đỏ - kem', NULL, 0, 0, 1, 140000, 0, '2017-05-04 06:29:55', '2017-05-04 06:29:55', 20, 1),
('Giày gót vuông đính đá hàng nhập  - LN1188', 'giay-got-vuong-dinh-da-hang-nhap---ln1188', 12, 250000, 20, 5, 'lglSNb_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , gót đính đá\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: đen', NULL, 0, 0, 1, 100000, 0, '2017-05-04 06:31:34', '2017-05-04 06:31:34', 21, 1),
('Giày nơ gót vuông cao cấp - LN1168', 'giay-no-got-vuong-cao-cap---ln1168', 12, 250000, 25, 2, 'mpkPzW_simg_8fc8e2_599-599-0-0_cropf_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót : 5cm\r\n+ màu sắc: đen', NULL, 0, 0, 1, 100000, 0, '2017-05-04 06:33:17', '2017-05-04 06:33:17', 22, 1),
('Giày cao gót quai cài thời trang - LN1146', 'giay-cao-got-quai-cai-thoi-trang---ln1146', 12, 350000, 5, 1, 'HhmI4S_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: DA cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc: đỏ - kem', NULL, 0, 0, 1, 200000, 0, '2017-05-04 06:34:42', '2017-05-04 06:34:42', 23, 1),
('Giày gót vuông cột dây cao cấp - LN1139', 'giay-got-vuong-cot-day-cao-cap---ln1139', 12, 270000, 7, 0, 'cpTyZb_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: xám và đen', NULL, 0, 0, 1, 150000, 0, '2017-05-04 06:39:45', '2017-05-04 06:39:45', 24, 1),
(' Dép cao gót gót sọc vằn cao cấp - LN1107', 'dep-cao-got-got-soc-van-cao-cap---ln1107', 12, 250000, 6, 1, 'YmAZ07_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Da cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót : 12cm\r\n+ màu sắc: trắng và đen\r\n', NULL, 0, 0, 1, 140000, 0, '2017-05-04 06:50:43', '2017-05-04 06:50:43', 25, 1),
('Giày gót vuông đính đá thời trang - LN1081', 'giay-got-vuong-dinh-da-thoi-trang---ln1081', 12, 350000, 10, 2, 'bLQ6vg_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Simili cao cấp bền đẹp, chắc chắn cho bạn gái an tâm hơn khi di chuyển\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: vàng', NULL, 0, 0, 1, 180000, 0, '2017-05-04 06:52:02', '2017-05-04 06:52:02', 26, 1),
('Giày cao gót đính hạt - LN1067', 'giay-cao-got-dinh-hat---ln1067', 12, 400000, 10, 2, 'Ut9LVc_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: đen , kem', NULL, 0, 0, 1, 200000, 0, '2017-05-04 06:53:13', '2017-05-04 06:53:13', 27, 1),
(' Giày cao gót bít mũi cao cấp', 'giay-cao-got-bit-mui-cao-cap', 12, 300000, 15, 1, 'JhQpyy_simg_a6de53_687-687-0-0_cropf_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da lộn cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7 cm\r\n+ màu sắc: xám', NULL, 0, 0, 1, 160000, 0, '2017-05-04 06:54:28', '2017-05-04 06:54:28', 28, 1),
('Giày cao gót thời trang phối da rắn ', 'giay-cao-got-thoi-trang-phoi-da-ran', 12, 250000, 12, 1, 'k3WIgP_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: vàng', NULL, 1, 0, 1, 120000, 0, '2017-05-04 06:55:38', '2017-05-04 06:55:38', 29, 1),
('Giày cao gót nơ 2 tầng 5 phân', 'giay-cao-got-no-2-tang-5-phan', 12, 400000, 10, 5, '8WCELu_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Da bóng cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: màu đen - màu kem', NULL, 1, 0, 1, 160000, 0, '2017-05-04 06:57:29', '2017-05-04 06:57:29', 30, 1),
('Giày gót vuông kim loại quai trang trí', 'giay-got-vuong-kim-loai-quai-trang-tri', 12, 500000, 10, 6, 'AmLvkN_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Da cao cấp , đế kim loại\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: màu hồng phấn', NULL, 0, 0, 1, 200000, 0, '2017-05-04 06:58:44', '2017-05-04 06:58:44', 31, 1),
('Giày gót vuông quai ngang tết sam', 'giay-got-vuong-quai-ngang-tet-sam', 12, 420000, 7, 7, 'ktcNgS_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: màu đen - màu xám', NULL, 0, 0, 1, 170000, 0, '2017-05-04 07:00:08', '2017-05-04 07:00:08', 32, 1),
('giày cao gót nina kiểu xinh xắn ', 'giay-cao-got-nina-kieu-xinh-xan', 12, 400000, 10, 4, '53c1dc_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da cao cấp , đế cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: màu kem - màu đen', NULL, 0, 0, 1, 180000, 0, '2017-05-04 07:01:33', '2017-05-04 07:01:33', 33, 1),
('giày cao gót kim tuyến cao cấp lisa ', 'giay-cao-got-kim-tuyen-cao-cap-lisa', 12, 400000, 10, 1, '893117_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: simili + nhung cao cấp , đế cao su cứng.\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 12cm\r\n+ màu sắc: màu đỏ - màu đen', NULL, 0, 0, 1, 200000, 0, '2017-05-04 07:02:36', '2017-05-04 07:02:36', 34, 1),
('Giày cao gót quai soắn sành điệu', 'giay-cao-got-quai-soan-sanh-dieu', 12, 500000, 10, 6, '6525c4_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: nhung , gót cao su cứng.\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: màu xanh dương - màu đen', NULL, 0, 0, 1, 200000, 0, '2017-05-04 07:03:56', '2017-05-04 07:03:56', 35, 1),
('Giày da cao gót thời trang', 'giay-da-cao-got-thoi-trang', 12, 250000, 15, 1, 'd9dc14_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da cao cấp , gót cao su cứng.\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc: màu trắng - màu đen', NULL, 0, 0, 1, 120000, 0, '2017-05-04 07:05:01', '2017-05-04 07:05:01', 36, 1),
('giày cao gót nơ 2 tầng cao cấp', 'giay-cao-got-no-2-tang-cao-cap', 12, 380000, 10, 1, '2d8f74_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da cao cấp , gót cao su cứng.\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 8cm\r\n+ màu sắc: màu đen và kem ', NULL, 0, 0, 1, 200000, 0, '2017-05-04 07:06:00', '2017-05-04 07:06:00', 37, 1),
(' Giày đế thấp quai ngọc trai cao cấp ', 'giay-de-thap-quai-ngoc-trai-cao-cap', 13, 250000, 10, 1, 'UOUdSW_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: Nhung cao cấp , đế PU viền vàng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 2cm\r\n+ màu sắc: đen', NULL, 1, 0, 1, 150000, 0, '2017-05-04 07:08:05', '2017-05-04 07:08:05', 38, 1),
('Giày gót vuông phối nơ xinh', 'giay-got-vuong-phoi-no-xinh', 13, 400000, 10, 8, 'geBAg2_simg_b5529c_250x250_maxb.jpg', '+ chất liệu: da bóng , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 3cm\r\n+ màu sắc: xanh , hồng, đen, đỏ', NULL, 0, 0, 1, 150000, 0, '2017-05-04 07:09:20', '2017-05-04 07:09:20', 39, 1),
('Giày bít mũi quai ngọc trai hàng nhập', 'giay-bit-mui-quai-ngoc-trai-hang-nhap', 13, 250000, 15, 1, 'zfpL0C_simg_b5529c_250x250_maxb.jpg', ' chất liệu:  Da cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 2cm\r\n+ màu sắc: màu đen - màu xám - màu trắng', NULL, 0, 0, 1, 120000, 0, '2017-05-09 06:37:16', '2017-05-09 06:37:16', 40, 1),
('giày búp bê kim tuyến phối nơ xinh ', 'giay-bup-be-kim-tuyen-phoi-no-xinh', 13, 350000, 20, 4, '0361ea_simg_b5529c_250x250_maxb.jpg', ' chất liệu: simili kim tuyến cao cấp , đế cao su cứng.\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: màu vàng - màu bạc', NULL, 0, 0, 1, 150000, 0, '2017-05-09 06:39:04', '2017-05-09 06:39:04', 41, 1),
('giày búp bê caroline xinh xắn ', 'giay-bup-be-caroline-xinh-xan', 13, 270000, 12, 2, '91bb7c_simg_b5529c_250x250_maxb.jpg', ' chất liệu: da cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ màu sắc: màu đen và kem', NULL, 0, 0, 1, 140000, 0, '2017-05-09 06:40:43', '2017-05-09 06:40:43', 42, 1),
('Giày gót vuông phối nơ xinh', 'giay-got-vuong-phoi-no-xinh', 13, 400000, 20, 6, 'LMwJVg_simg_b5529c_250x250_maxb.jpg', 'chất liệu: da bóng , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 3cm\r\n+ màu sắc: xanh , hồng, đen, đỏ', NULL, 0, 0, 1, 140000, 0, '2017-05-09 06:44:43', '2017-05-09 06:44:43', 43, 1),
('Giày thể thao hoa Thêu cao cấp', 'giay-the-thao-hoa-theu-cao-cap', 13, 250000, 12, 1, 'x1yhxC_simg_b5529c_250x250_maxb.jpg', 'chất liệu: da cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 3cm\r\n+ màu sắc: trắng và đen', NULL, 0, 0, 1, 140000, 0, '2017-05-09 06:55:06', '2017-05-09 06:55:06', 44, 1),
('Giày mọi nữ đế kết nơ chuông ', 'giay-moi-nu-de-ket-no-chuong', 13, 400000, 5, 127, 'ldXPRS_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Nhung cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 2cm\r\n+ màu sắc: nâu bò - đen', NULL, 0, 0, 1, 140000, 0, '2017-05-09 07:02:13', '2017-05-09 07:02:13', 45, 1),
('Giày mọi in hình hàng nhập', 'giay-moi-in-hinh-hang-nhap', 13, 250000, 7, 1, 'BGpZXX_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 2cm\r\n+ màu sắc: màu đen - màu trắng', NULL, 0, 0, 1, 120000, 0, '2017-05-09 07:08:06', '2017-05-09 07:08:06', 46, 1),
('Giày vải nhập cao cấp ', 'giay-vai-nhap-cao-cap', 13, 420000, 5, 127, 'gK4WeV_simg_b5529c_250x250_maxb.jpg', ' chất liệu: vải cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 2cm\r\n+ màu sắc: trắng , đen , xám , hồng', NULL, 0, 0, 1, 150000, 0, '2017-05-09 07:12:47', '2017-05-09 07:12:47', 47, 1),
('Giày sandal nữ quai vàng đế đính đá', 'giay-sandal-nu-quai-vang-de-dinh-da', 13, 2500000, 20, 2, 'GFKwEU_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Nhung cao cấp , đế PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 2cm\r\n+ màu sắc: đen', NULL, 1, 0, 1, 160000, 0, '2017-05-09 07:14:14', '2017-05-09 07:14:14', 48, 1),
('Giày Sandal quai chéo San San hàng nhập', 'giay-sandal-quai-cheo-san-san-hang-nhap', 13, 260000, 7, 4, 'TPeTIC_simg_fd15df_532-532-0-0_cropf_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Simili kim tuyến , đế cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 3cm\r\n+ màu sắc: màu vàng', NULL, 0, 0, 1, 100000, 0, '2017-05-09 07:16:03', '2017-05-09 07:16:03', 49, 1),
('dép đế đúc sọc vằn cao cấp', 'dep-de-duc-soc-van-cao-cap', 15, 170000, 5, 1, 'b62900_simg_a2dfa1_720-720-0-0_cropf_simg_b5529c_250x250_maxb.jpg', 'chất liệu: simili cao cấp , đế đúc PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc: màu đen sọc trắng', NULL, 0, 0, 1, 100000, 0, '2017-05-09 07:33:15', '2017-05-09 07:33:15', 50, 1),
('dép đế xuồng quai bàng lớn hàng xuất ', 'dep-de-xuong-quai-bang-lon-hang-xuat', 15, 200000, 20, 2, '829a5b_simg_b5529c_250x250_maxb (1).jpg', 'chất liệu: vải cao cấp , đế cói cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 10cm\r\n+ màu sắc: màu đen', NULL, 0, 0, 1, 80000, 0, '2017-05-09 07:43:29', '2017-05-09 07:43:29', 51, 1),
('Dép đế xuồng vân gỗ nơ hoa', 'dep-de-xuong-van-go-no-hoa', 15, 200000, 10, 2, 'u61Egb_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Vải cao cấp , đế vân gỗ\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 5cm\r\n+ màu sắc: đen - kem - đỏ', NULL, 0, 0, 1, 100000, 0, '2017-05-09 07:51:16', '2017-05-09 07:51:16', 52, 1),
('Dép cao gót thêu hoa hồng ', 'dep-cao-got-theu-hoa-hong', 15, 150000, 12, 1, '4u3TyM_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Vải cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế: 5cm\r\n+ màu sắc: đen', NULL, 0, 0, 1, 70000, 0, '2017-05-09 07:53:55', '2017-05-09 07:53:55', 53, 1),
(' Dép cao gót nơ đính hạt ', 'dep-cao-got-no-dinh-hat', 15, 300000, 10, 2, 'Jk8Mn8_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , gót PU\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót : 10cm\r\n+ màu sắc: đen - xanh', NULL, 0, 0, 1, 150000, 0, '2017-05-09 07:59:19', '2017-05-09 07:59:19', 54, 1),
('Dép cao gót kiểu cao cấp', 'dep-cao-got-kieu-cao-cap', 15, 300000, 12, 2, 'pyfteB_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , gót kiểu giống hình\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 12cm\r\n+ màu sắc: trắng và đen', NULL, 0, 0, 1, 140000, 0, '2017-05-09 08:01:18', '2017-05-09 08:01:18', 55, 1),
(' Dép da cao gót hàng VNXK', 'dep-da-cao-got-hang-vnxk', 15, 200000, 10, 1, 'NCcGgr_simg_cfae48_712-712-0-0_cropf_simg_b5529c_250x250_maxb.jpg', 'chất liệu: da PU cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc:  đen , vàng , hồng', NULL, 0, 0, 1, 129000, 0, '2017-05-09 08:03:14', '2017-05-09 08:03:14', 56, 1),
('Dép da đính đá cao cấp', 'dep-da-dinh-da-cao-cap', 15, 200000, 5, 2, 'HkaiES_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , đế cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5cm\r\n+ màu sắc: màu đen - màu trắng', NULL, 0, 0, 1, 100000, 0, '2017-05-09 08:07:33', '2017-05-09 08:07:33', 57, 1),
('Dép khoét chữ V đính đá gót kim loại hàng nhập', 'dep-khoet-chu-v-dinh-da-got-kim-loai-hang-nhap', 15, 200000, 20, 5, '7aggcx_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , gót kim loại\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao : 5cm\r\n+ màu sắc: màu đen - màu trắng', NULL, 0, 0, 1, 100000, 0, '2017-05-09 08:08:31', '2017-05-09 08:08:31', 58, 1),
('Dép cao gót quai trong bảng lớn cao cấp', 'dep-cao-got-quai-trong-bang-lon-cao-cap', 15, 250000, 12, 4, '1llBDi_simg_0e03c3_589-589-0-0_cropf_simg_b5529c_250x250_maxb.jpg', ' chất liệu: nhựa cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 6cm\r\n+ màu sắc: đen', NULL, 0, 0, 1, 100000, 0, '2017-05-09 08:10:22', '2017-05-09 08:10:22', 59, 1),
('Dép gót vuông kim loại quai ngang da bóng', 'dep-got-vuong-kim-loai-quai-ngang-da-bong', 15, 250000, 12, 2, 'OVC4k3_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da bóng , gót kim loại\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót : 5cm\r\n+ màu sắc: màu đen', NULL, 0, 0, 1, 120000, 0, '2017-05-09 08:12:07', '2017-05-09 08:12:07', 60, 1),
('Dép gót vuông bít mũi nơ cao cấp', 'dep-got-vuong-bit-mui-no-cao-cap', 15, 180000, 12, 1, 'DYQ7Cx_simg_b5529c_250x250_maxb.jpg', 'chất liệu: Da cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao đế : 5cm\r\n+ màu sắc: màu đen - màu hồng', NULL, 0, 0, 1, 90000, 0, '2017-05-09 08:13:10', '2017-05-09 08:13:10', 61, 1),
('Dép cao gót kết đá sang chảnh', 'dep-cao-got-ket-da-sang-chanh', 15, 300000, 7, 3, 'keKoRa_simg_95b9b7_550-550-0-0_cropf_simg_b5529c_250x250_maxb.jpg', ' chất liệu: Simili cao cấp , đế cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 7cm\r\n+ màu sắc: màu đen - màu vàng', NULL, 0, 0, 1, 150000, 0, '2017-05-09 08:14:33', '2017-05-09 08:14:33', 62, 1),
('Combo 10 miếng lót giày tăng chiều cao', 'combo-10-mieng-lot-giay-tang-chieu-cao', 6, 30000, 20, 1, '3f6aee_simg_b5529c_250x250_maxb.jpg', ' Tên sản phẩm: Combo 10 miếng lót giày tăng chiều cao - K9344\r\n- Chất liệu: silicon - Tăng cao 4cm.\r\n- Màu sắc: trắng trong suốt\r\n- Kích thước hộp: 21 x 7 x 3 cm\r\n- Thích hợp cho mang giày tây - bata, cả nam lẫn nữ', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:23:08', '2017-05-09 16:23:08', 63, 1),
('Lót giày tăng chiều cao 6cm đệm khí 3 lớp ', 'lot-giay-tang-chieu-cao-6cm-dem-khi-3-lop', 6, 40000, 40, 2, 'WfpXqA_simg_b5529c_250x250_maxb.jpg', 'Phù hợp với nhiều loại giày nam, nữ\r\nTăng chiều cao từ 3 đến 6cm tùy ý﻿ thích\r\nGiúp tăng size giày hiệu quả\r\nLớp đệm khí tạo cảm giác êm ái\r\nCó tác dụng thoáng khí, kiểm soát mồ hôi chân...', NULL, 0, 0, 1, 12000, 0, '2017-05-09 16:24:58', '2017-05-09 16:24:58', 64, 1),
('Miếng Lót Giày Tăng Chiều Cao 3 Lớp 6cm', 'mieng-lot-giay-tang-chieu-cao-3-lop-6cm', 6, 50000, 20, 4, 'nXGY30_simg_b5529c_250x250_maxb.jpg', 'Thích hợp với nhiều loại giày nam nữ\r\n- Chất liệu : cao su\r\n- Số lớp: 3 lớp\r\n- Cao : 6cm', NULL, 0, 0, 1, 15000, 0, '2017-05-09 16:26:41', '2017-05-09 16:26:41', 65, 1),
('Lót Giầy Tăng Chiều Cao', 'lot-giay-tang-chieu-cao', 6, 44000, 40, 2, 'lgq7oK_simg_b5529c_250x250_maxb.jpg', 'Chất liệu: cao su \r\nSize: lót giầy tăng chiều cao loại nửa bàn chân Free Size\r\nKiểu dáng: nửa bàn có đệm khí 3 nấc tháo lắp dễ dàng để thay đổi độ cao từ 2,5cm-4cm-6cm\r\nSử dụng: chuyên dùng cho các SP giày thể thao, giày cao cổ còn rộng thoải mái ', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:28:13', '2017-05-09 16:28:13', 66, 1),
('Bộ 2 cặp miếng đệm giày cao gót V5', 'bo-2-cap-mieng-dem-giay-cao-got-v5', 6, 20000, 20, 2, 'W681iJ_simg_b5529c_250x250_maxb.jpg', 'Miếng đệm lót này phù hợp với mọi loại giày dép và có thể làm sạch dễ dàng để tái sử dụng mà không bị biến dạng.\r\n \r\n- Kích thước miếng đệm: 6 x 0.35 x 9 (cm)\r\n- Màu: silicon trong suốt.', NULL, 0, 0, 1, 5000, 0, '2017-05-09 16:30:24', '2017-05-09 16:30:24', 67, 1),
('Lót giày tăng chiều cao silicon 4,5cm ', 'lot-giay-tang-chieu-cao-silicon-45cm', 6, 20000, 20, 1, 'd3yH6R_simg_b5529c_250x250_maxb.jpg', ' Bề mặt được bao phủ lớp nhung mịn có tác dụng êm chân\r\n- Có thể điều chỉnh độ cao theo ý muốn\r\n- Thích hợp với nhiều loại giày nam nữ\r\n- Chất liệu : silicon\r\n- Số lớp: 5 lớp\r\n- Cao : 4.5cm\r\n', NULL, 0, 0, 1, 7000, 0, '2017-05-09 16:31:47', '2017-05-09 16:31:47', 68, 1),
('Bộ 08 miếng lót giày dép silicon', 'bo-08-mieng-lot-giay-dep-silicon', 6, 40000, 10, 4, 'bjXB5H_simg_b5529c_250x250_maxb.jpg', ' Combo 8 miếng lót giày giày kín đáo, khéo léo giúp người dùng sở hữu chiều cao như mong muốn và tự tin sải bước.\r\n- Chất liệu silicon mềm mại, công nghệ chống trơn trượt cho chân cảm giác dễ chịu.\r\n- Giảm ma sát của bàn chân trước nơi chịu đựng toàn bộ áp lực của cơ thể khi mang giày cao gót và miếng lót giúp bảo vệ gót chân khi mang các loại giày.\r\n- Làm sạch dễ dàng\r\n- Miếng silicon trong suốt nên bảo đảm vẫn giữ nguyên vẹn vẻ đẹp đôi giày của bạn.     \r\n- Dễ dàng để tái sử dụng mà không bị biến dạng.\r\n- Thích hợp với nhiều loại giày nam và nữ.\r\n- Phù hợp với nhiều size giày, dép, bạn thoải mái sử dụng.', NULL, 0, 0, 1, 12000, 0, '2017-05-09 16:33:21', '2017-05-09 16:33:21', 69, 1),
('Lót giày tăng chiều cao silicon 4cm', 'lot-giay-tang-chieu-cao-silicon-4cm', 6, 40000, 10, 4, 'JL26F5_simg_b5529c_250x250_maxb.jpg', 'Bề mặt được bao phủ lớp nhung mịn có tác dụng êm chân\r\n- Có thể điều chỉnh độ cao theo ý muốn\r\n- Thích hợp với nhiều loại giày nam nữ\r\n- Màu Sắc : Hồng họa tiết, vàng nhạt họa tiết, xanh lính, hồng nhạt, xanh lam nhạt\r\n- Chất liệu : silicon trong suốt\r\n- Số lớp: 2 lớp\r\n- Cao : 4cm', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:34:54', '2017-05-09 16:34:54', 70, 1),
('Combo 5 Đôi Vớ Lười Hình Mèo Xinh Xắn', 'combo-5-doi-vo-luoi-hinh-meo-xinh-xan', 7, 40000, 40, 2, 'Rzj2M5_simg_b5529c_250x250_maxb.jpg', 'Combo 5 đôi vớ lười hình mèo xinh xắn thiết kế đơn giản, vừa vặn tới cổ chân, tạo cảm giác dễ chịu, thoải mái khi mang.\r\n- Chuyên dành cho những bạn thích mang vớ trong nhà, những đôi giày bata…mang lại nét thời trang, cá tính nhưng không kém phần dễ thương, đáng yêu.\r\n- Kiểu dáng ôm sát chân giúp dễ dàng di chuyển mà không trượt ngã.\r\n- Chất liệu thun co giãn, thấm hút mồ hôi nhanh, thoáng mát cho đôi chân, cảm giác êm ái, mềm mại cho bước chân của bạn.\r\n- Màu sắc đa dạng giúp bạn có nhiều lựa chọn, dễ phối với nhiều loại giày khác nhau.', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:39:47', '2017-05-09 16:39:47', 71, 1),
('Tất Hàn - Combo 3 đôi', 'tat-han---combo-3-doi', 7, 30000, 10, 2, 'asnDbA_simg_b5529c_250x250_maxb.jpg', 'Phù hợp cho cả các bạn nữ lẫn các bạn nam , hay làm tất đôi cute .', NULL, 0, 0, 1, 12000, 0, '2017-05-09 16:41:26', '2017-05-09 16:41:26', 72, 1),
('Vớ thủy thủ 2 sọc Hàn Quốc ', 'vo-thuy-thu-2-soc-han-quoc', 7, 15000, 40, 1, 'NAQzPN_simg_b5529c_250x250_maxb.jpg', 'Vớ thủy thủ 2 sọc là mẫu vớ HOT nhất 2016 \r\nMang phong cách Nhật Hàn .', NULL, 0, 0, 1, 5000, 0, '2017-05-09 16:42:51', '2017-05-09 16:42:51', 73, 1),
('Tất lười khử mùi hôi nam,nữ', 'tat-luoi-khu-mui-hoi-namnu', 7, 30000, 20, 127, 'qGgkTQ_simg_b5529c_250x250_maxb.jpg', 'Thiết kế ôm khít chân, không bị lộ khi đi giày lười. \r\nChất vải co giãn, thoáng mát, khử mùi hôi, thích hợp dùng trong mùa hè', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:44:48', '2017-05-09 16:44:48', 74, 1),
('Combo 3 cặp Lót giày êm chân ', 'combo-3-cap-lot-giay-em-chan', 7, 50000, 20, 6, '86adbf_simg_b5529c_250x250_maxb.jpg', 'Lót giày êm chân giảm size 50k/3 cặp dày 0.4mm (hoặc 4 cặp mỏng 0.2mm)\r\nmàu:ngẫu nhiên tùy vào từng đợt sản xuất\r\n\r\nCHất liệu: mút ép vải', NULL, 0, 0, 1, 10000, 0, '2017-05-09 16:46:10', '2017-05-09 16:46:10', 75, 1),
('Giày da cao cấp - Sang Trọng, Lịch lãm', 'giay-da-cao-cap---sang-trong-lich-lam', 8, 600000, 10, 2, 'zHJL5N_simg_821e47_736-736-0-0_cropf_simg_b5529c_250x250_maxb.png', ' -Chất liệu: Da Thật/Cao su\r\n    -Chiều cao: 3Cm', NULL, 0, 0, 1, 200000, 0, '2017-05-09 16:59:02', '2017-05-09 16:59:02', 76, 1),
('Giày da thật, đế khâu thời trang ', 'giay-da-that-de-khau-thoi-trang', 8, 500000, 5, 1, 'MWzgbz_simg_b5529c_250x250_maxb.png', 'Tên sản phẩm: Giày da thật, đế khâu thời trang\r\n    -Mã sản phẩm: G-251\r\n    -Chất liệu: Da Thật/Cao su\r\n    -Chiều cao: 3Cm', NULL, 0, 0, 1, 240000, 0, '2017-05-09 17:00:16', '2017-05-09 17:00:16', 77, 1),
('Giày da công sở sang trọng, lịch lãm ', 'giay-da-cong-so-sang-trong-lich-lam', 8, 400000, 10, 2, '90f5a1_simg_b5529c_250x250_maxb.jpg', '- Loại sản phẩm: Giày tây da bóng\r\n- Chất liệu: Da bò thật 100% \r\n- Đế cao su đúc bền chắc, chống trơn trượt\r\n- Màu sắc: Đen (cam kết giống y hình thật)\r\n- Kích thước: 38 - 43\r\n', NULL, 0, 0, 1, 160000, 0, '2017-05-09 17:01:36', '2017-05-09 17:01:36', 78, 1),
('Giầy nam sành điệu ', 'giay-nam-sanh-dieu', 8, 400000, 10, 4, '6b5d95_simg_a2dfa1_720-720-0-0_cropf_simg_b5529c_250x250_maxb (1).jpg', ' Hàng nhập cao cấp. Shop cam kết không bán hàng nhái, hàng gia công kém chất lượng. Hàng như hình.\r\n ', NULL, 0, 0, 1, 140000, 0, '2017-05-09 17:04:26', '2017-05-09 17:04:26', 79, 1),
('Giầy nam phong cách', 'giay-nam-phong-cach', 8, 600000, 15, 5, 'ffa076_simg_a52c9b_546-546-91-93_cropf_simg_b5529c_250x250_maxb.jpg', ' Hàng nhập cao cấp. Shop cam kết không bán hàng nhái, hàng gia công kém chất lượng. Hàng như hình.\r\n ', NULL, 1, 0, 1, 200000, 0, '2017-05-09 17:05:34', '2017-05-09 17:05:34', 80, 1),
('giày nam da thật - cá tính, năng động', 'giay-nam-da-that---ca-tinh-nang-dong', 8, 700000, 10, 6, 'JbEPfk_simg_b5529c_250x250_maxb.jpg', ' Phong cách: Trẻ trung, năng động\r\n+ Giới tính: Nam\r\n+ Chất liệu: Da thật\r\n+ Chất  liệu đế: Cao su thiên nhiên. Chống trượt rất tốt. Đi lại nhẹ nhàng tạo cảm giác êm ái.\r\n+ Kiểu giày: giày buộc dây\r\n+ Hoa văn: Trơn\r\n+ Kiểu đế: Đế cao\r\n+ Chiều cao đế giày: chiều cao 3cm\r\n+ Thiết kế: thoáng khí mềm mượt. Chống ăn mòn giúp cho đôi giày của bạn luôn như mới.\r\n+ Kiểu dáng: Mẫu giày mới nhất 2017, mẫu mã cực đẹp.', NULL, 1, 0, 1, 250000, 0, '2017-05-09 17:07:09', '2017-05-09 17:07:09', 81, 1),
('GIÀY DA NAM MANARODA ĐEN ', 'giay-da-nam-manaroda-den', 8, 500000, 6, 2, 'AEZfxJ_simg_b5529c_250x250_maxb.jpg', 'Màu đen\r\nĐế cao su. \r\nBảo hành: 01 năm', NULL, 0, 0, 1, 270000, 0, '2017-05-09 17:08:30', '2017-05-09 17:08:30', 82, 1),
(' Giầy nam cao cấp hàng nhập', 'giay-nam-cao-cap-hang-nhap', 8, 400000, 7, 6, '7a5922_simg_b5529c_250x250_maxb.jpg', '+ Chất liệu : da bò\r\n+ Màu sắc : như hình', NULL, 0, 0, 1, 180000, 0, '2017-05-09 17:11:11', '2017-05-09 17:11:11', 83, 1),
('Giày Tây Nam Da Bò Cao Cấp', 'giay-tay-nam-da-bo-cao-cap', 8, 800000, 4, 5, 'CoJGn6_simg_b5529c_250x250_maxb.jpg', ' Chất liệu : da bò\r\n+ Màu sắc : như hình', NULL, 0, 0, 1, 300000, 0, '2017-05-09 17:13:33', '2017-05-09 17:13:33', 84, 1),
('Giày Da Nam Cao Cấp ROSI GS26', 'giay-da-nam-cao-cap-rosi-gs26', 8, 600000, 10, 7, 'lFS3m5_simg_1753ab_503-503-152-31_cropf_simg_616081_502-502-0-0_cropf_simg_b5529c_250x250_maxb.jpg', '- Chất liệu: Da bò thật 100% \r\n- Đế: Phíp\r\n- Màu sắc: NÂU (cam kết giống y hình thật)\r\n- Bảo hành: 12 tháng', NULL, 0, 0, 1, 200000, 0, '2017-05-10 02:35:45', '2017-05-10 02:35:45', 85, 1),
('Giày Da Lộn', 'giay-da-lon', 8, 500000, 7, 1, 'XgXwho_simg_b5529c_250x250_maxb.jpg', 'MÀU SẮC : Xanh\r\nCHẤT LIỆU : Da Lộn', NULL, 0, 0, 1, 200000, 0, '2017-05-10 02:40:49', '2017-05-10 02:40:49', 86, 1),
('Giày Nam - DGN-82 ', 'giay-nam---dgn-82', 8, 500000, 5, 4, 'qWdi1s_simg_b5529c_250x250_maxb.png', ' Chất liệu : da bò\r\n+ Màu sắc : như hình', NULL, 0, 0, 1, 150000, 0, '2017-05-10 02:44:12', '2017-05-10 02:44:12', 87, 1),
('Giày Nam Xám Da ', 'giay-nam-xam-da', 5, 450000, 10, 4, 'NfjymX_simg_b5529c_250x250_maxb.png', 'ĐẶC ĐIỂM NỔI BẬT\r\nChất liệu cao cấp, sản xuất theo công nghệ hiện đại nhất hiện nay, tạo cảm giác êm hơn khi tiếp đất, thoải mái cho người mang.\r\nKiểu dáng thiết kế cá tính, thể hiện phong cách nổi bật.\r\nĐộ bền cao.', NULL, 1, 0, 1, 190000, 0, '2017-05-10 02:47:21', '2017-05-10 02:47:21', 88, 1),
('Giày Da Trắng Nam', 'giay-da-trang-nam', 5, 450000, 5, 2, 'b1ibey_simg_b5529c_250x250_maxb.png', ' Tất cả SP của Shop đều có Hộp\r\n\r\n- Sản phẩm được đổi Size thoải mái đến khi vừa ý.\r\n', NULL, 0, 0, 1, 200000, 0, '2017-05-10 02:48:35', '2017-05-10 02:48:35', 89, 1),
('Giày Nam Đen Đế Trắng', 'giay-nam-den-de-trang', 5, 350000, 10, 2, 'oltWOb_simg_b5529c_250x250_maxb.png', ' Tất cả SP của Shop đều có Hộp\r\n \r\n- Sản phẩm của Shop CAM KẾT 100% như ảnh. Nếu khác TẶNG luôn đôi giày\r\n \r\n- Sản phẩm được đổi Size thoải mái đến khi vừa ý.', NULL, 0, 0, 1, 150000, 0, '2017-05-10 02:49:53', '2017-05-10 02:49:53', 90, 1),
('Giày Bata Thể Thao Nam Da Bóng', 'giay-bata-the-thao-nam-da-bong', 5, 400000, 10, 2, 'OjFy0K_simg_b5529c_250x250_maxb.png', ' Màu sắc: Trắng, Đen\r\n - Chất liệu: vải lưới nhẹ, nylon, cao su và da lộn tổng hợp.', NULL, 0, 0, 1, 170000, 0, '2017-05-10 02:51:16', '2017-05-10 02:51:16', 91, 1),
('Giày sneaker', 'giay-sneaker', 5, 200000, 10, 2, 'g7eOMC_simg_b5529c_250x250_maxb.jpg', 'MÀU SẮC :xám, xanh\r\nCHẤT LIỆU : vải bò', NULL, 0, 0, 1, 100000, 0, '2017-05-10 02:53:23', '2017-05-10 02:53:23', 92, 1),
('Giày sneaker da thời trang', 'giay-sneaker-da-thoi-trang', 5, 400000, 14, 5, 'wYAQcn_simg_b5529c_250x250_maxb.jpg', 'Giày Da Thật Cao Cấp - Sang Trọng, Tinh Tế \r\nĐặc điểm nổi bật của mẫu Giày sneaker da thời trang\r\n+ Đế cao su chống trượt rất tốt. Đi lại nhẹ nhàng tạo cảm giác êm ái. \r\n+ Trọng lượng nhẹ, thích hợp cho việc di chuyển dễ dàng \r\n+ Thiết kế thoáng khí, hấp thụ sốc khi có va chạm mạnh, chống ăn mòn giúp cho đôi giày của bạn luôn như mới. \r\n+ Kiểu dáng cực đẹp, mẫu giày hot nhất năm 2016. \r\n+ Phù hợp đi chơi, đi làm, hoặc đi du lịch. ', NULL, 0, 0, 1, 170000, 0, '2017-05-10 02:54:40', '2017-05-10 02:54:40', 93, 1),
('GIÀY THỂ THAO THỜI TRANG ', 'giay-the-thao-thoi-trang', 5, 250000, 10, 127, 'pGQKtp_simg_b5dc53_684-684-67-0_cropf_simg_b5529c_250x250_maxb.jpg', 'Màu: có nhiều màu để chọn lựa: màu trắng, xám, đen, trắng gold, trắng silver\r\nChất liệu: PU cao cấp, mặt trong lót vải cotton tạo cảm giác thoải mái khi mang.\r\nĐế: đế cùng màu với mặt giày tạo sự đồng bộ. Đế cao su lưu hóa giúp nâng đỡ bàn chân tốt hơn, tránh trơn trượt khi di chuyển.\r\nSản phẩm khác của thương hiệu Sutumi: https://www.sendo.vn/shop/aqua-sportwear/\r\nThiết kế: kiểu dáng trẻ trung, cá tính dễ phối với mọi trang phục giúp bạn tự tin khi xuống phố.', NULL, 0, 0, 1, 100000, 0, '2017-05-10 03:00:50', '2017-05-10 03:00:50', 94, 1),
('giày nam veto chính hãng', 'giay-nam-veto-chinh-hang', 9, 200000, 10, 2, 'blF9vp_simg_9d7ac0_789-789-0-0_cropf_simg_b5529c_250x250_maxb.jpg', 'Thương hiệu : Kito\r\n- Xuất xứ : Thailand\r\n- Màu sắc : Nâu, Đen, Tím\r\n- Size : 36 - 37 - 38 - 39\r\n- Chất liệu : Cao su, xốp cao cấp', NULL, 0, 0, 1, 100000, 0, '2017-05-10 03:04:19', '2017-05-10 03:04:19', 95, 1),
('andal quai ngang kito', 'andal-quai-ngang-kito', 9, 280000, 10, 2, 'zbRRep_simg_b5529c_250x250_maxb.jpg', 'Thương hiệu : Kito\r\n- Xuất xứ : Thailand\r\n- Màu sắc : Nâu, Đen, Tím\r\n- Size : 36 - 37 - 38 - 39\r\n- Chất liệu : Cao su, xốp cao cấp', NULL, 0, 0, 1, 100000, 0, '2017-05-10 03:05:22', '2017-05-10 03:05:22', 96, 1),
('Sandal Vento 4538 chính hãng', 'sandal-vento-4538-chinh-hang', 9, 240000, 10, 1, 'XFREF1_simg_b5529c_250x250_maxb.jpg', 'Thương hiệu : Kito\r\n- Xuất xứ : Thailand\r\n- Màu sắc : Nâu, Đen, Tím\r\n- Size : 36 - 37 - 38 - 39\r\n- Chất liệu : Cao su, xốp cao cấp\r\n- Bảo hành : 6 Tháng', NULL, 0, 0, 1, 150000, 0, '2017-05-10 03:08:02', '2017-05-10 03:08:02', 97, 1),
('Giầy da lộn nam', 'giay-da-lon-nam', 8, 500000, 10, 2, 'RvZaVt_simg_b5529c_250x250_maxb.jpg', ' Giày da nam  với thiết kế trẻ trung, sang trọng, lịch lãm\r\n·         Kiểu giàyda lộn buộc dâyi thời trang, tiện dụng\r\n\r\n·         Giày thiết kế với đường may tỉ mỉ chắc chắn\r\n          Dễ phối với các loại quần jeans hay quần âu', NULL, 0, 0, 1, 200000, 0, '2017-05-10 03:10:25', '2017-05-10 03:10:25', 98, 1),
('Giầy tây nam cao cấp mũi 3D', 'giay-tay-nam-cao-cap-mui-3d', 8, 800000, 5, 5, 'QlHpWB_simg_b5529c_250x250_maxb.jpg', 'Giày da nam  với thiết kế trẻ trung, sang trọng, lịch lãm\r\nKiểu giày lười, giày xỏ thời trang, tiện dụng\r\nGiày thiết kế với đường may tỉ mỉ chắc chắn\r\nDễ phối với các loại quần jeans, quần âu, quần kaki,', NULL, 0, 0, 1, 300000, 0, '2017-05-10 03:29:36', '2017-05-10 03:29:36', 99, 1),
('GIAY NAM DA LỘN CỰC CHẤT', 'giay-nam-da-lon-cuc-chat', 8, 350000, 10, 0, 'rehr57_simg_b5529c_250x250_maxb.jpg', 'Giày da nam  với thiết kế trẻ trung, sang trọng, lịch lãm\r\nKiểu giày da lộn buộc dây thời trang, tiện dụng\r\nGiày thiết kế với đường may tỉ mỉ chắc chắn\r\nDễ phối với các loại quần jeans hay quần âu', NULL, 0, 0, 1, 200000, 0, '2017-05-10 03:31:20', '2017-05-10 03:31:20', 100, 1),
('Giày da vân cá sấu ', 'giay-da-van-ca-sau', 8, 800000, 5, 0, 'J9p2gK_simg_b5529c_250x250_maxb.jpg', ' Chất liệu: Chất liệu vân sần cá sấu, đã được gia công tỉ mỉ, có độ bền đẹp cao\r\n+ Điểm nổi bật: Giày da nam GD1 thu hút với gam màu nâu da sần vân cá sấu độc lạ chưa từng có trong phong cách giày nam năm 2015.Với phong cách mới lạ, độc đáo, sành điệu và đẳng cấp nhất cho các đấng mày râu muốn thay đổi bản thân sang một diện mạo hoàn toàn mới sang trọng hơn chính. Giày da nam GD1 là đôi giày thời trang lý tưởng dành cho bạn.\r\n Giày da nam GD1 là sự lựa chọn hàng đầu cho những người yêu thích sự cá tính, trẻ trung và luôn muốn thay đổi bản thân mình.\r\nMix đồ: Giày da nam GD1 có thể kết hợp được với các trang phục như: quần kaki, âu, áo sơ mi, áo vest lịch lãm... Được sử dụng để làm nơi công sở, dự tiệc, họp hành hay tham dự các sự kiện quan trọng…\r\n+ Đế ngoài: Làm từ cao su nguyên chất 100%, êm nhẹ,có độ bám dính cao, độ ma sát cao', NULL, 0, 0, 1, 400000, 0, '2017-05-10 03:32:41', '2017-05-10 03:32:41', 101, 1),
('Giày cao gót hở mũi xinh xắn', 'giay-cao-got-ho-mui-xinh-xan', 12, 400000, 10, 2, 'FkM14X_simg_088bf9_673-673-64-0_cropf_simg_b5529c_250x250_maxb.png', 'Cao gót 7p nha khách yêu :-*:-*:-*\r\nGiảm giá chỉ còn 130k\r\nSize 35(36)-39\r\nChất da như hình :d', NULL, 0, 0, 1, 160000, 0, '2017-05-10 03:37:46', '2017-05-10 03:37:46', 102, 1),
('Giày cao gót cao cấp quai đá Korea ', 'giay-cao-got-cao-cap-quai-da-korea', 12, 450000, 16, 0, '1.jpg', ' CAM KẾT: CHẤT LƯỢNG - UY TÍN là trên hết, HÀNG CHUẨN ĐẸP là sự thật được hàng ngàn khách hàng trong & ngoài nước tin tưởng.\r\n✔ Free size dưới 56kg tùy chiều cao, INBOX ngay cân nặng và chiều cao của bạn để admin tư vấn thật kỹ. \r\n✔ Màu sắc có thể nhạt hoặc đậm hơn hình 1-5% do hiệu ứng ánh sáng khi chụp hình', NULL, 0, 0, 1, 200000, 0, '2017-05-10 03:39:33', '2017-05-10 03:39:33', 103, 1),
('CAO GÓT THÊU HOA ', 'cao-got-theu-hoa', 12, 400000, 10, 0, '2.jpg', '+ chất liệu: Nhung cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5 cm\r\n+ màu sắc: đen', NULL, 0, 0, 1, 170000, 0, '2017-05-10 03:41:27', '2017-05-10 03:41:27', 104, 1),
('Giày gót vuông 2 quai vàng thời trang ', 'giay-got-vuong-2-quai-vang-thoi-trang', 12, 400000, 10, 127, '3.jpg', ' chất liệu: Nhung cao cấp , gót cao su cứng\r\n+ hàng cao cấp, êm chân, đường chỉ may tinh tế.\r\n+ chiều cao gót: 5 cm\r\n+ màu sắc: đen', NULL, 0, 3, 1, 200000, 0, '2017-05-10 03:43:08', '2017-05-10 03:43:08', 105, 1),
('Giày da gót nhọn cao cấp Lady', 'giay-da-got-nhon-cao-cap-lady', 12, 300000, 9, 1, '7.jpg', 'Shop giày cao gót thời trang chất lượng, phong cách cá tính cho bạn luôn thấy tự tin năng động trước mọi người xung quanh, tự tin trong cuộc sống và trong các mối quan hệ. trong những buổi đi chơi hoặc đi tập thể dục làm đôi chân bạn thấy luôn thoải mái, việc tìm được đôi giày cao gót đẹp bắt mắt trên mạng sẽ giúp bạn tiết kiệm được thời gian so với đến shop giày nữ. với chất lượng và độ bền của đôi giày thể với shop chúng tôi thì bạn hãy yên tâm với chế dộ bảo hành tốt một đổi một trong vòng 6 tháng. Nếu bạn đang muốn tìm một đôi giày cao gót chất lượng và đẹp thì với shop giày cao gót Giày nữ nina sẽ là sự lựa chọn số tốt nhất bởi chính sách bán hàng và chính sách bảo hành được chúng tôi ưu tiên đặt lên hàng đầu.\r\nCách chọn giày hợp với chân', NULL, 0, 5, 1, 150000, 1, '2017-05-10 08:35:48', '2017-05-10 08:35:48', 106, 1),
('Giày cao gót quai cài trang trí ', 'giay-cao-got-quai-cai-trang-tri', 12, 400000, 9, 2, '8.jpg', '???? Giày cao gót giày nữ \r\nShop giày cao gót thời trang chất lượng, phong cách cá tính cho bạn luôn thấy tự tin năng động trước mọi người xung quanh, tự tin trong cuộc sống và trong các mối quan hệ. trong những buổi đi chơi hoặc đi tập thể dục làm đôi chân bạn thấy luôn thoải mái, việc tìm được đôi giày cao gót đẹp bắt mắt trên mạng sẽ giúp bạn tiết kiệm được thời gian so với đến shop giày nữ. với chất lượng và độ bền của đôi giày thể với shop chúng tôi thì bạn hãy yên tâm với chế dộ bảo hành tốt một đổi một trong vòng 6 tháng. Nếu bạn đang muốn tìm một đôi giày cao gót chất lượng và đẹp thì với shop giày cao gót Giày nữ nina sẽ là sự lựa chọn số tốt nhất bởi chính sách bán hàng và chính sách bảo hành được chúng tôi ưu tiên đặt lên hàng đầu. \r\nCách chọn giày hợp với chân \r\n➡ Bước 1: Chọn giày không có đệm mắt cá chân, vì giày này tốt cho việc sử dụng hàng ngày. Giày bóng rổ hay gót quá cao sẽ làm yếu phần mắt cá của bạn. \r\n➡ Bước 2: Giày có phần đế không quá hẹp. Đế giày nhỏ như 1 dấu chân sẽ làm phần tiếp xúc với mặt đất nhỏ đi, gây khó chịu và kém giữ thăng bằng lẫn ma sát \r\n➡ Bước 3: Chọn kiểu giày có thiết kế thông hơi hoặc chất liệu thoáng để không hút hay giữ ẩm \r\n➡ Bước 4: Uốn cong phần mũi giày. Khoảng 1/3 độ dài giày có thể uốn mềm dẻo, 2/3 còn lại cần cứng cáp và khó uốn. \r\n➡ Bước 5: Nắm phần mũi và gót giày, thử xoắn giày lại (quay 2 tay theo 2 chiều ngược nhau). Giày tốt sẽ không bị bóp méo và biến dạng. \r\ncách chọn giày phù hợp với size chân !', NULL, 0, 0, 1, 180000, 1, '2017-05-10 08:37:41', '2017-05-10 08:37:41', 107, 1),
('Giày cao cấp-giày cao gót màu da bò phối kem ', 'giay-cao-cap-giay-cao-got-mau-da-bo-phoi-kem', 12, 600000, 10, 8, 'c6D7Zm_simg_b5529c_250x250_maxb.jpg', '???? Giày cao gót giày nữ \r\nShop giày cao gót thời trang chất lượng, phong cách cá tính cho bạn luôn thấy tự tin năng động trước mọi người xung quanh, tự tin trong cuộc sống và trong các mối quan hệ. trong những buổi đi chơi hoặc đi tập thể dục làm đôi chân bạn thấy luôn thoải mái, việc tìm được đôi giày cao gót đẹp bắt mắt trên mạng sẽ giúp bạn tiết kiệm được thời gian so với đến shop giày nữ. với chất lượng và độ bền của đôi giày thể với shop chúng tôi thì bạn hãy yên tâm với chế dộ bảo hành tốt một đổi một trong vòng 6 tháng. Nếu bạn đang muốn tìm một đôi giày cao gót chất lượng và đẹp thì với shop giày cao gót Giày nữ nina sẽ là sự lựa chọn số tốt nhất bởi chính sách bán hàng và chính sách bảo hành được chúng tôi ưu tiên đặt lên hàng đầu. \r\nCách chọn giày hợp với chân \r\n➡ Bước 1: Chọn giày không có đệm mắt cá chân, vì giày này tốt cho việc sử dụng hàng ngày. Giày bóng rổ hay gót quá cao sẽ làm yếu phần mắt cá của bạn. \r\n➡ Bước 2: Giày có phần đế không quá hẹp. Đế giày nhỏ như 1 dấu chân sẽ làm phần tiếp xúc với mặt đất nhỏ đi, gây khó chịu và kém giữ thăng bằng lẫn ma sát \r\n➡ Bước 3: Chọn kiểu giày có thiết kế thông hơi hoặc chất liệu thoáng để không hút hay giữ ẩm \r\n➡ Bước 4: Uốn cong phần mũi giày. Khoảng 1/3 độ dài giày có thể uốn mềm dẻo, 2/3 còn lại cần cứng cáp và khó uốn. \r\n➡ Bước 5: Nắm phần mũi và gót giày, thử xoắn giày lại (quay 2 tay theo 2 chiều ngược nhau). Giày tốt sẽ không bị bóp méo và biến dạng. \r\ncách chọn giày phù hợp với size chân !', NULL, 1, 4, 1, 200000, 1, '2017-05-10 08:38:56', '2017-05-10 08:38:56', 108, 1),
('giày cao gót hở mũi lụa', 'giay-cao-got-ho-mui-lua', 12, 400000, 7, 4, '9.jpg', 'Giay cao cấp', NULL, 0, 3, 1, 140000, 1, '2017-05-10 08:45:40', '2017-05-10 08:45:40', 109, 1),
('Proin Lectus Ipsum', 'proin-lectus-ipsum', 5, 13000, 9, 0, 'giay.png', '<h1>Thêm vào đó, Liverpoo</h1>\r\n\r\n<p>Thêm vào đó, Liverpool cũng không dễ dàng \"nhả người\". Một vài tin đồn trước đây cho rằng đội chủ sân Anfield muốn nhận đủ 200 triệu bảng mới để tiền đạo người Ai Cập ra đi. Đó là một cái giá rất khó \"nói chuyện\" với bất kỳ đội bóng nào.</p>\r\n\r\n<p>Trong khi đó, trường hợp của Son Heung Min lại \"sáng cửa\" hơn rất nhiều. Tiền đạo người châu Á đang rất khao khát danh hiệu sau những năm tháng trắng tay cùng Tottenham. Việc được thi đấu cùng thần tượng Ronaldo cũng sẽ thôi thúc tiền đạo người Hàn Quốc chuyển tới Ý.</p>\r\n\r\n<p><strong>Bên cạnh đó, Juventus đang</strong> có cầu thủ Tottenham muốn chiêu mộ. Đó là Dybala, tiền đạo từng muốn rời Juventus hồi hè vừa qua. Về mặt giá cả thì Son Heung Min thậm chí còn đắt hơn tiền đạo người Argentina (72 triệu bảng và 67,5 triệu bảng, theo Transfermarkt).</p>\r\n', NULL, 0, 0, 1, 12000, 1, '2017-05-12 16:25:47', '2017-05-12 16:25:47', 110, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`tieude`, `noidung`, `hinhanh`, `created_at`, `updated_at`, `slug`, `id`) VALUES
('Đôi loafer da của Gigi Hadid có gì đặc biệt mà tới 10.000 người ', 'David Beckham không chỉ là \"Người đàn ông sexy nhất thế giới năm 2015\" mà anh còn nhiều lần thống trị các bảng xếp hạng quý ông mặc đẹp. Phong cách của anh có sự thay đổi linh hoạt theo từng địa điểm. Người ta rất khó bắt lỗi thời trang của ngài Beck bởi rất hiếm khi anh xuề xòa trong việc lựa chọn trang phục.\r\n\r\nMột trong những yếu tố tạo nên độ hoàn hảo cho mọi trang phục của David Beckham chính là những đôi giày. Lựa chọn giày dép phù hợp trang phục luôn là bài toán khó nhằn bậc nhất, không chỉ với phái mạnh mà ngay cả các quý cô sành điệu cũng hoang mang trường kỳ. Nhưng riêng với David Beckham thì có vẻ như mọi thứ quá dễ dàng, bởi trong bài phỏng vấn mới nhất, cựu danh thủ tiết lộ anh có đến hơn... 1000 đôi giày!\r\nTrong số 1.000 đôi giày đó có đủ loại mà mọi người đàn ông có thể hình dung đến: từ những đôi giày da lịch lãm, giày lười tiện dụng, giày sneaker khỏe khoắn... nhưng nhiều nhất lại là loại giày chuyên dụng để đá bóng. Điều này cũng chẳng mấy ngạc nhiên khi nghiệp túc cầu là đam mê lớn nhất đời của David Beckham.\r\n\r\nÔng bố 4 con còn tiết lộ rằng, mọi đôi giày đều được anh bảo quản kỹ lưỡng trong những chiếc hộp từ chính hãng. Dựa trên chi tiết này thì ắt không gian đựng giày dép của David Beckham hẳn phải to như một cửa hàng tạp hóa. Chưa kể, anh còn vui vẻ chia sẻ là số lượng giày của anh \"át\" hẳn tủ giày của cô vợ nổi tiếng - Victoria Beckham.', '5.jpg', '2017-05-10 03:58:49', '2017-05-10 03:58:49', 'doi-loafer-da-cua-gigi-hadid-co-gi-dac-biet-ma-toi-10000-nguoi', 8),
('Sau \"dép lau nhà\", Zara lại ra đôi dép nhựa hoa đỏ order về thể nào cũng khóc thét', 'Là thương hiệu thời trang bình dân hàng đầu thế giới, Zara luôn biết cách chiều lòng giới mộ điệu trong mọi khoản. Quần áo, giày dép, túi xách... có cả một thế giới mang tên Zara khiến chúng ta đắm chìm không dứt.\r\n\r\nThế nhưng cũng có đôi khi, Zara khiến ', 'gK4WeV_simg_b5529c_250x250_maxb.jpg', '2017-05-11 08:03:17', '2017-05-11 08:03:17', 'sau-dep-lau-nha-zara-lai-ra-doi-dep-nhua-hoa-do-order-ve-the-nao-cung-khoc-thet', 9),
(' Giày đẹp lắm  khỏi chê đi', '- Giá cả phải chăng \r\n-  Chất lượng đảm bảo \r\n-  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n-Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n-Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '7.jpg', '2017-05-11 08:14:23', '2017-05-11 08:14:23', 'giay-dep-lam-khoi-che-di', 10),
('Chọn giày thể thao cho gái đẹp', '<p>Gi&agrave;y thể thao đang l&agrave; phụ kiện kh&ocirc;ng thể thiếu trong tủ gi&agrave;y d&eacute;p của c&aacute;c bạn g&aacute;i. Những đ&ocirc;i gi&agrave;y thể thao với thiết kế đa dạng, nhiều m&agrave;u sắc thường được phái đẹp lựa chọn.&nbsp;Những đ&ocirc;i gi&agrave;y thể thao mang phong c&aacute;ch trẻ trung với gam m&agrave;u ngọt ng&agrave;o như cam, hồng, v&agrave;ng&hellip; thể hiện sự năng động nhưng kh&ocirc;ng k&eacute;m phần nữ t&iacute;nh cho ph&aacute;i đẹp. Gi&agrave;y thể thao kh&ocirc;ng chỉ đẹp về kiểu d&aacute;ng m&agrave; c&ograve;n tạo sự thoải m&aacute;i v&agrave; tiện lợi, lu&ocirc;n l&agrave; người bạn đồng h&agrave;nh kh&ocirc;ng thể thiếu của những c&ocirc; n&agrave;ng m&ecirc; thể thao. Trong tiết trời se lạnh, gi&agrave;y thể thao c&agrave;ng chứng tỏ được tầm quan trọng nhờ khả năng giữ ấm cho b&agrave;n ch&acirc;n. Với c&aacute;c gam m&agrave;u kẹo ngọt, c&aacute;c bạn nữ c&oacute; thể phối c&ugrave;ng với những bộ trang phục như v&aacute;y ngắn, &aacute;o thun, quần short t&ugrave;y &yacute;.</p>\r\n\r\n<p>Kh&ocirc;ng đơn thuần d&agrave;nh ri&ecirc;ng cho nam giới, những đ&ocirc;i gi&agrave;y thể thao với thiết kế đa dạng, phối nhiều m&agrave;u sắc kh&aacute;c nhau sẽ gi&uacute;p c&aacute;c bạn nữ nổi bật v&agrave; tự tin hơn. Với đặc điểm đế thấp, những đ&ocirc;i gi&agrave;y thể thao c&oacute; cấu tạo nhẹ, đơn giản n&ecirc;n thỏa m&atilde;n được nhu cầu của nhiều t&iacute;n đồ thời trang. C&aacute;c gam m&agrave;u đa dạng được phối c&ugrave;ng nhau tạo n&ecirc;n tổng thể bắt mắt sẽ l&agrave; trợ thủ đắc lực của những bạn nữ lu&ocirc;n ch&uacute; trọng ngoại h&igrave;nh nội bật. Với những đ&ocirc;i gi&agrave;y thể thao c&aacute; t&iacute;nh, c&aacute;c bạn g&aacute;i c&oacute; thể dễ d&agrave;ng phối c&ugrave;ng c&aacute;c trang phục năng động như &aacute;o thun oversize c&ugrave;ng quần skinny, đi k&egrave;m với những chiếc &aacute;o kho&aacute;c thật đa dạng. &nbsp;</p>\r\n', '13-min-283b9571-e2d5-4086-bc3c-c168ebf143eb.jpg', '2017-05-12 20:12:56', '2017-05-12 20:12:56', 'chon-giay-the-thao-cho-gai-dep', 11),
('Giới trẻ ầm lên về giày', '<p>Chuck II, &quot;hậu duệ&quot; của mẫu gi&agrave;y Chuck Taylor 98 năm tuổi đ&igrave;nh đ&aacute;m đang l&agrave; từ kh&oacute;a &quot;hot&quot; nhất trong từ điển của c&aacute;c bạn trẻ Việt m&ecirc; gi&agrave;y những ng&agrave;y qua.&nbsp;28/7 vừa qua, thương hiệu Converse đ&atilde; ch&iacute;nh thức ra mắt Chuck II, phi&ecirc;n bản cải tiến của mẫu gi&agrave;y Chuck Taylor All Star đ&igrave;nh đ&aacute;m. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n kể từ khi ra đời v&agrave;o năm 1917, t&iacute;nh đến nay l&agrave; 98 năm, mẫu gi&agrave;y cổ điển mang t&iacute;nh biểu tượng của Converse nhận được sự cải c&aacute;ch về thiết kế. Bởi vậy, kh&ocirc;ng ngạc nhi&ecirc;n khi Chuck II gi&agrave;nh được sự quan t&acirc;m đặc biệt của giới trẻ cũng như c&aacute;c t&iacute;n đồ của gi&agrave;y Chuck Taylor tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p><br />\r\nTại Việt Nam, những ng&agrave;y vừa qua Chuck II đ&atilde; tạo n&ecirc;n một cơn sốt sục s&ocirc;i trong cộng đồng c&aacute;c bạn trẻ. Dạo một v&ograve;ng quanh Instagram v&agrave; Facebook, kh&ocirc;ng kh&oacute; để bắt gặp những bức ảnh khoe gi&agrave;y với nh&acirc;n vật ch&iacute;nh l&agrave; Chuck II k&egrave;m theo những d&ograve;ng b&igrave;nh luận đầy h&agrave;o hứng. Được biết, kh&ocirc;ng &iacute;t bạn đ&atilde; phải xếp h&agrave;ng hay thậm ch&iacute; l&agrave; lặn lội đến nhiều cửa h&agrave;ng kh&aacute;c nhau để c&oacute; thể sở hữu mẫu gi&agrave;y mới ra mắt n&agrave;y.&nbsp;</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/091/132/files/anh3.png?v=1466157709429\" /></p>\r\n\r\n<p><br />\r\nỞ lần ra mắt đầu ti&ecirc;n n&agrave;y, Chuck II giới thiệu đến c&aacute;c fan 2 phi&ecirc;n bản cao cổ v&agrave; thấp cổ với 4 t&ugrave;y chọn m&agrave;u sắc đen, trắng, đỏ v&agrave; xanh navy. So với &quot;đ&agrave;n anh&quot; Chuck Taylor cổ điển, &quot;hậu duệ&quot; Chuck II c&oacute; kh&ocirc;ng &iacute;t thay đổi lớn gi&uacute;p cải thiện đ&aacute;ng kể về sự thoải m&aacute;i khi mang cũng như độ bền. Cụ thể, Chuck II sử dụng chất liệu canvas cao cấp hơn hẳn với mặt trong được l&agrave;m từ vải micro-suede mềm mại, được trang bị l&oacute;t gi&agrave;y Lunarlon &ecirc;m &aacute;i của Nike, phần cổ gi&agrave;y được bọc th&ecirc;m đệm xốp tạo sự thoải m&aacute;i cho cổ ch&acirc;n c&ugrave;ng với phần lưỡi gi&agrave;y chống trơn trượt giảm thiểu tối đa t&igrave;nh trạng x&ocirc; lệch khi mang. Về mặt ngoại h&igrave;nh, Chuck II ph&acirc;n biệt với đ&agrave;n anh ở viền đế gi&agrave;y tuyền một m&agrave;u trắng, lỗ xỏ d&acirc;y gi&agrave;y được phủ m&agrave;u tr&ugrave;ng với m&agrave;u gi&agrave;y cũng như d&acirc;y gi&agrave;y. Ngo&agrave;i ra, logo Converse Chuck Taylor All Star h&igrave;nh tr&ograve;n ở phi&ecirc;n bản cao cổ cũng được th&ecirc;u một c&aacute;ch tỉ mỉ tạo diện mạo sắc sảo hơn hẳn cho đ&ocirc;i gi&agrave;y. Hiện Chuck II đang c&oacute; gi&aacute; b&aacute;n lẻ l&agrave; 70USD (~ 1.400.000VNĐ) cho phi&ecirc;n bản thấp cổ v&agrave; 75USD (~ 1.500.000VNĐ) cho phi&ecirc;n bản cao cổ.&nbsp;</p>\r\n', '7-min-b0397d03-c03d-4d05-9f1f-86d95f9d4f33.jpg', '2017-05-12 20:13:56', '2017-05-12 20:13:56', 'gioi-tre-am-len-ve-giay', 12);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
