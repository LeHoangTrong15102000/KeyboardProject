-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2021 lúc 07:40 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jspbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `detail` text NOT NULL,
  `create_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`blog_id`, `title`, `author`, `image`, `detail`, `create_time`) VALUES
(1, 'Bún Chả', 'Minh Nhã', 'bún chả cá-1621221843.jpg', 'Bún chả cá được chế biến theo nhiều cách, cầu kỳ thì có thể dùng cá thu. bình dân thì các loại cá tạp khi ăn phối hợp thêm rau sống tạo nên một món ăn khá cân bằng về dinh dưỡng. Bún chả cá cung cấp một khối lượng dinh dưỡng đáng kể: mỗi tô khoảng 400-500 kcalo, chất đạm, acid amin. Thêm vào đó, nó chứa ít cholesterol và giàu Vitamin A và Vitamin D. Thế nhưng vẫn có lo ngại về nguy cơ gây hại cho sức khỏe ở Bún chả cá khi ở khâu làm chả, những nhà sản xuất thường hay tận dụng dầu để chiên làm sản sinh các chất có hại cho sức khỏe, và khâu bảo quản, cá dễ bị ôi thiu nếu không được bảo quản đúng cách.', '2021-06-17'),
(2, 'Bánh mì', 'Minh Nhã', 'Bánh mỳ chả thịt-1621219916.jpg', 'Bánh mì (tiếng Anh: bread) là một thực phẩm được chế biến từ bột mì hoặc từ ngũ cốc được nghiền ra trộn với nước, thường là bằng cách nướng. Trong suốt quá trình lịch sử nó đã được phổ biến trên toàn thế giới và là một trong những loại thực phẩm nhân tạo lâu đời nhất, và rất quan trọng kể từ lúc ban đầu của ngành nông nghiệp.\r\n\r\nCó nhiều cách kết hợp và tỷ lệ của các loại bột và các nguyên liệu khác, và cũng có các công thức nấu ăn truyền thống khác nhau và phương thức để tạo ra bánh mì. Kết quả là có rất nhiều chủng loại, hình dạng, kích thước và kết cấu của bánh mì ở các vùng khác nhau. Bánh mì có thể được lên men bằng nhiều quá trình khác nhau, từ việc sử dụng các vi sinh vật tự nhiên (ví dụ như trong bột chua) cho tới cách dùng phương pháp thông khí nhân tạo với áp lực cao trong quá trình chuẩn bị hoặc nướng. Tuy nhiên, một số sản phẩm bánh mì còn lại không để lên men, hoặc vì cho sở thích, hoặc vì lý do truyền thống hay tôn giáo. Nhiều thành phần không phải ngũ cốc có thể được đưa vào bánh m: từ trái cây và các loại hạt đến các chất béo khác nhau. Bánh mì thương mại nói riêng thường chứa các chất phụ gia, một số trong số chúng không có dinh dưỡng nhằm cải thiện hương vị, kết cấu, màu sắc, thời hạn sử dụng, hoặc để sản xuất dễ dàng hơn.', '2021-06-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat`
--

INSERT INTO `cat` (`cat_id`, `cat_name`, `parent_id`) VALUES
(92, 'BÀN PHÍM GIẢ CƠ', 0),
(93, 'BÀN PHÍM CƠ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `product_id`, `content`, `created_at`, `parent_id`) VALUES
(1, 1, 1, '111', '2021-05-26 22:13:55', 0),
(2, 0, 0, '{22sdd}', '2021-05-26 22:15:57', 0),
(3, 1, 2, '22sdd', '2021-05-26 22:16:56', 0),
(4, 1, 2, '22sdd', '2021-05-26 22:28:37', 0),
(7, 5, 62, '222222222', '2021-05-26 22:33:04', 0),
(8, 5, 62, '22222222', '2021-05-26 22:34:02', 0),
(9, 5, 62, '22222222', '2021-05-26 22:34:30', 0),
(10, 5, 64, 'Phở ngon', '2021-05-27 19:02:40', 0),
(11, 5, 64, '222', '2021-05-27 19:03:00', 0),
(12, 5, 62, '3333', '2021-05-28 20:07:26', 0),
(13, 5, 62, '3333', '2021-05-28 20:09:34', 0),
(14, 5, 64, '333', '2021-05-28 20:25:27', 0),
(15, 5, 64, '333', '2021-05-28 20:25:28', 0),
(16, 5, 62, '444', '2021-05-28 20:35:01', 0),
(17, 5, 62, '55', '2021-05-28 20:39:07', 16),
(18, 5, 62, '66', '2021-05-28 20:42:49', 17),
(19, 5, 62, '66', '2021-05-28 20:44:46', 17),
(20, 5, 62, '777', '2021-05-28 20:52:29', 12),
(21, 5, 62, '888', '2021-05-29 15:26:32', 20),
(23, 5, 62, '8888', '2021-05-29 15:47:45', 12),
(26, 5, 60, 'Phở ngon quá', '2021-05-29 19:05:22', 0),
(27, 5, 60, '22', '2021-05-29 19:05:38', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `create_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `blog_id`, `comment`, `create_time`) VALUES
(47, 56, 2, 'dsds', '2021-06-19'),
(48, 56, 2, 'sdsds', '2021-06-19'),
(49, 59, 1, 'ưewe', '2021-06-20'),
(50, 56, 1, 'sdsds', '2021-06-20'),
(51, 56, 1, 'sd', '2021-06-20'),
(52, 56, 2, 'aa', '2021-06-20'),
(53, 56, 1, 'aaaaa', '2021-06-20'),
(54, 56, 2, 'sssss', '2021-06-20'),
(55, 61, 1, 'ok', '2021-06-21'),
(56, 56, 3, 'asdfasdf', '2021-06-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(10) NOT NULL,
  `contact_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `address`, `email`, `phone`, `title`, `content`) VALUES
(1, 'Trần Trung', '24 Hòa Cầm Đà Nẵng', 'trantrung@gmail.com', '0981234567', 'Chưa nhận được quà', 'Chỉ nhận vào giờ hành chính'),
(2, 'Trần Trung', '24 Hòa Cầm Đà Nẵng', 'trantrung@gmail.com', '0981234567', 'Chưa nhận được quà', 'Chỉ nhận vào giờ hành chính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`item_id`, `productId`, `quantity`, `price`, `customerId`, `orderId`) VALUES
(24, 10, 1, 39000, 59, 0),
(25, 11, 1, 269000, 59, 0),
(47, 7, 1, 29000, 56, 0),
(48, 11, 1, 269000, 56, 0),
(49, 12, 1, 59000, 56, 0),
(55, 10, 1, 39000, 56, 0),
(56, 12, 1, 59000, 56, 0),
(58, 8, 1, 39000, 56, 0),
(59, 9, 1, 29000, 56, 0),
(61, 8, 1, 39000, 56, 0),
(62, 9, 1, 29000, 56, 0),
(64, 8, 1, 39000, 56, 0),
(65, 9, 1, 29000, 56, 0),
(67, 8, 1, 39000, 56, 0),
(68, 9, 1, 29000, 56, 0),
(71, 10, 1, 39000, 56, 5),
(83, 8, 2, 39000, 56, 5),
(85, 12, 1, 59000, 56, 70),
(86, 9, 1, 29000, 56, 70),
(87, 2, 1, 59000, 56, 71),
(88, 3, 1, 68000, 56, 71),
(89, 4, 1, 269000, 56, 71),
(90, 4, 1, 269000, 56, 72),
(91, 2, 1, 59000, 56, 72),
(92, 21, 2, 15000, 61, 73),
(93, 20, 1, 11000, 61, 73),
(94, 3, 1, 68000, 61, 74),
(95, 4, 1, 269000, 61, 74),
(96, 6, 1, 269000, 61, 74),
(97, 11, 1, 269000, 61, 74),
(98, 10, 2, 39000, 61, 74),
(99, 2, 1, 59000, 61, 75),
(100, 3, 1, 68000, 61, 75),
(101, 20, 2, 11000, 61, 0),
(102, 21, 2, 15000, 61, 0),
(103, 1, 2, 59000, 61, 0),
(104, 1, 2, 59000, 61, 76),
(105, 2, 1, 59000, 61, 77),
(106, 3, 1, 68000, 61, 77),
(107, 21, 1, 15000, 56, 78),
(108, 59, 1, 5, 56, 79),
(109, 21, 1, 2, 56, 79),
(110, 2, 2, 68001, 56, 80),
(111, 3, 2, 68002, 56, 80),
(112, 1, 3, 59012, 63, 81),
(113, 4, 1, 269000, 63, 82),
(114, 21, 1, 15000, 63, 83),
(115, 1, 1, 59012, 64, 84),
(116, 1, 1, 59012, 64, 85),
(117, 1, 1, 650000, 65, 86);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) NOT NULL,
  `news_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_text` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_news` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `created_at`, `detail_text`, `picture`, `type_news`) VALUES
(1, 'Tặng 1 bánh pizza miễn phí cho ngày sinh nhật của bạn', '12/5/2019', ' Tặng 1 pizza cỡ M (áp dụng cho tất cả các loại pizza trừ số 3, 11 và 12)    Quý khách vui lòng mang theo chứng minh thư nhân dân hoặc các giấy tờ tương đương thể hiện ngày sinh nhật trùng với ngày nhận bánh    Mỗi khách hàng chỉ được nhận 1 bánh tặng miễn phí    Chỉ áp dụng với các đơn hàng có giá trị trên 250.000đ    Cửa hàng tặng miễn phí tối đa 10 bánh/ 1 ngày cho 10 người đăng kí đầu tiên', 'pizza.jpg', 1),
(2, 'Tặng 1 bánh pizza miễn phí cho ngày sinh nhật của bạn', '12/5/2021', ' Tặng 1 pizza cỡ M (áp dụng cho tất cả các loại pizza trừ số 3, 11 và 12)\r\n    Quý khách vui lòng mang theo chứng minh thư nhân dân hoặc các giấy tờ tương đương thể hiện ngày sinh nhật trùng với ngày nhận bánh\r\n    Mỗi khách hàng chỉ được nhận 1 bánh tặng miễn phí\r\n    Chỉ áp dụng với các đơn hàng có giá trị trên 250.000đ\r\n    Cửa hàng tặng miễn phí tối đa 10 bánh/ 1 ngày cho 10 người đăng kí đầu tiên', 'pizza.jpg', 1),
(7, 'Khuyến mãi thứ 2, thứ 4, thứ 6 hàng tuần Khuyến mãi thứ 2, thứ 4, thứ 6 hàng tuần', '12/12/2020', '<p>&Aacute;p dụng cho thứ 2, thứ 4, thứ 6 h&agrave;ng tuần<br />\r\n&nbsp;&nbsp;&nbsp; &Aacute;p dụng cho c&aacute;c h&igrave;nh thức: giao b&aacute;nh v&agrave; mang về<br />\r\n&nbsp;&nbsp;&nbsp; Kh&ocirc;ng &aacute;p dụng ng&agrave;y lễ, tết</p>\r\n', 'Khuyến mãi thứ 2, thứ 4, thứ 6 hàng tuần Khuyến mãi thứ 2, thứ 4, thứ 6 hàng tuần-1621307401.png', 2),
(8, 'Khuyến mãi thứ 3, thứ 5 hàng tuần', '12/12/2019', '<p>&Aacute;p dụng cho thứ 2, thứ 3, thứ 5 h&agrave;ng tuần<br />\r\n&nbsp;&nbsp;&nbsp; &Aacute;p dụng cho c&aacute;c h&igrave;nh thức: giao b&aacute;nh v&agrave; mang về<br />\r\n&nbsp;&nbsp;&nbsp; Kh&ocirc;ng &aacute;p dụng ng&agrave;y lễ, tết</p>\r\n', 'Khuyến mãi thứ 3, thứ 5 hàng tuần-1621307470.jpeg', 1),
(9, 'Tặng 1 bánh pizza miễn phí cho ngày sinh nhật của bạn', '12/12/2018', '<p>&nbsp;&nbsp; Tặng 1 pizza cỡ M (&aacute;p dụng cho tất cả c&aacute;c loại pizza trừ số 3, 11 v&agrave; 12)<br />\r\n&nbsp;&nbsp;&nbsp; Qu&yacute; kh&aacute;ch vui l&ograve;ng mang theo chứng minh thư nh&acirc;n d&acirc;n hoặc c&aacute;c giấy tờ tương đương thể hiện ng&agrave;y sinh nhật tr&ugrave;ng với ng&agrave;y nhận b&aacute;nh<br />\r\n&nbsp;&nbsp;&nbsp; Mỗi kh&aacute;ch h&agrave;ng chỉ được nhận 1 b&aacute;nh tặng miễn ph&iacute;<br />\r\n&nbsp;&nbsp;&nbsp; Chỉ &aacute;p dụng với c&aacute;c đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 250.000đ<br />\r\n&nbsp;&nbsp;&nbsp; Cửa h&agrave;ng tặng miễn ph&iacute; tối đa 10 b&aacute;nh/ 1 ng&agrave;y cho 10 người đăng k&iacute; đầu ti&ecirc;n</p>\r\n', 'Tặng 1 bánh pizza miễn phí cho ngày sinh nhật của bạn-1621307506.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `customer` text NOT NULL,
  `items` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`orderId`, `customer`, `items`, `status`) VALUES
(1, 'rerer', 'rerere', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `item` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `phoneNumber` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `methodDelivery` int(11) NOT NULL,
  `paymentDelivery` int(11) NOT NULL,
  `total` float NOT NULL,
  `keyCreate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orderId`, `customerId`, `item`, `status`, `createDate`, `phoneNumber`, `address`, `methodDelivery`, `paymentDelivery`, `total`, `keyCreate`) VALUES
(71, 56, '[ItemModel [itemId=0, product=ProductModel [productId=2, productName=Xà lách trộn kiểu Pháp, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng thức., productPicture=pizza.jpg, categoryId=28, productPrice=59000.0, parentId=1, source=3], quantity=1, price=59000.0], ItemModel [itemId=0, product=ProductModel [productId=3, productName=Tomato sp, productDescription=Mỳ Ý sốt cà chua hương vị ngon, thưởng thức rất hợp khẩu vị\r\n\r\nMón ăn không gây béo mà hương vị lại đầy đủ, rất dễ ăn, productPicture=my_xao_thap_cam_large.jpg, categoryId=27, productPrice=68000.0, parentId=1, source=3], quantity=1, price=68000.0], ItemModel [itemId=0, product=ProductModel [productId=4, productName=Supreme, productDescription=Pizza phủ xúc xích, thịt bò, ớt chuông, nấm rơm và hành tây.\r\n\r\nMón pizza vẫn luôn là món khoái khẩu cho các chị em trong những dịp đi chơi hay gọi đến nhà đều rất tiện lợi, productPicture=supreme_pizza_large.jpg, categoryId=33, productPrice=269000.0, parentId=4, source=3], quantity=1, price=269000.0]]', 1, '2021-06-21 09:41:54', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 396000, 'Mon Jun 21 16:41:54 ICT 2021'),
(72, 56, '[ItemModel [itemId=0, product=ProductModel [productId=4, productName=Supreme, productDescription=Pizza phủ xúc xích, thịt bò, ớt chuông, nấm rơm và hành tây.\r\n\r\nMón pizza vẫn luôn là món khoái khẩu cho các chị em trong những dịp đi chơi hay gọi đến nhà đều rất tiện lợi, productPicture=supreme_pizza_large.jpg, categoryId=33, productPrice=269000.0, parentId=4, source=3], quantity=1, price=269000.0], ItemModel [itemId=0, product=ProductModel [productId=2, productName=Xà lách trộn kiểu Pháp, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng thức., productPicture=pizza.jpg, categoryId=28, productPrice=59000.0, parentId=1, source=3], quantity=1, price=59000.0]]', 1, '2021-06-21 10:04:47', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 1, 328000, 'Mon Jun 21 17:04:47 ICT 2021'),
(73, 61, '[ItemModel [itemId=0, product=ProductModel [productId=21, productName=Bánh bông lan, productDescription=<p>1</p>\r\n, productPicture=Bánh bông lan-1621219871.jpg, categoryId=29, productPrice=15000.0, parentId=2, source=1], quantity=2, price=15000.0], ItemModel [itemId=0, product=ProductModel [productId=20, productName=Bánh gato kem cuộn, productDescription=<p>1</p>\r\n, productPicture=Bánh gato kem cuộn-1621219802.jpg, categoryId=29, productPrice=11000.0, parentId=2, source=3], quantity=1, price=11000.0]]', 1, '2021-06-21 10:56:38', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 41000, 'Mon Jun 21 17:56:38 ICT 2021'),
(74, 61, '[ItemModel [itemId=0, product=ProductModel [productId=3, productName=Tomato sp, productDescription=Mỳ Ý sốt cà chua hương vị ngon, thưởng thức rất hợp khẩu vị\r\n\r\nMón ăn không gây béo mà hương vị lại đầy đủ, rất dễ ăn, productPicture=my_xao_thap_cam_large.jpg, categoryId=27, productPrice=68000.0, parentId=1, source=3], quantity=1, price=68000.0], ItemModel [itemId=0, product=ProductModel [productId=4, productName=Supreme, productDescription=Pizza phủ xúc xích, thịt bò, ớt chuông, nấm rơm và hành tây.\r\n\r\nMón pizza vẫn luôn là món khoái khẩu cho các chị em trong những dịp đi chơi hay gọi đến nhà đều rất tiện lợi, productPicture=supreme_pizza_large.jpg, categoryId=33, productPrice=269000.0, parentId=4, source=3], quantity=1, price=269000.0], ItemModel [itemId=0, product=ProductModel [productId=6, productName=Supreme, productDescription=Pizza phủ xúc xích, thịt bò, ớt chuông, nấm rơm và hành tây.\r\n\r\nMón pizza vẫn luôn là món khoái khẩu cho các chị em trong những dịp đi chơi hay gọi đến nhà đều rất tiện lợi, productPicture=supreme_pizza_large.jpg, categoryId=27, productPrice=269000.0, parentId=1, source=3], quantity=1, price=269000.0], ItemModel [itemId=0, product=ProductModel [productId=11, productName=Seafood Pesto, productDescription=Pizza hải sản với tôm, mực nghêu và nấm trên nền sốt Pesto và phô mai.\r\n\r\nMón ăn vô cùng hấp dẫn và ngon lành, vô cùng tiện lợi, productPicture=pizza_lap_xuong_large.jpg, categoryId=33, productPrice=269000.0, parentId=4, source=3], quantity=1, price=269000.0], ItemModel [itemId=0, product=ProductModel [productId=10, productName=\r\nSúp gà kem sữa, productDescription=Chưa có mô tả, productPicture=sup_tom_large.jpg, categoryId=27, productPrice=39000.0, parentId=1, source=2], quantity=2, price=39000.0]]', 1, '2021-06-21 10:59:59', '01223415449', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 953000, 'Mon Jun 21 17:59:59 ICT 2021'),
(75, 61, '[ItemModel [itemId=0, product=ProductModel [productId=2, productName=Xà lách trộn kiểu Pháp, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng thức., productPicture=pizza.jpg, categoryId=28, productPrice=59000.0, parentId=1, source=3], quantity=1, price=59000.0], ItemModel [itemId=0, product=ProductModel [productId=3, productName=Tomato sp, productDescription=Mỳ Ý sốt cà chua hương vị ngon, thưởng thức rất hợp khẩu vị\r\n\r\nMón ăn không gây béo mà hương vị lại đầy đủ, rất dễ ăn, productPicture=my_xao_thap_cam_large.jpg, categoryId=27, productPrice=68000.0, parentId=1, source=3], quantity=1, price=68000.0]]', 1, '2021-06-21 12:04:02', 'sdfsadfsadf', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 127000, 'Mon Jun 21 19:04:02 ICT 2021'),
(76, 61, '[ItemModel [itemId=0, product=ProductModel [productId=1, productName=Xà lách trộn kiểu Nga, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng thức., productPicture=pizza.jpg, categoryId=27, productPrice=59000.0, parentId=1, source=3], quantity=2, price=59000.0]]', 1, '2021-06-21 12:10:52', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 118000, 'Mon Jun 21 19:10:52 ICT 2021'),
(77, 61, '[ItemModel [itemId=0, product=ProductModel [productId=2, productName=Xà lách trộn kiểu Pháp, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng thức., productPicture=pizza.jpg, categoryId=28, productPrice=59000.0, parentId=1, source=3], quantity=1, price=59000.0], ItemModel [itemId=0, product=ProductModel [productId=3, productName=Tomato sp, productDescription=Mỳ Ý sốt cà chua hương vị ngon, thưởng thức rất hợp khẩu vị\r\n\r\nMón ăn không gây béo mà hương vị lại đầy đủ, rất dễ ăn, productPicture=my_xao_thap_cam_large.jpg, categoryId=27, productPrice=68000.0, parentId=1, source=3], quantity=1, price=68000.0]]', 1, '2021-06-21 12:13:54', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 127000, 'Mon Jun 21 19:13:54 ICT 2021'),
(78, 56, '[ItemModel [itemId=0, product=ProductModel [productId=21, productName=Bánh bông lan, productDescription=<p>1</p>\r\n, productPicture=Bánh bông lan-1621219871.jpg, categoryId=29, productPrice=15000.0, parentId=2, source=1], quantity=1, price=15000.0]]', 1, '2021-06-23 12:29:38', '23412341234', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 1, 2, 15000, 'Wed Jun 23 19:29:38 ICT 2021'),
(81, 63, '[ItemModel [itemId=0, product=ProductModel [productId=1, productName=Xa lách, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng \nthức, productPicture=pizza.jpg, categoryId=27, productPrice=59012.0, parentId=1, source=3], quantity=3, price=59012.0]]', 1, '2021-10-14 17:19:11', '0394073759', 'Khối phố 8 phường An Sơn thành phố Tam Kỳ', 2, 2, 177036, 'Fri Oct 15 00:19:11 ICT 2021'),
(82, 63, '[ItemModel [itemId=0, product=ProductModel [productId=4, productName=Supreme, productDescription=Pizza phủ xúc xích, thịt bò, ớt chuông, nấm rơm và hành tây.\r\n\r\nMón pizza vẫn luôn là món khoái khẩu cho các chị em trong những dịp đi chơi hay gọi đến nhà đều rất tiện lợi, productPicture=supreme_pizza_large.jpg, categoryId=33, productPrice=269000.0, parentId=4, source=3], quantity=1, price=269000.0]]', 0, '2021-10-16 09:08:32', '0394073759', 'K129 Phạm Như Xương', 2, 3, 269000, 'Sat Oct 16 16:08:32 ICT 2021'),
(83, 63, '[ItemModel [itemId=0, product=ProductModel [productId=21, productName=Bánh bông lan, productDescription=Bánh sinh nhật theo dòng trào lưu du nhập văn hóa phương Tây vào Việt Nam ở thế kỷ 19 với những thương hiệu nổi tiếng là Brodard (ra đời từ năm 1948) và Viral (từ năm 1950); nơi phát triển chính là thành phố Sài Gòn (thành phố Hồ Chí Minh bây giờ).[cần dẫn nguồn]\n\nCho đến bây giờ, ở đầu thế kỷ 21 người Việt Nam cũng đã quen với bánh sinh nhật và nó đã được coi là một loại bánh bình thường và không đến nỗi quá đặc biệt. Bánh sinh nhật giờ đây không còn quá đắt đỏ cũng như không chỉ được dùng trong dịp sinh nhật. Ta có thể dễ dàng tìm thấy cửa hàng bán bánh sinh nhật hay bánh gatô ở bất kỳ nơi nào trên tất cả các địa bàn dân sinh trên Việt Nam. Tuy vậy, việc tự làm bánh vẫn là một điều khá xa lạ với người Việt., productPicture=Bánh bông lan-1621219871.jpg, categoryId=29, productPrice=15000.0, parentId=2, source=1], quantity=1, price=15000.0]]', 0, '2021-10-16 09:10:43', '0394073759', 'K129 Phạm Như Xương', 2, 3, 15000, 'Sat Oct 16 16:10:43 ICT 2021'),
(84, 64, '[ItemModel [itemId=0, product=ProductModel [productId=1, productName=Xa lách, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng \nthức, productPicture=pizza.jpg, categoryId=27, productPrice=59012.0, parentId=1, source=3], quantity=1, price=59012.0]]', 1, '2021-10-19 13:49:55', '0394073759', 'Ship tới 12 Lê Duẩn', 2, 3, 0, 'Tue Oct 19 20:49:55 ICT 2021'),
(85, 64, '[ItemModel [itemId=0, product=ProductModel [productId=1, productName=Xa lách, productDescription=Món salad Nga luôn tươi ngon và hấp dẫn những ai thưởng \nthức, productPicture=pizza.jpg, categoryId=27, productPrice=59012.0, parentId=1, source=3], quantity=1, price=59012.0]]', 0, '2021-10-19 14:31:54', '0394073759', 'xa Dien Bich huyen Dien Chau Nghe An', 2, 3, 59012, 'Tue Oct 19 21:31:54 ICT 2021'),
(86, 65, '[ItemModel [itemId=0, product=ProductModel [productId=1, productName=Keyboard M514126, productDescription=Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác., productPicture=anh2.jpg, categoryId=92, productPrice=650000.0, parentId=1, source=3], quantity=1, price=650000.0]]', 1, '2021-11-22 16:16:54', '0394073758', 'Ship tới 12 Lê Duẩn', 2, 3, 650000, 'Mon Nov 22 23:16:54 ICT 2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay`
--

CREATE TABLE `pay` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `pay_money` int(10) NOT NULL,
  `transaction_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `method` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_describe` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `source` int(20) DEFAULT NULL,
  `numberView` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_describe`, `picture`, `cat_id`, `price`, `parent_id`, `source`, `numberView`) VALUES
(1, 'Keyboard M514126', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh2.jpg', 92, 650000, 1, 3, 145),
(2, 'Keyboard Xám', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh1.jpg', 93, 68001, 1, 3, 63),
(5, 'Keyboard K214', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh3.jpg', 92, 6801, 1, 3, 8),
(6, 'Keyboard Gear', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh4.jpg', 93, 269000, 1, 3, 20),
(7, 'Keyboard Raver', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh5.jpg', 92, 12000, 1, 2, 3),
(8, 'Keyboard Ro1', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh6.jpg', 93, 39000, 1, 2, 5),
(9, 'Keyboard Lupin', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh7.jpg', 92, 29000, 1, 3, 11),
(11, 'Keyboard Texa', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh8.jpg', 92, 269000, 4, 3, 4),
(12, 'Keyboard Viền', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh9.jpg', 93, 59000, 1, 3, 26),
(13, 'Keyboard Min', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh10.jpg', 92, 269000, 4, 3, 0),
(14, 'Keyboard Laptop', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh11.jpg', 93, 59000, 1, 3, 1),
(17, 'Keyboard Keychon', 'Với thiết kế nhỏ gọn, bao gồm 87 phím người dùng có thể dễ dàng đặt bàn phím cơ E-DRA tại những vị trí có diện tích không lớn, hoặc tiết kiệm không gian để tận dụng cho những công việc khác.', 'anh12.jpg', 93, 15000, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `source`
--

CREATE TABLE `source` (
  `source_id` int(10) NOT NULL,
  `source_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum_money` int(10) NOT NULL,
  `order_day` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `user_id`, `name`, `phone`, `email`, `address`, `sum_money`, `order_day`) VALUES
(1, 0, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(2, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(3, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(4, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(5, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(6, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(7, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(8, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(9, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(10, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(11, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(12, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(13, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(14, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(15, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(16, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(17, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(18, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(19, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, ''),
(20, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 07:04:35'),
(21, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:24:09'),
(22, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:24:16'),
(23, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:25:20'),
(24, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:45:05'),
(25, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:47:29'),
(26, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 10:49:22'),
(27, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 69000, '2021-05-25 10:57:36'),
(28, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 48000, '2021-05-25 12:08:45'),
(29, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 72000, '2021-05-25 12:08:45'),
(30, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 97000, '2021-05-25 12:08:45'),
(31, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 48000, '2021-05-25 12:08:45'),
(32, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 72000, '2021-05-25 12:08:45'),
(33, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 97000, '2021-05-25 12:08:45'),
(34, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 48000, '2021-05-25 12:08:45'),
(35, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 72000, '2021-05-25 12:08:45'),
(36, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 97000, '2021-05-25 12:08:45'),
(37, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 12:20:04'),
(38, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 12:20:04'),
(39, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 12:20:04'),
(40, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 12:20:04'),
(41, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 14:19:26'),
(42, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 14:20:20'),
(43, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 0, '2021-05-25 14:22:59'),
(44, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 125000, '2021-05-25 14:25:02'),
(45, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 225000, '2021-05-25 15:52:36'),
(46, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 250000, '2021-05-25 15:52:36'),
(47, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 225000, '2021-05-25 15:52:36'),
(48, 5, 'Đặng Văn Duẫn', '123456789', 'huy@gmail.com', 'Cẩm Lệ', 250000, '2021-05-25 15:52:36'),
(49, 5, 'Đặng Văn Duẫn', '0123456789', 'huy@gmail.com', 'Cẩm Lệ', 27000, '2021-05-28 16:46:33'),
(50, 5, 'Đặng Văn Duẫn', '0123456789', 'huy@gmail.com', 'Cẩm Lệ', 87000, '2021-05-28 16:46:33'),
(51, 5, 'Đặng Văn Duẫn', '0123456789', 'huy@gmail.com', 'Cẩm Lệ', 27000, '2021-05-28 16:46:33'),
(52, 5, 'Đặng Văn Duẫn', '0123456789', 'huy@gmail.com', 'Cẩm Lệ', 87000, '2021-05-28 16:46:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isSell` int(11) NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `full_name`, `phone`, `address`, `isSell`, `isAdmin`) VALUES
(1, 'tranquoctrung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Quốc Trung', '0425161342 ', 'Đà Nẵng', 0, 0),
(2, 'tranquoctrung2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Quốc Trung', '0425161342', 'Đà Nẵng', 0, 0),
(3, 'nguyenvana34@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn A', '0981234567', 'Quảng Nam', 0, 0),
(4, 'nguyenvana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn A', '0981234567', 'Quảng Nam', 0, 0),
(5, 'huy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Đặng Văn Duẫn', '0123456789', 'Cẩm Lệ', 0, 0),
(29, 'huy1234@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Lê Huy', '0769710126', '09', 0, 0),
(40, 'minhnha120', 'minh', 'nguyen minh nha', '01231231231', 'tam tien', 0, 0),
(41, 'dsds', 'sdsds', 'sdsds', 'sdsds', 'sdsds', 0, 0),
(42, 'tttttt', 'sdsds', 'sdsds', 'sdsds', 'sdsds', 0, 0),
(43, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(44, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(45, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(46, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(47, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(48, 'mikomk', 'dsdsd', 'sdsdsd', 'rererer', 'yuyuyuy', 0, 0),
(49, 'minhnha12', '123456789', 'nguyen minh nha', '0122334545', 'tamtien', 0, 0),
(56, 'minhnha1999', 'a8034c7a8f98116d89e57c70835bb985', 'minh nha', '0379572434', 'Thon Hoa Loc Tam Tien Nui Thanh Quang Nam1', 0, 0),
(57, 'admin11', 'e020590f0e18cd6053d7ae0e0a507609', 'nguyen minh nhÃ£', '23412341234', 'tamtien', 0, 0),
(58, 'minhnha19999', '47d27abfd65fadb5aff1c9d4e8eba427', 'Minh NhÃ£', '23412341234', 'Ã¡dfasdfasdfasd', 0, 0),
(59, 'minhnha1201', '501f3e5b79c601fd9891d70609feaa80', 'Nguyễn Minh Nhã', '0379572434', 'dsdsdsds', 0, 0),
(60, 'minhnha1211', '827ccb0eea8a706c4c34a16891f84e7b', 'Tuấn Nhã', '0379572434', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 0, 0),
(61, 'minhnha111', '827ccb0eea8a706c4c34a16891f84e7b', 'Minh Nhã', '01223415449', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 0, 0),
(62, 'Admin', '192023a7bbd73250516f069df18b500', 'Admin', '0122334545', '01 Hoàng Thị Loan , phường Hòa Minh, quận Liên Chiểu ,Đà Nẵng', 0, 1),
(63, 'quantrivien', 'fef1ddf26aacab614a822e243bdb16cb', 'Quản trị viên', '0394073759', 'Hà Nội', 0, 1),
(64, 'levanc', '1506d64253c9a871dd9cbc43da8494b5', 'Lê Văn C', '0394073758', 'Quảng Nam', 0, 0),
(65, 'buivand', 'bdf875ff000c9c3d949a7d8f6468233a', 'Bùi Văn D', '0394012345', 'Hà Nội', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id_list` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id_list`, `user_id`, `product_id`, `create_time`) VALUES
(61, 60, 20, '2021-06-18'),
(62, 60, 4, '2021-06-18'),
(63, 60, 19, '2021-06-18'),
(85, 59, 6, '2021-06-20'),
(86, 59, 24, '2021-06-20'),
(87, 56, 4, '2021-06-20'),
(88, 56, 3, '2021-06-20'),
(89, 56, 1, '2021-06-20'),
(90, 56, 2, '2021-06-20'),
(91, 61, 3, '2021-06-21'),
(92, 61, 4, '2021-06-21'),
(93, 61, 21, '2021-06-21'),
(94, 61, 2, '2021-06-21'),
(95, 61, 1, '2021-06-21'),
(101, 56, 60, '2021-06-28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Chỉ mục cho bảng `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`source_id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_list`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `pay`
--
ALTER TABLE `pay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `source`
--
ALTER TABLE `source`
  MODIFY `source_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
