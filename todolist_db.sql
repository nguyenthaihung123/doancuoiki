-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th1 08, 2026 lúc 09:44 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `todolist_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0: Chưa xong, 1: Xong',
  `priority` int(1) DEFAULT 2 COMMENT '1: Cao, 2: TB, 3: Thấp',
  `category` varchar(50) DEFAULT 'Work'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `date`, `status`, `priority`, `category`) VALUES
(1, 'Test Database', 'Dữ liệu này từ MySQL', '2026-01-08', 0, 1, 'Work'),
(2, 'Họp Team Sáng', 'Bàn về tiến độ dự án Mobile App', '2026-01-09', 0, 1, 'Work'),
(3, 'Đi siêu thị', 'Mua rau, trứng, sữa và đồ ăn vặt', '2026-01-09', 0, 2, 'Personal'),
(4, 'Fix lỗi Login', 'Sửa lỗi crash khi nhập sai mật khẩu', '2026-01-10', 1, 1, 'Work'),
(5, 'Chạy bộ công viên', 'Chạy 5km buổi chiều để rèn sức khỏe', '2026-01-10', 0, 3, 'Personal'),
(6, 'Gửi báo cáo tuần', 'Tổng hợp KPI gửi cho sếp trước 5h chiều', '2026-01-06', 0, 1, 'Work'),
(7, 'Đọc sách', 'Đọc hết chương 3 cuốn Đắc Nhân Tâm', '2026-01-11', 0, 3, 'Personal'),
(8, 'Gọi điện cho mẹ', 'Hỏi thăm sức khỏe cuối tuần', '2026-01-12', 0, 2, 'Personal'),
(9, 'Backup Database', 'Sao lưu dữ liệu máy chủ định kỳ', '2026-01-12', 0, 2, 'Work'),
(10, 'Bảo dưỡng oto', 'Đi thay nhớt và kiểm tra phanh', '2026-01-13', 0, 3, 'Personal'),
(11, 'Mua xe may', 'Khong', '2026-01-08', 0, 3, 'Personal'),
(13, 'Thuc tap ', 'Hoan thanh thcu tap ', '2026-01-17', 0, 3, 'Work'),
(14, 'Giai tri ', 'Choi game ', '2026-01-08', 1, 3, 'Personal');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
