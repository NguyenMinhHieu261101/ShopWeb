-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2022 lúc 11:53 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacn_web_tc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_icon` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT 1,
  `c_total_product` int(11) NOT NULL DEFAULT 0,
  `c_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `c_icon`, `c_avatar`, `c_active`, `c_total_product`, `c_title_seo`, `c_description_seo`, `c_keyword_seo`, `created_at`, `updated_at`) VALUES
(2, 'Pome', 'pome', 'fa-apple', NULL, 1, 0, 'Pome', 'Pome bao gồm bất kỳ quả giả giòn nào bao quanh \"lõi\" không thể ăn được của quả và thường có các hạt được sắp xếp theo hình giống như hình sao. (Ở đây bao gồm trái cây cỡ quả mọng.)', NULL, '2022-10-04 23:40:14', '2022-11-11 16:48:29'),
(3, 'Quả hạch', 'qua-hach', 'fa-kiwi-fruit', NULL, 1, 0, 'Quả hạch', 'Quả hạch đại diện cho bất kỳ loại trái cây nào (thậm chí cỡ quả mọng) chỉ có một hạt (hoặc \"đá\") hoặc một nang cứng có chứa hạt.', NULL, '2022-10-05 00:24:37', '2022-11-11 16:49:11'),
(4, 'Quả kiên', 'qua-kien', 'fa-kiwi-fruit', NULL, 0, 0, 'Quả kiên', 'Quả kiên là loại quả khô, vỏ cứng, không có múi, không tách ra khi trưởng thành để giải phóng hạt', NULL, '2022-10-05 01:35:29', '2022-11-11 16:49:42'),
(6, 'Cam quýt', 'cam-quyt', 'fa-fruit', NULL, 1, 0, 'Cam quýt', 'Cam quýt đại diện cho loại trái cây là những quả mọng có vỏ dày và da sần sùi. Những loại trái cây này thường có vị chua và có tính axit ở một mức độ nào đó và có mặt cắt giống như bánh xe chở hàng.', NULL, '2022-11-11 16:50:25', '2022-11-11 16:50:25'),
(7, 'Quả mọng', 'qua-mong', 'fa-fruit', NULL, 1, 0, 'Quả mọng', 'Các loại quả mọng đại diện cho bất kỳ trái cây đó là cỡ anh đào (nghĩa là bạn có thể giữ nhiều quả trong lòng bàn tay của bạn), ngoại trừ Pome hoặc quả hạch.', NULL, '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
(8, 'Dưa', 'dua', 'fa-fruit', NULL, 1, 0, 'Dưa', 'Dưa là loại quả có phần thịt mềm bên trong và được bao phủ bởi một lớp vỏ dày, cứng.', NULL, '2022-11-11 16:51:14', '2022-11-11 16:51:14'),
(9, 'Trái cây nhiệt đới', 'trai-cay-nhiet-doi', 'fa-fruit', NULL, 1, 0, 'Trái cây nhiệt đới và giống như nhiệt đới', 'Trái cây nhiệt đới và giống nhiệt đới là bất kỳ loại trái cây ăn được nào không phù hợp với bất kỳ loại nào khác.', NULL, '2022-11-11 16:51:57', '2022-11-11 17:10:40'),
(10, 'Xương rồng', 'xuong-rong', 'fa-fruit', NULL, 1, 0, 'Xương rồng và các loại trái cây mọng nước khác', 'Xương rồng và các loại trái cây mọng nước khác là những loại trái cây có nguồn gốc từ xương rồng hoặc loài mọng nước.', NULL, '2022-11-11 16:52:15', '2022-11-11 17:10:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_30_072422_create_category_table', 1),
(6, '2022_10_17_051627_create_products_table', 2),
(7, '2022_10_17_054701_alter_column_pro_content_and_pro_title_seo_in_table_products', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_author_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_price`, `pro_author_id`, `pro_sale`, `pro_active`, `pro_hot`, `pro_view`, `pro_description`, `pro_avatar`, `pro_description_seo`, `pro_keyword_seo`, `created_at`, `updated_at`, `pro_title_seo`, `pro_content`) VALUES
(1, 'Chuối  ngự', 'chuoi-ngu', 4, 15000, 0, 0, 1, 1, 0, 'Chuối  ngự', 'chuoingu.jpg', 'Chuối  ngự', NULL, '2022-11-11 20:21:52', '2022-11-11 21:22:31', 'Chuối  ngự', 'vv'),
(2, 'Táo Mỹ', 'tao-my', 2, 30000, 0, 0, 1, 1, 0, 'Táo Mỹ', 'taomy.jpg', 'Táo Mỹ', NULL, '2022-11-11 20:21:50', '2022-11-14 18:19:31', 'Táo Mỹ', 'dasdasd'),
(3, 'Cam', 'cam', 6, 10000, 0, 0, 1, 1, 0, 'cam', 'cam.jpg', 'cam', NULL, '2022-11-11 20:21:55', '2022-11-14 18:23:25', 'cam', 'cam'),
(4, 'Quýt', 'quyt', 6, 5000, 0, 0, 1, 1, 0, 'quyt', 'quytt.jpg', 'quyt', NULL, '2022-11-11 21:05:13', '2022-11-14 18:23:07', 'quyt', 'quyt'),
(5, 'Lê châu Á', 'le-chau-a', 2, 20000, 0, 0, 1, 0, 0, 'Lê châu Á', 'qua-le.jpg', 'Lê châu Á', NULL, '2022-11-11 21:53:26', '2022-11-14 18:23:22', 'Lê châu Á', 'Lê châu Á');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_c_name_unique` (`c_name`),
  ADD KEY `category_c_slug_index` (`c_slug`),
  ADD KEY `category_c_active_index` (`c_active`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`),
  ADD KEY `products_pro_category_id_index` (`pro_category_id`),
  ADD KEY `products_pro_author_id_index` (`pro_author_id`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_active_index` (`active`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
