-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 08, 2023 lúc 07:23 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookinglist`
--

CREATE TABLE `bookinglist` (
  `id` int(11) NOT NULL,
  `so_dien_thoai` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_card` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `flight_number` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `loai_ghe` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'economy',
  `ma_ve` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double DEFAULT NULL,
  `ImgLink` varchar(3000) COLLATE utf8mb4_general_ci NOT NULL,
  `so_ghe` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bookinglist`
--

INSERT INTO `bookinglist` (`id`, `so_dien_thoai`, `email`, `ho_ten`, `id_card`, `flight_number`, `loai_ghe`, `ma_ve`, `price`, `ImgLink`, `so_ghe`) VALUES
(46, '123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'D6'),
(47, '123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'D7'),
(48, '222', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'D8'),
(49, '12313123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN102', 'Economy', 'VN230524', 100, '', 'D9'),
(50, '5565656', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN102', 'Economy', 'VN230524', 100, '', 'D9'),
(51, '123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN102', 'Economy', 'VN230524', 100, '', 'D9'),
(52, '123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'C10'),
(53, '56756756', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'C7'),
(54, '345545', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'D7'),
(55, '45656', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN101', 'Economy', 'VN230524', 100, '', 'C8'),
(56, '123', 'vank@gmail.com', 'doan_customer', '4123123123', 'VN102', 'Economy', 'VN230524', 100, '', 'D1'),
(59, '0764444315', 'nghivothanh9@gmail.com', 'Võ Thanh Nghị', '123124123123', 'QH301', 'Economy', 'VN230529', 100, '', 'D3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_rating`
--

CREATE TABLE `customer_rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flights`
--

CREATE TABLE `flights` (
  `id` int(11) NOT NULL,
  `flight_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flight_number` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `seat_class` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number_seat` int(11) DEFAULT NULL,
  `origin_city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination_city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `flights`
--

INSERT INTO `flights` (`id`, `flight_name`, `flight_number`, `departure_date`, `arrival_date`, `departure_time`, `arrival_time`, `seat_class`, `number_seat`, `origin_city`, `destination_city`) VALUES
(1, 'Vietnam Airlines', 'VN101', '2023-06-01', '2023-06-01', '07:00:00', '09:00:00', 'Economy', 90, 'Hanoi', 'Ho Chi Minh City'),
(2, 'Vietnam Airlines', 'VN102', '2023-06-01', '2023-06-01', '10:00:00', '12:00:00', 'Business', 46, 'Ho Chi Minh City', 'Hanoi'),
(3, 'Vietjet Air', 'VJ201', '2023-06-02', '2023-06-02', '08:00:00', '10:00:00', 'Economy', 80, 'Hanoi', 'Da Nang'),
(4, 'Airline Four', 'D400', '2022-07-05', '2022-07-05', '16:20:00', '18:00:00', 'Economy', 200, 'Dubai', 'New York'),
(5, 'Airline Five', 'E500', '2022-08-15', '2022-08-15', '06:00:00', '08:45:00', 'Business', 75, 'Paris', 'New Delhi'),
(6, 'Airline Six', 'F600', '2022-09-25', '2022-09-25', '12:30:00', '15:00:00', 'Economy', 100, 'Los Angeles', 'Sydney'),
(7, 'Airline Seven', 'G700', '2022-10-10', '2022-10-10', '09:15:00', '11:45:00', 'Business', 50, 'Hong Kong', 'Singapore'),
(8, 'Airline Eight', 'H800', '2022-11-20', '2022-11-20', '18:00:00', '20:30:00', 'Economy', 150, 'New York', 'London'),
(9, 'Airline Nine', 'I900', '2022-12-15', '2022-12-15', '11:30:00', '14:15:00', 'Business', 75, 'New Delhi', 'Dubai'),
(10, 'Airline Ten', 'J1000', '2023-01-05', '2023-01-05', '13:45:00', '17:30:00', 'Economy', 200, 'Sydney', 'Tokyo'),
(11, 'Airline Test', 'H1000', '2023-01-05', '2023-01-05', '13:45:00', '17:30:00', 'Economy', 200, 'Tp.HCM', 'Tokyo'),
(12, 'Vietjet Air', 'VJ202', '2023-06-02', '2023-06-02', '11:00:00', '13:00:00', 'Business', 40, 'Da Nang', 'Hanoi'),
(13, 'Bamboo Airways', 'QH301', '2023-06-03', '2023-06-03', '09:00:00', '11:00:00', 'Economy', 119, 'Hanoi', 'Ho Chi Minh City'),
(14, 'Bamboo Airways', 'QH302', '2023-06-03', '2023-06-03', '12:00:00', '14:00:00', 'Business', 60, 'Ho Chi Minh City', 'Hanoi'),
(15, 'Vietnam Airlines', 'VN123', '2023-05-15', '2023-05-15', '09:00:00', '11:30:00', 'Economy', 200, 'Hanoi', 'Ho Chi Minh City'),
(16, 'Jetstar Pacific', 'BL456', '2023-05-15', '2023-05-15', '10:30:00', '13:00:00', 'Business', 50, 'Ho Chi Minh City', 'Da Nang'),
(17, 'Vietjet Air', 'VJ789', '2023-05-16', '2023-05-16', '08:00:00', '10:30:00', 'Economy', 150, 'Da Nang', 'Hanoi'),
(23, 'v', 'a', '2023-05-29', '2023-05-30', '01:49:00', '02:49:00', NULL, 100, '2', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luggage`
--

CREATE TABLE `luggage` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ma_ve` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_system`
--

CREATE TABLE `payment_system` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_system`
--

INSERT INTO `payment_system` (`id`, `name`, `description`, `payment_method`, `bank_account`, `username`) VALUES
(1, 'Visa', 'test', 'Visa', '4959544935543', 'jdoe'),
(7, '3', '', '3', '123', 'asmith');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `seat_number` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `class_type` enum('Business','Economy') COLLATE utf8_vietnamese_ci NOT NULL,
  `reserved` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `seats`
--

INSERT INTO `seats` (`id`, `seat_number`, `class_type`, `reserved`) VALUES
(1, 'A1', 'Business', 0),
(2, 'A2', 'Business', 0),
(3, 'A3', 'Business', 0),
(4, 'A4', 'Business', 0),
(5, 'A5', 'Business', 0),
(6, 'A6', 'Business', 0),
(7, 'A7', 'Business', 0),
(8, 'A8', 'Business', 0),
(9, 'A9', 'Business', 0),
(10, 'A10', 'Business', 0),
(11, 'B1', 'Business', 0),
(12, 'B2', 'Business', 0),
(13, 'B3', 'Business', 0),
(14, 'B4', 'Business', 0),
(15, 'B5', 'Business', 0),
(16, 'B6', 'Business', 0),
(17, 'B7', 'Business', 0),
(18, 'B8', 'Business', 1),
(19, 'B9', 'Business', 1),
(20, 'B10', 'Business', 0),
(21, 'C1', 'Economy', 1),
(22, 'C2', 'Economy', 1),
(23, 'C3', 'Economy', 1),
(24, 'C4', 'Economy', 1),
(25, 'C5', 'Economy', 1),
(26, 'C6', 'Economy', 1),
(27, 'C7', 'Economy', 1),
(28, 'C8', 'Economy', 1),
(29, 'C9', 'Economy', 0),
(30, 'C10', 'Economy', 1),
(31, 'D1', 'Economy', 1),
(32, 'D2', 'Economy', 0),
(33, 'D3', 'Economy', 1),
(34, 'D4', 'Economy', 0),
(35, 'D5', 'Economy', 0),
(36, 'D6', 'Economy', 0),
(37, 'D7', 'Economy', 1),
(38, 'D8', 'Economy', 0),
(39, 'D9', 'Economy', 0),
(40, 'D10', 'Economy', 0),
(41, 'E1', 'Economy', 0),
(42, 'E2', 'Economy', 0),
(43, 'E3', 'Economy', 0),
(44, 'E4', 'Economy', 0),
(45, 'E5', 'Economy', 0),
(46, 'E6', 'Economy', 0),
(47, 'E7', 'Economy', 0),
(48, 'E8', 'Economy', 0),
(49, 'E9', 'Economy', 0),
(50, 'E10', 'Economy', 0),
(51, 'G10', 'Business', 0),
(52, 'G11', 'Economy', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_toan`
--

CREATE TABLE `thanh_toan` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `payment_currency` varchar(10) NOT NULL,
  `payment_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanh_toan`
--

INSERT INTO `thanh_toan` (`id`, `payment_id`, `payment_status`, `payment_amount`, `payment_currency`, `payment_date`) VALUES
(1, 'VN230524', 'False', '100.00', 'USD', '2023-05-24 02:12:20'),
(2, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:13:48'),
(3, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:16:10'),
(4, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:31:07'),
(5, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:34:52'),
(6, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:42:45'),
(7, 'VN230524', 'Success', '100.00', 'USD', '2023-05-24 02:43:56'),
(9, 'VN230529', 'Success', '100.00', 'USD', '2023-05-29 18:30:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_card` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'user',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `id_card`, `name`, `role`, `balance`) VALUES
(1, 'jdoe', 'password123', 'jdoe@example.com', '1234 5678 9012 3456', 'John Doe', 'admin', '99999999.99'),
(2, 'asmith', '123', 'vank@gmail.com', '4123123123', 'doan_customer', 'user', '1133593.00'),
(3, 'bbaker', 'letmein', 'bbaker@example.com', '3456 7890 1234 5678', 'Bob Baker', 'user', '0.00'),
(4, 'ckim', 'password123', 'ckim@example.com', '4567 8901 2345 6789', 'Carol Kim', 'user', '0.00'),
(5, 'jlee', 'changeme', 'jlee@example.com', '5678 9012 3456 7890', 'Jessica Lee', 'user', '0.00'),
(6, 'kkim', 'letmein123', 'kkim@example.com', '6789 0123 4567 8901', 'Kevin Kim', 'user', '0.00'),
(7, 'jchoi', 'password1', 'jchoi@example.com', '7890 1234 5678 9012', 'Julie Choi', 'user', '0.00'),
(8, 'mhong', 'hello123', 'mhong@example.com', '8901 2345 6789 0123', 'Michael Hong', 'user', '0.00'),
(9, 'sseo', 'pa$$word', 'sseo@example.com', '9012 3456 7890 1234', 'Samantha Seo', 'user', '0.00'),
(10, 'jpark', 'p@ssw0rd', 'jpark@example.com', '0123 4567 8901 2345', 'James Park', 'user', '0.00'),
(11, 'nghi', '1', 'vank@gmail.com', NULL, 'thanh ngi', 'admin', '0.00'),
(16, 'nghi1', '1', 'nghivothanh9@gmail.com', NULL, NULL, 'user', '-100.00'),
(17, 'nghi2', '1', 'nghivothanh10@gmail.com', NULL, '', 'user', '0.00'),
(18, 'nghi2', '1', 'nghivothanh10@gmail.com', NULL, '', 'user', '0.00'),
(19, 'nghi2', '1', 'nghivothanh10@gmail.com', NULL, '', 'user', '0.00'),
(21, 'nghi4', '1', 'nghivothanh9@gmail.com', NULL, NULL, 'admin', '-100.00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookinglist`
--
ALTER TABLE `bookinglist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_rating`
--
ALTER TABLE `customer_rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luggage`
--
ALTER TABLE `luggage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_system`
--
ALTER TABLE `payment_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanh_toan`
--
ALTER TABLE `thanh_toan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookinglist`
--
ALTER TABLE `bookinglist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `payment_system`
--
ALTER TABLE `payment_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `thanh_toan`
--
ALTER TABLE `thanh_toan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
