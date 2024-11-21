-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2023 lúc 04:47 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data_tourlist`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'ngockha', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `matour` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` int(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `num_people` int(100) NOT NULL,
  `total_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `matour`, `fullname`, `phone`, `email`, `num_people`, `total_price`) VALUES
(1, 'TGL', 'Nguyễn Ngọc Khả ', 373316044, 'ngockha123a@gmail.com', 7, 9995000),
(2, 'TSL', 'Võ Đình Văn ', 1571247741, 'vanvo@gmail.com', 7, 13993000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemden_data`
--

CREATE TABLE `diemden_data` (
  `id_diemden` int(11) NOT NULL,
  `id_gt` varchar(25) NOT NULL,
  `hinhanh` varchar(25) NOT NULL,
  `tendiemden` varchar(50) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diemden_data`
--

INSERT INTO `diemden_data` (`id_diemden`, `id_gt`, `hinhanh`, `tendiemden`, `noidung`) VALUES
(1, 'TMB', '2.jpg', 'Du lịch Hà Nội', 'Hà Nội chắc chắn là điểm đến đầu tiên mà các bạn không thể bỏ qua khi du lịch miền Bắc. Là nơi lưu giữ ngàn năm tinh hoa của dân tộc, Hà Nội không chỉ nổi tiếng với nhiều di tích lịch sử, danh lam thắng cảnh đẹp, nền ẩm thực độc đáo mà còn ghi dấu ấn trong lòng du khách bởi sự thanh lịch, tinh tế của người thủ đô. Quá thích hợp nếu bạn đặt phòng khách sạn Hà Nội để tiện cho việc du lịch, tham quan, thưởng thức ẩm thực Hà Thành nhé!'),
(2, 'TMB', '3.jpg', 'Du lịch đảo Cô Tô – Quảng Ninh', 'Cô Tô được nhiều người xem là hòn đảo xinh đẹp nhất nhì ở Bắc bộ với những bãi biển hoang sơ, bờ cát dài trắng mịn cùng làn nước trong xanh. \r\n                    Bởi thế mà Cô Tô không chỉ là điểm đến hấp dẫn với du khách trong nước mà còn với cả các du khách nước ngoài. \r\n                    Du khách khi tới đây có thể nghỉ dưỡng ở ngay các khách sạn Quảng Ninh view đẹp, tắm biển cũng như tham gia nhiều hoạt động hấp dẫn như câu mực vào buổi đêm, trèo lên ngọn hải đăng ngắm nhìn cảnh mây nước xung quanh…'),
(3, 'TMB', '4.jpg', 'Du lịch Sapa – Lào Cai', 'Nằm ở phía Tây Bắc của Việt Nam, Sapa nổi tiếng là địa điểm du lịch ở miền Bắc tuyệt đẹp với những màn sương bao phủ quanh năm, không khí trong lành, những đồi ruộng bậc thang xanh mát cùng nét đẹp thơ mộng của những phiên chợ vùng cao.'),
(4, 'TMB', '5.jpg', 'Du lịch Mộc Châu – Sơn La', ' Khí hậu chính là món quà quý giá và tuyệt vời nhất mà thiên nhiên đã ban tặng cho Mộc Châu. Cái se lạnh trong làn sương mù dày đặc cùng với cảnh quan kì vĩ,những đồi chè xanh mướt hay những ngôi làng xinh xắn ven đường chính là nét đẹp độc đáo khiến du khách phải mê mẩn tới đây để trải nghiệm, hưởng trọn kỳ nghỉ tuyệt vời khi đặt phòng khách sạn Mộc Châu và khám phá vùng đất xinh đẹp này.'),
(5, 'TMB', '7.jpg', 'Du lịch Cát Bà – Hải Phòng', ' Cát Bà được xem là một trong các điểm du lịch miền Bắc hấp dẫn nhất khi đón hàng ngàn lượt khách du lịch tới tắm biển mỗi năm, nên hệ thống nhà hàng, các khách sạn Hải Phòng được xây dựng nhằm đáp ứng nhu cầu của du khách trong và ngoài nước. Là nơi giao hòa giữa vẻ đẹp của rừng và biển, tới đây du khách sẽ vừa được khám phá cánh rừng nguyên sinh với nhiều loài động thực vật phong phú, vừa được tắm mát ở những bãi biển đẹp với làn nước xanh mát. '),
(6, 'TMB', '6.jpg', 'Du lịch hồ Ba Bể – Bắc Kạn', 'Nằm trong vườn quốc gia Ba Bể, hồ Ba Bể là một thắng cảnh tuyệt đẹp được mệnh danh là “thiên hạ đệ nhất hồ”. Chắc hẳn sẽ chẳng còn điều gì tuyệt vời hơn khi du khách tới đây sẽ được trải nghiệm cảm giác lênh đênh giữa đêm trên hồ để ngắm cảnh sông nước, núi non.'),
(9, 'TMN', '20.jpg', 'Du lịch Tây Ninh', 'Cách trung tâm Thành phố Hồ Chí Minh 100km, Tây Ninh có nhiều địa điểm tham quan hấp dẫn như: Núi Bà Đen, Hồ Dầu Tiếng, Tòa Thánh Tây Ninh,... Cũng như thành phố Hồ Chí Minh, thời điểm thích hợp tham quan Tây Ninh là vào mùa khô từ tháng 12 đến tháng 4 năm sau.'),
(10, 'TMN', '21.jpg', 'Du lịch Bình Dương', 'Bình Dương cách Sài Gòn chỉ khoảng 30 phút đi xe và đặc biệt Bình Dương cũng không thua kém Sài Gòn với nhiều địa điểm tham quan hấp dẫn, khu vui chơi nhộn nhịp như: Phố đêm Bạch Đằng, chợ đêm Thủ Dầu Một, hồ Bình An, công viên Thành Phố Mới Bình Dương, chùa Bà Thiên Hậu, chùa Hội Khánh,... Nếu cuối tuần bạn muốn tìm những địa điểm mới để tham quan thì chắc chắn bạn sẽ không thể bỏ qua Bình Dương được.'),
(13, 'TMN', '19.jpg', 'Du lich Thành phố Hồ Chí Minh', ' Thành phố Hồ Chí Minh là thành phố đông đúc, sầm uất nhất miền Nam nói riêng và cả nước nói chung. Thành phố Hồ Chí Minh ở trung tâm Đông Nam Bộ, nơi đây lưu giữ nhiều công trình kiến trúc độc đáo, khu vui chơi, trung tâm mua sắm sầm uất. Do vậy, Thành phố Hồ Chí Minh luôn là sự lựa chọn hàng đầu của du khách đến tham quan.\r\n             '),
(14, 'TMN', '22.jpg', 'Du lịch Đồng Nai', ' Là một trong những tỉnh phát triển ở miền Đông Nam Bộ. Đồng Nai sở hữu nhiều địa điểm hấp dẫn đặc biệt là các khu vui chơi như: Khu vui chơi Bửu Long, Khu vui chơi Vườn Xoài,... cực kỳ hấp dẫn mà bạn có thể đến để thư giãn cùng gia đình và bạn bè. Do cách Sài Gòn không xa nên bạn có thể đến tham quan vào những dịp cuối tuần.\r\n               '),
(16, 'TMN', '23.jpg', 'Du lịch Bà Rịa -Vũng Tàu', ' Bà Rịa - Vũng Tàu nổi tiếng với những bãi biển đẹp, những ngọn núi cao. Ngoài ra, nơi đây còn thu hút du khách với những món ăn ngon.  Bạn có thể đến đây tham quan cùng gia đình, bạn bè vào những dịp cuối tuần, lễ đặc biệt. Tại đây bạn có thể tham quan các điểm như: Đồi con heo, Tượng Chúa Ki-tô Vua, Ngọn hải đăng,...\r\n                '),
(17, 'TMN', '24.jpg', 'Du lịch Bến Tre', ' Bến Tre không chỉ khiến bạn bị thu hút bởi vẻ đẹp sông nước hiền hòa mà nơi đây còn có những nét văn hóa, ẩm thực độc đáo. Đến đây, du khách sẽ được trải nghiệm sự bình yên miền sông nước, rợm bóng dừa mát rượi với những địa điểm tham quan độc đáo như: Cồn Phụng, Cồn Quy, khu du lịch Lan Vương, cù lao Minh, khu du lịch Làng Bè, di tích Đạo Dừa...\r\n                '),
(18, 'TMT', '30.jpg', 'Du lich Bà Nà Hills (Đà Nẵng)', 'Bà Nà Hills là một trong những địa điểm du lịch miền Trung vô cùng nổi tiếng. Địa điểm này nằm ở xã Hòa Bình, huyện Hòa Vang, Đà Nẵng. Không chỉ được ví như một chốn “bồng lai tiên cảnh”, nhiều người còn xem nơi đây là “Châu Âu thu nhỏ giữa lòng Đà Nẵng”. Sự kết hợp hài hòa giữa cảnh quan lãng mạn và những công trình kiến trúc độc đáo mang đến cho Bà Nà Hills một vẻ quyến rũ rất riêng.\r\n                '),
(19, 'TMT', '29.jpg', 'Du lịch Phong Nha Kẻ Bàng (Quảng Bình)', 'Từ lâu, vườn quốc gia Phong Nha Kẻ Bàng đã trở thành địa điểm du lịch miền Trung mà nhiều người muốn khám phá. Nổi tiếng với những hang động dài và đẹp cùng núi non hữu tình, sông nước mênh mông, nơi đây không chỉ thu hút đông đảo khách du lịch trong nước mà còn hấp dẫn cả du khách quốc tế.\r\n                '),
(20, 'TMT', '28.jpg', 'Du lịch Đảo Lý Sơn (Quảng Ngãi)', '  Đảo Lý Sơn tiếp tục là một địa điểm du lịch miền Trung không thể bỏ qua. Huyện đảo Lý Sơn gồm có 3 hòn đảo mang những nét đẹp độc đáo riêng biệt. Đến nơi đây, du khách sẽ có cơ hội chiêm ngưỡng thiên nhiên trù phú cùng muôn vàn cảnh sắc khiến lòng người rung động. Ngoài ra, bạn cũng có thể dành thời gian ghé thăm các địa điểm hấp dẫn như cổng Tò Vò, hang Câu, chùa Hang,... và thưởng thức những món hải sản thơm ngon chỉ có tại Lý Sơn.\r\n                '),
(21, 'TMT', '26.jpg', 'Du lịch Eo Gió (Bình Định)', 'Không chỉ nằm trong danh sách địa điểm du lịch miền Trung hấp dẫn, Eo Gió còn được ví như một kiệt tác vĩ đại mà mẹ thiên nhiên đã ban tặng cho mảnh đất Bình Định thân thương. Không quá nổi tiếng như những vùng biển top đầu cả nước nhưng Eo Gió vẫn đủ quyến rũ khiến cho du khách ghé thăm phải nao lòng. Đến nơi đây, bạn sẽ được hòa mình vào đại dương bao la, đi qua những cung đường đẹp nhất và chìm đắm trong sự rực rỡ của ánh hoàng hôn.\r\n                '),
(22, 'TMT', '27.jpg', 'Du lịch Đảo Bình Ba (Nha Trang)               ', ' Từ khi chính thức trở thành địa điểm du lịch miền Trung, đảo Bình Ba rất được chú trọng đầu tư và phát triển. Trước đây, hòn đảo này còn được gọi là đảo Tôm Hùm và có vai trò phục vụ mục đích quân sự. Những năm trở lại đây, nhờ chính sách nới lỏng, khách du lịch có thể thoải mái ra vào đảo để khám phá nét đẹp hoang sơ, bình dị cùng khung cảnh thiên nhiên yên bình và trải nghiệm các hoạt động ngoài trời vô cùng thú vị.\r\n                '),
(23, 'TMT', '25.jpg', 'Du lịch Vịnh Vân Phong (Khánh Hòa)                ', ' Không đơn thuần là một địa điểm du lịch miền Trung lý tưởng, Vịnh Vân Phong còn là địa điểm leo núi được nhiều bạn trẻ yêu thích. Đứng trước “nàng công chúa ngủ quên” này, du khách sẽ bị thu hút ngay từ ánh nhìn đầu tiên bởi làn nước trong xanh nhìn thấy cả đáy cùng bờ cát vàng óng lấp lánh giữa trời mây. Ngoài ra, nơi đây còn có con đường đi bộ Điệp Sơn dài 700m được nhiều du khách xem như một background check-in lung linh cho những bức ảnh ngàn like.\r\n               ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lehoi`
--

CREATE TABLE `lehoi` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(11) NOT NULL,
  `tenvung` varchar(50) NOT NULL,
  `tenlehoi` varchar(50) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lehoi`
--

INSERT INTO `lehoi` (`id`, `hinhanh`, `tenvung`, `tenlehoi`, `noidung`) VALUES
(1, '13.jpg', 'VMB', 'Đi Chùa Hương', 'Hàng năm cứ mỗi độ Xuân về. Đúng mùng 6 tháng Giêng, hàng triệu Phật tử cùng du khách khắp thập phương lại nô nức trẩy hội chùa Hương (xã Hương Sơn, Mỹ Đức, Hà Nội) kéo dài tới hết tháng 3 (Âm lịch). \r\n                    Trên dòng suối Yến, hàng nghìn chiếc thuyền của người dân địa phương đưa du khách thong dong, vãn cảnh dọc hai bên bờ, xuôi dòng nước tạo nên một khung cảnh hữu tình. '),
(2, '35.jpg', 'VMB', 'Lễ hội Lấy Đỏ', 'Lễ hội truyền thống của làng An Định (phường Yên Nghĩa, quận Hà Đông, Hà Nội) kéo dài từ ngày mùng 7 Tết đến ngày 11 tháng Giêng. Vào 21 giờ ngày cuối cùng của lễ hội, \r\n                    Hàng trăm người dân trong làng bất kể già trẻ, gái trai đổ ra sân đình xin lửa từ khối vàng mã đang cháy, rồi mang về nhà với hy vọng cả gia đình sẽ có lộc trong năm mới.'),
(3, '14.jpg', 'VMB', 'Lễ hội Rước Vua Sống', 'Lễ hội Đền Sái diễn ra vào ngày 11 tháng Giêng (Âm lịch) với nhiều trò chơi vui nhộn, để tưởng nhớ vua An Dương Vương xây thành Cổ Loa năm xưa. Đặc sắc nhất tại đây là lễ rước Vua và Chúa “giả” từ Đình Làng ra Đền Sái và ngược lại. \r\n                    Hai lão ông khỏe mạnh, gia đình yên ấm con cái đuề huề được lựa chọn để diễn xướng, đóng giả Vua và Chúa trong lễ hội. '),
(4, '36.jpg', 'VMB', 'Lễ hội Cổ Loa (Hà Nội)', 'Lễ hội Cổ Loa xảy ra từ mồng 6 đến 16 tháng Giêng âm lịch tại đền thờ An Dương Vương ở xã Cổ Loa, huyện Đông Anh, Hà Nội. Sáng 6 Tết, hội mở bài bằng đám rước Văn với 5 lá cờ ngũ hành, phường bát âm, giá văn tế đặt trong kiệu Long đình, có lọng, tàn che.Sau đám rước Văn là màn tế lễ xảy ra quá giờ ngọ (12 giờ trưa). tiếp theo là đám rước thần của 12 xóm.'),
(5, '37.jpg', 'VMB', 'Lễ hội Cự Khối', 'Lễ hội vật cầu bùn làng Vân (nay là thôn Yên Viên, xã Vân Hà, huyện Việt Yên, tỉnh Bắc Giang) diễn ra từ ngày 12 đến 14/ 4 (Âm Lịch), từ 2 đến 4 năm mới được tổ chức một lần, tại đền Chùa Vân. Phần hội đặc sắc với trò chơi vật cầu bùn đã có nguồn gốc hàng trăm năm nay, diễn lại truyền thuyết về Đức Thánh Tam Giang trong sử xưa khi Lý Bôn (Lý Bí) đánh đuổi quân Lương thế kỷ 4-5, và chỉ mới được phục dựng từ năm 2002. Sân cầu rộng 200m vuông được đổ đầy bùn hoà lỏng bởi nước sông Đuống do phụ nữ trong làng gánh về.'),
(6, '38.jpg', 'VMB', 'Lễ Hội Cướp Phếch Hiền Quan', 'Lễ hội Phết Hiền Quan (Hiền Quan, Tam Nông, Phú Thọ) hàng năm được tổ chức vào ngày 13 tháng Giêng (Âm lịch) để tưởng nhớ và tôn vinh công lao của nữ tướng Thiều Hoa công chúa - Đức Thánh mẫu Đại vương, người giúp Hai Bà Trưng đánh giặc cứu nước. “Đánh Phết” là hình thức trò chơi dân gian diễn xướng lại cảnh rèn quân luyện võ theo tích xưa của nữ tướng Thiều Hoa được người dân làng truyền lại. Đánh Phết cũng là phần chính trong lễ hội. '),
(7, '12.jpg', 'VMT', 'Lễ hội cầu Ngư', 'Là lễ hội của nhân dân làng Thái Dương hạ(thuộc huyện Phú Vang, tỉnh Thừa Thiên Huế), được tổ chức vào ngày 12 tháng Giêng âm lịch hàng năm. Ba năm một lần làng lại tổ chức đại lễ rất linh đình.Lễ hội cầu Ngư có các trò chơi mô tả cảnh sinh hoạt của nghề đánh cá, đặc sắc là hình ảnh “bủa lưới” mang ý nghĩa trình nghề, khắc họa đậm nét nghi lễ dân gian của cư dân vùng ven biển.'),
(8, '15.jpg', 'VMT', 'Lễ hội Lam Kinh', 'Diễn ra tại khu di tích Lam Kinh (thuộc địa bàn xã Xuân Lam, huyện Thọ Xuân, tỉnh Thanh Hóa), mảnh đất quê hương của vị anh hùng dân tộc Lê Lợi và nhiều danh tướng nổi tiếng của cuộc khởi nghĩa Lam Sơn. Địa danh Lam Kinh còn là khu di tích có quy mô lớn về các đời vua, hoàng tộc của thời nhà hậu Lê và các danh tướng đương thời.'),
(9, '16.jpg', 'VMT', 'Lễ hội Dinh Thầy – Thím', 'Từ lâu, lễ hội này đã trở thành nét văn hóa đặc sắc riêng biệt của tỉnh Bình Thuận.Vào ngày 14 đến 16 tháng 9 âm lịch hàng năm, ngay chính tại khu di tích lịch sử – văn hóa Dinh Thầy – Thím lại diễn ra lễ hội lớn nhân ngày giỗ của Thầy – Thím. Vào dịp lễ hội, đông đảo người dân địa phương và du khách đến cầu nguyện sức khỏe, hạnh phúc cho gia đình, họ hàng.'),
(10, '40.jpg', 'VMT', 'Hội vật làng Sình xứ Huế', 'Đây là lễ hội nổi tiếng ở cố đô Huế nói riêng và cả miền Trung nói chung. Lễ hội này được tổ chức vào ngày mồng 9, mồng 10 tháng Giêng âm lịch hàng năm, tại khu vực đình làng Lại Ân còn gọi là làng Sình, xã Phú Mậu, huyện Phú Vang, Huế. Đây là một hoạt động văn hóa truyền thống, giàu tinh thần thượng võ của người dân nơi đây. Tại lễ hội, những đô vật sẽ thi đấu theo hình thức vòng tròn.'),
(11, '39.jpg', 'VMT', 'Lễ hội Đền Vua Mai', 'Đây là lễ hội tổ chức thường niên nhằm tưởng nhớ vua Mai Hắc Đế. Vua tên thật là Mai Thúc Loan, sinh ra và lớn lên tại xã Đông Liệt (nay là xã Nam Thái, huyện Nam Đàn, Nghệ An).Những hoạt động hấp dẫn diễn ra trong lễ hội có các trò chơi dân gian xưa như: Hát văn, hát đối, đấu vật, đánh đu, leo cột mỡ, đi cà kheo, đánh cờ…Trong đó đua thuyền là vui vẻ và độc đáo nhất. Trong đó, hát đối, đấu vật, đánh đu là kéo dài ngày nhất.'),
(12, '41.jpg', 'VMT', 'Lễ hội vía Bà (An Nhơn, Bình Định)', 'Lễ hội vía Bà khai mạc vào ngày 17 tháng Giêng âm lịch. Đây là lễ hội truyền thống ở miền Trung được tổ chức hàng năm để tưởng nhớ công ơn đức độ của Bà Đỗ Thị Tân. Bởi bà Tân là người đỡ đẻ rất có tâm. Người chẳng ngại đêm hôm đường sá xa xôi, chỉ cần nơi nào có sản phụ sinh nở bà đều có mặt giúp các sinh linh chào đời bình an. Vì vậy, để tưởng nhớ, dân làng lập miếu thờ ngay trên mảnh đất nơi bà sinh sống ngày xưa.'),
(13, '17.jpg', 'VMN', 'Lễ hội đua voi', 'Được tổ chức hằng năm vào tháng Ba âm lịch, hội diễn ra ở Buôn Đôn hoặc ở những cánh rừng thưa nằm ven dòng sông Sêvepốc.\r\nTrước khi vào cuộc đua, một tiếng tù và cất lên, từng tốp voi được nhưng người quản tượng điều khiển đứng vào vị trí xuất phát. Khi có lệnh xuất phát, những chú voi sẽ thi nhau phóng về phía trước trong tiếng chiêng, trống, hò reo cổ vũ vang cả núi rừng.'),
(14, '32.jpg', 'VMN', 'Lễ hội đâm trâu', 'Là lễ hội khá phổ biến của đồng bào các dân tộc thiểu số ở Tây nguyên và ở phía Bắc của vùng Đông Nam bộ. Lễ đâm trâu diễn ra vào lúc nông nhàn,tức vào khoảng tháng Ba hoặc tháng Tư âm lịch. Đối với đồng bào các dân tộc ở tây Nguyên, con trâu thường được sử dụng làm vật tế thần linh bởi chúng biểu tượng cho sự phồn thịnh. Thịt trâu được người dân trong buôn chia nhau để ăn mừng.'),
(15, '18.jpg', 'VMN', 'Lễ hội Bà Chúa Xứ', 'Là lễ hội dân gian lớn nhất ở Nam Bộ. Lễ hội được tổ chức từ đêm ngày 23 đến 27 tháng Tư âm lịch hàng năm.Trong những ngày lễ diễn ra tại miếu Bà Chúa xứ ở núi Sam (tỉnh An Giang), nhiều hoạt động văn hóa như múa bóng, hát bội diễn ra.Đêm ngày 23, nghi thức tắm Bà diễn ra thu hút đông đảo người xem. Sau đó tượng Bà được đưa xuống và dùng nước mưa pha với nước hoa để tắm.'),
(16, '42.jpg', 'VMN', 'Lễ hội Ok Om Bok', 'Lễ hội có tên khác là lễ cúng Trăng của đồng bào dân tộc Khmer Nam Bộ, được tổ chức vào đúng hôm rằm và được bắt đầu từ khi trăng lên.Xuất phát từ tín ngưỡng dân gian, mặt trăng được biết là thần bảo vệ mùa màng, nên người Khmer thường tổ chức lễ hội Ok Om Bok vào ngày rằm tháng 10 âm lịch hằng năm như để cảm ơn các vị thần đã cho mưa thuận, gió hòa và mùa bội thu… '),
(17, '43.jpg', 'VMN', 'Lễ cơm mới', 'Đối với đồng bào các dân tộc thiểu số ở Tây nguyên, thần lúa là được tôn trọng không kém các thần khác. Sau khi thu hoạch hàng năm, người ta tổ chức lễ ăn cơm mới, để tạ ơn thần, và thể hiện sự vui mừng chung hưởng kết quả của một quá trình mệt nhọc.Lễ mừng thu hoạch của người Mạ là lễ hội lớn nhất trong năm và thường kéo dài 7 ngày.Cuối cùng là lễ đóng cửa kho.'),
(18, '44.jpg', 'VMN', 'Lễ hội Dinh Cô', 'Là một khu đền có kiến trúc khá hoành tráng nằm hai bên bờ biển Long Hải (thuộc tỉnh Bà Rịa – Vũng Tàu). Đây là nơi thờ một cô gái giàu lòng nhân ái, bị nạn sau một lần đi biển. Lễ hội Dinh Cô kéo dài 2 ngày từ 10 đến 12 tháng Hai âm lịch. Các vị cao niên (chủ lễ) thường mặc lễ phục trang nghiêm và có những lời cầu nguyện mưa thuận gió hòa, quốc thái dân an.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id` int(5) NOT NULL,
  `id_vung` varchar(10) NOT NULL,
  `tendm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id`, `id_vung`, `tendm`) VALUES
(2, 'TMN', 'Tour Miền Nam'),
(3, 'TMT', 'Tour Miền Trung'),
(17, 'TMB', 'Tour Miền Bắc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourviet_data`
--

CREATE TABLE `tourviet_data` (
  `id_tour` int(10) NOT NULL,
  `tenvung` varchar(10) NOT NULL,
  `hinhanh` varchar(25) NOT NULL,
  `tendiadiem` varchar(50) NOT NULL,
  `giatour` int(50) NOT NULL,
  `matour` varchar(10) NOT NULL,
  `thoigian` varchar(50) NOT NULL,
  `gioithieu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tourviet_data`
--

INSERT INTO `tourviet_data` (`id_tour`, `tenvung`, `hinhanh`, `tendiadiem`, `giatour`, `matour`, `thoigian`, `gioithieu`) VALUES
(1, 'TMN', 'baclieu.jpg', 'Bạc Liêu ', 1999000, 'TBL', '2 ngày 1 đêm', 'Bạc Liêu là một tỉnh nằm ở vùng đồng bằng sông Cửu Long, phía Nam Việt Nam. Với khí hậu ôn đới, Bạc Liêu có nhiều điểm tham quan nổi tiếng như rừng Tràm Chim, đài Phật Học, khu di tích Vườn Cọp, bãi biển Nha Mat... Bạc Liêu cũng nổi tiếng với các sản phẩm như tôm khô, cá linh, bún nước lèo, bánh xèo... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách có thể tham gia vào các hoạt động như câu cá, đi thuyền, ẩm thực và tìm hiểu về văn hóa của địa phương. Bạc Liêu là một địa điểm du lịch hấp dẫn tại miền Nam Việt Nam.'),
(2, 'TMN', 'camau.jpg', 'Cà Mau', 2999000, 'TCM', '3 ngày 2 đêm', 'Cà Mau là một tỉnh nằm ở miền Nam Việt Nam, là địa điểm cuối cùng của đất liền Việt Nam về phía Nam. Với địa hình phẳng bằng ven biển, Cà Mau có nhiều địa danh đẹp như mũi Cà Mau, rừng U Minh Hạ, khu du lịch sinh thái Mũi Nai, hòn Đất... Cà Mau còn nổi tiếng với các sản phẩm như tôm khô, cá linh, bún kẹp, bún cá... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách đến Cà Mau có thể tham gia các hoạt động như câu cá, đi thuyền, ẩm thực và tìm hiểu về văn hóa của địa phương. Cà Mau là một điểm đến du lịch hấp dẫn tại miền Nam Việt Nam.'),
(3, 'TMN', 'soctrang.jpg', 'Sóc Trăng', 3999000, 'TST', '4 ngày 3 đêm ', 'Sóc Trăng là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, là một địa điểm du lịch hấp dẫn với nhiều điểm tham quan đẹp như chùa Dơi, khu di tích Phương Tràm, rừng Tràm Chim, bảo tàng tỉnh Sóc Trăng... Sóc Trăng còn nổi tiếng với các sản phẩm như Mắm cá sặc, bánh pía, bánh phồng tôm, bánh đúc Sóc Trăng... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách đến Sóc Trăng có thể tham gia các hoạt động như tham quan đền chùa, ẩm thực và tìm hiểu về văn hóa địa phương. Sóc Trăng là một địa điểm du lịch thú vị ở miền Tây Nam Bộ Việt Nam.'),
(4, 'TMN', 'vinhlong.jpg', 'Vĩnh Long', 2999000, 'TVL', '3 ngày 2 đêm', 'Vĩnh Long là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với vùng đất trù phú, những con kênh và sông nước liên tục. Với nhiều điểm tham quan đẹp như chợ Long Hồ, chùa Từ Tân, di tích lịch sử giặc Tây Nguyên, vườn dừa Tiền Giang... Vĩnh Long còn nổi tiếng với các sản phẩm như dừa sáp, mật ong, trái cây miền tây... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách đến Vĩnh Long có thể tham gia vào các hoạt động như đi thuyền, câu cá, ẩm thực và tìm hiểu về văn hóa địa phương. Vĩnh Long là một địa điểm du lịch thú vị ở miền Tây Nam Bộ Việt Nam.'),
(5, 'TMN', 'tiengiang.jpg', 'Tiền Giang', 1999000, 'TTG', '2 ngày 1 đêm', 'Tiền Giang là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với các điểm du lịch nổi tiếng như cụm di tích núi Tắc, khu du lịch sinh thái Tràm Chim, đền thờ Nguyễn Trung Trực, đài tưởng niệm Nguyễn Sinh Sắc... Tiền Giang còn nổi tiếng với các sản phẩm như bánh pía, mứt sen, mứt bí, mật ong... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du kháchến Tiền Giang có thể tham gia vào các hoạt động như đi thuyền, câu cá, ẩm thực và tìm hiểu về văn hóa địa phương. Tiền Giang là một địa điểm du lịch hấp dẫn ở miền Tây Nam Bộ Việt Nam. '),
(6, 'TMN', 'vungtau.jpg', 'Thành Phố Vũng Tàu', 4999000, 'TVT', '5 ngày 4 đêm', 'Vũng Tàu là một thành phố ven biển nằm ở miền Đông Nam Bộ Việt Nam, được biết đến với các bãi biển đẹp như bãi Trước, bãi Dứa, bãi Sau... Vũng Tàu còn có nhiều điểm tham quan nổi tiếng như đồi Châu Pha, đền thờ Thích Ca Phật Đài, hải đăng Vũng Tàu, khu du lịch sinh thái Hồ Mây... Nơi đây còn nổi tiếng với các sản phẩm như hải sản tươi sống, bánh khô mè, bánh kẹo Vũng Tàu... Du khách đến Vũng Tàu có thể tham gia các hoạt động như tắm biển, đi dạo, ẩm thực và tìm hiểu về lịch sử và văn hóa địa phương. Vũng Tàu là một điểm đến du lịch hấp dẫn ở miền Đông Nam Bộ Việt Nam.'),
(7, 'TMN', 'cantho.jpg', 'Cần Thơ ', 1999000, 'TCT', '2 ngày 1 đêm', 'Cần Thơ là một thành phố lớn nằm ở miền Tây Nam Bộ Việt Nam, còn được gọi là \"Tây Đô\". Cần Thơ được biết đến với nhiều điểm tham quan đẹp như cầu Cần Thơ, bến Ninh Kiều, chợ nổi Cái Răng, khu du lịch sinh thái Tràm Chim, đền Ông... Nơi đây còn nổi tiếng với các sản phẩm như bánh xèo, bánh tét, bánh còng, bún riêu Cần Thơ... Cần Thơ còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách đến Cần Thơ có thể tham gia vào các hoạt động như đi thuyền, câu cá, ẩm thực và tìm hiểu về văn hóa địa phương. Cần Thơ là một địa điểm du lịch hấp dẫn ở miền Tây Nam Bộ Việt Nam.'),
(8, 'TMN', 'phuquoc.jpg', 'Phú Quốc', 2999000, 'TPQ', '3 ngày 2 đêm', 'Phú Quốc là một hòn đảo lớn nằm ở phía Nam của Việt Nam, được biết đến với các bãi biển đẹp như bãi Sao, bãi Dài, bãi Khem... Phú Quốc còn có nhiều điểm tham quan nổi tiếng như vườn thú Safari, chợ đêm Dinh Cậu, nhà thờ Giáo xứ Gành Dầu, quần thể Suối Tranh... Nơi đây còn nổi tiếng với các sản phẩm như nước mắm Phú Quốc, hàu, mực, ngao đá, cua... Du khách đến Phú Quốc có thể tham gia các hoạt động như lặn biển, đi chơi đảo, tắm biển và thưởng th các món ăn đặc sản địa phương. Phú Quốc là một điểm đến du lịch hấp dẫn ở miền Nam của Việt Nam.'),
(9, 'TMN', 'chaudoc.jpg', 'Châu Đốc', 3999000, 'TCD', '4 ngày 3 đêm ', 'Châu Đốc là một thành phố nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với các điểm tham quan đẹp như chùa Bà Chúa Xứ, hang Pagoda, chợ nổi Châu Đốc, khu du lịch sinh thái Tắc Cậu... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa, Chăm... Châu Đốc còn nổi tiếng với các sản phẩm như cá linh, bánh tét Châu Đốc, bún cá, chả cá... Du khách đến Châu Đốc có thể tham gia các hoạt động như đi thuyền, câu cá, ẩm thực và tìm hiểu về văn hóa địa phương. Châu Đốc là một địa điểm du lịch thú vị ở miền Tây Nam Bộ Việt Nam.'),
(10, 'TMN', 'bentre.jpg', 'Bến Tre', 2999000, 'TBT', '3 ngày 2 đêm', 'Bến Tre là một tỉnh nằm ở miền Đồng Bằng Sông Cửu Long Việt Nam, được biết đến với các điểm tham quan đẹp như chùa Tuyền Lâm, khu du lịch sinh thái Vam Ho, cồn cát Cù Lao Chàm, khu di tích Khuông Việt... Nơi đây còn nổi tiếng với các sản phẩm như dừa, mít, xoài, bánh tráng Bến Tre, mắm cá linh... Bến Tre còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Khmer, Hoa... Du khách đến Bến Tre có thể tham gia các hoạt động như đi thuyền, câu cá, ẩm thực và tìm hiểu về văn hóa địa phương. Bến Tre là một địa điểm du lịch hấp dẫn ở miền Đồng Bằng Sông Cửu Long Việt Nam.'),
(11, 'TMN', 'tramchim.jpg', 'Tràm Chim', 1999000, 'TTC', '2 ngày 1 đêm', 'Tràm Chim là một khu bảo tồn thiên nhiên quan trọng nằm ở tỉnh Đồng Tháp, miền Tây Nam Bộ Việt Nam. Khu vực này có diện tích khoảng 7.300 ha, là nơi sinh sống của hàng trăm loài động vật và thực vật quý hiếm. Nơi đây còn là điểm đến của các nhà khoa học và nhà bảo tồn thiên nhiên đến từ khắp nơi trên thế giới. Tràm Chim được biết đến với các loài chim quý như cò trắng, diệc, ngỗng trời, sếu đầu đỏ... Du khách đến Tràm Chim có thể tham gia các hoạt động như tham quan, tắm nắng, ngắm chim và tìm hiểu về hệ sinh thái đầm lầy, vùng đồng bằng sông Cửu Long. Tràm Chim là một điểm đến du lịch hấp dẫn ở miền Tây Nam Bộ Việt Nam.'),
(12, 'TMN', 'saigon.jpg', 'Thành Phố Hồ Chí Minh', 4999000, 'THCM', '5 ngày 4 đêm', 'Sài Gòn, hay còn gọi là Thành phố Hồ Chí Minh, là một trong những thành phố lớn nhất Việt Nam và cũng là trung tâm kinh tế, văn hóa, giáo dục và du lịch của đất nước. Sài Gòn nổi tiếng với các điểm tham quan như cung điện Thống Nhất, nhà hát lớn, chợ Bến Thành, phố đi bộ Nguyễn Huệ... Nơi đây còn có nhiều di tích lịch sử, kiến trúc độc đáo và nhiều công trình văn hóa, giáo dục quan trọng. Sài Gòn còn nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món phở, bánh mì, bánh xèo, hủ tiếu... Du khách đến Sài Gòn có thể tham gia nhiều hoạt động như mua sắm, ăn uống, tham quan và tìm hiểu về lịch sử và văn hóa địa phương. Sài Gòn là một điểm đến hấp dẫn và năng động của Việt Nam.'),
(13, 'TMT', 'danang.jpg', 'Đà Nẵng', 4999000, 'TDN', '5 ngày 4 đêm', 'Đà Nẵng là một thành phố nằm ở miền Trung Việt Nam, được biết đến với các điểm tham quan đẹp như bán đảo Sơn Trà, cầu Rồng, phố cổ Hội An, bãi biển Mỹ Khê, bán đảo Liên Chiểu... Nơi đây còn có nhiều di tích lịch sử và văn hóa độc đáo như đền Công, chùa Linh Ứng, cầu Trần Thị Lý... Đà Nẵng còn nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món mì Quảng, bánh xèo... Du khách đến Đà Nẵng có thể tham gia các hoạt động như tắm biển, lặn biển, ẩm thực và tham quan các điểm đến du lịch. Đà Nẵng là một điểm đến du lịch hấp dẫn và đầy sức sống của Việt Nam.'),
(14, 'TMT', 'quynhon.jpg', 'Quy Nhơn', 3999000, 'TQN', '4 ngày 3 đêm', 'Quy Nhơn là một thành phố nằm ở miền Trung Việt Nam, được biết đến với các bãi biển đẹp như bãi biển Quy Nhơn, khu du lịch Eo Gió, bãi tắm Ghềnh Ráng, bãi Xep... Nơi đây còn có nhiều di tích lịch sử và văn hóa độc đáo như chùa Long Khanh, đền thờ Bà Đại, đền thờ Lý Bạch... Quy Nhơn cũng nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món hải sản, bánh xèo, bánh căn... Du khách đến Quy Nhơn có thể tham gia các hoạt động như tắm biển, lặn biển, tham quan các điểm đến du lịch và tìm hiểu văn hóa địa phương. Quy Nhơn là một điểm đến du lịch tuyệt vời tại Việt Nam.'),
(15, 'TMT', 'nhatrang.jpg', 'Nha Trang ', 3999000, 'TNT', '4 ngày 3 đêm', 'Nha Trang là một thành phố nằm ở miền Trung Việt Nam, được biết đến với bãi biển cát trắng dài và nước biển trong xanh. Nơi đây có nhiều điểm tham quan đẹp như đảo Hòn Tằm, tháp Bà Ponagar, thác Yangbay, khu du lịch Vinpearl... Nha Trang còn nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món hải sản, bún chả cá... Du khách đến Nha Trang có thể tham gia các hoạt động thể thao nước như lặn biển, lướt sóng, đi thuyền, tắm biển và thư giãn tại các khu resort sang trọng. Nha Trang là một điểm đến du lịch hấp dẫn và nổi tiếng ở Việt Nam.'),
(16, 'TMT', 'phanthiet.jpg', 'Phan Thiết', 2999000, 'TPT', '3 ngày 2 đêm ', 'Phan Thiết là một thành phố nằm ở miền Đông Nam Bộ Việt Nam, được biết đến với các bãi biển đẹp như Mũi Né, Hòn Rơm, Bãi Dứa, khu du lịch Tà Cú... Nơi đây còn có nhiều di tích lịch sử và văn hóa độc đáo như tháp Chăm Po Klong Garai, đền thờ Cao Đài, đền thờ Thần Linh... Phan Thiết cũng nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món hải sản, bún bò, chả giò... Du khách đến Phan Thiết có thể tham gia các hoạt động nh tắm biển, lướt sóng, đi phượt, tham quan các điểm đến du lịch và tìm hiểu văn hóa địa phương. Phan Thiết là một điểm đến du lịch hấp dẫn của miền Nam Việt Nam.'),
(17, 'TMT', 'phuyen.jpg', 'Phú Yên', 1999000, 'TPY', '2 ngày 1 đêm', 'Phú Yên là một tỉnh nằm ở miền Trung Việt Nam, được biết đến với các điểm tham quan đẹp như đồi Champa, hòn Đá Bia, bãi Xép, bãi Đại Lãnh, mũi Điện... Nơi đây còn có nhiều di tích lịch sử và văn hóa độc đáo như đền thờ Ngọc Lâm, chùa Long Sơn, đền thờ Bà Đệ... Phú Yên cũng nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món hải sản, bánh xèo, bánh canh... Du khách đến Phú Yên có thể tham gia các hoạt động như tắm biển, lặn biển, đi phượt, tham quan các điểm đến du lịch và tìm hiểu văn hóa địa phương. Phú Yên là một điểm đến du lịch hấp dẫn và đầy sức sống của Việt Nam.'),
(18, 'TMT', 'hoian.jpg', 'Hội An', 2999000, 'THA', '3 ngày 2 đêm', 'Hội An là một thành phố cổ nằm ở miền Trung Việt Nam, được UNESCO công nhận là di sản văn hóa thế giới. Nơi đây có nhiều điểm tham quan đẹp như phố cổ Hội An, cầu Nhật Lệ, chùa Cầu, đền chùa Bà... Hội An còn có nhiều di tích lịch sử và văn hóa độc đáo như quảng trường cổ đại Hội An, nhà cổ Đức An, dinh Võ Tấn Tốc... Hội An còn nổi tiếng với ẩm thực đa dạng và phong phú, đặc biệt là các món bánh bao, mì Quảng, bánh đập... Du khách đến Hội An có thể tham gia các hoạt động như mua sắm, ăn uống, tham quan và tìm hiểu văn hóa địa phương. Hội An là một điểm đến du lịch hấp dẫn và rất đặc biệt của Việt Nam.'),
(19, 'TMB', 'langson.jpg', 'Lạng Sơn', 2999000, 'TLS', '2 ngày một đêm', 'Lạng Sơn là một tỉnh nằm ở phía Đông Bắc Việt Nam, giáp biên giới với Trung Quốc. Với vị trí địa lý đặc biệt, Lạng Sơn có nhiều danh lam thắng cảnh đẹp như Đền Tổ Quốc, Đồi Cao Lãnh, Thác Bản Giốc, Hang Cột...Ngoài ra, Lạng Sơn còn có nhiều di sản văn hóa lịch sử như Thành Cổ Lạng Sơn, Lăng Tổ Quốc Trần Đại Nghĩa và Đền Thành Hùng... Du khách có thể tham quan, khám phá văn hóa, ẩm thực và cảnh quan tuyệt đẹp của Lạng Sơn.'),
(20, 'TMB', 'bavi.jpg', 'Ba Vì', 1999000, 'TBV', '3 ngày 2 đêm ', 'Ba Vì là một huyện thuộc tỉnh Hà Nội, nằm ở phía Tây Nam thủ đô. Với địa hình đa dạng, từ đồi núi, rừng thông, sông suối đến những thác nước, hồ nước, Ba Vì được biết đến như một điểm đến du lịch nổi tiếng. Các địa điểm du lịch nổi bật ở Baì như Khu Du lịch sinh thái Suối Mơ, Thác Đen, Chùa Thầy, Vườn quốc gia Ba Vì, Đền Bà Chúa Thượng Ngàn... Nơi đây cũng là nơi lý tưởng để trốn nóng trong mùa hè hay thưởng thức không khí se lạnh của mùa đông.'),
(21, 'TMB', 'thainguyen.jpg', 'Thái Nguyên ', 2999000, 'TTN', '4 ngày 3 đêm', 'Thái Nguyên là một tỉnh nằm ở phía Bắc Việt Nam, có vị trí địa lý chiến lược giữa Hà Nội và các tỉnh phía Bắc. Thái Nguyên là vùng đất với nền văn hóa lâu đời, nơi từng là trung tâm của văn hóa Đông Sơn. Với nhiều danh lam thắng cảnh nổi tiếng như khu di tích Cố đô Lam Kinh, thác Bản Giốc, đo Mã Phục, đền Hùng Lạc Loài, đền Phù Đổng Thiên Vương..., Thái Nguyên là một điểm đến du lịch hấp dẫn. Ngoài ra, Thái Nguyên còn nổi tiếng với các sản phẩm du lịch như cà phê, trà, lụa, thủ công mỹ nghệ.'),
(22, 'TMB', 'tamdao.jpg', 'Tam Đảo', 2999000, 'TTD', '2 ngày một đêm', ' Tam Đảo là một địa danh nổi tiếng nằm ở huyện Tam Đảo, tỉnh Vĩnh Phúc cách Hà Nội khoảng 80km về phía Bắc. Được biết đến như một khu du lịch nghỉ dưỡng lý tưởng, Tam Đảo là nơi có khí hậu mát mẻ, trong lành quanh năm. Với địa hình đa dạng, từ đồi núi, thác nước, rừng thông đến các khu vườn hoa, cảnh quan tại Tam Đảo rất đẹp và thu hút du khách. Ngoài ra, Tam Đảo còn có nhiều điểm tham quan nổi tiếng như chùa Thầy, dinh Tam Đảo, Hồ Đại Lải, bảo tàng Tản Viên... Đến Tam Đảo, du khách có thể thưởng thức ẩm thực địa phương và mua sắm các sản phẩm lưu niệm độc đáo.'),
(23, 'TMB', 'haiphong.jpg', 'Hải Phòng ', 2999000, 'THP', '4 ngày 3 đêm', 'Hải Phòng là một thành phố trực thuộc Trung ương nằm ở vùng Đông Bắc Việt Nam, giáp biển Đông và là trung tâm kinh tế, văn hóa và du lịch của miền Bắc. Hải Phòng có nhiều di sản lịch sử văn hóa như Cảng Hải Phòng, Đền Bạch Mã, Lăng Chủ tịch Trần Phú, Tháp Đồng Đăng... Nơi đây có nhiều bãi biển đẹp như Bãi Cháy, Cát Bà, Do Son, Vân Đồn, Quảng Ninh... cùng nhiều khu vui chơi giải trí, khu du lịch sinh thái như Vườn quốc gia Cát Bà, Vườn quốc gia Bạch Long Vĩ, Khu sinh thái Bến Nhà Rồng... Hải Phòng cũng nổi tiếng với các món ăn đặc sản như nem cua bể, bún đậu mắm tôm, chả cá Hải Phòng, bánh đa cua...'),
(24, 'TMB', 'caobang.jpg', 'Cao Bằng ', 4999000, 'TCB', '3 ngày 2 đêm ', 'Cao Bằng là một tỉnh nằm ở vùng Đông Bắc Việt Nam, giáp biên giới với Trung Quốc và là quê hương của Tổng Bí thư Hồ Chí Minh. Với địa hình đa dạng, từ đồi núi, thác nước, động hang, suối khoáng đến những cánh đồng lúa bậc thang, Cao Bằng có nhiều điểm đến du lịch nổi tiếng như thác Bản Giốc, động Ngườm Ngao, đền Tản Viên, khu sinh thái Quảng Uyên, khu di tích lịch sử Cốc Bó, vườn quốc gia Ba Bể... Cao Bằng cũng nổi tiếng với các sản phẩm như rượu ngô, mật ong, bánh tráng phơi sương, bánh khảo... Nơi đây còn là địa điểm lý tưởng để khám phá và tìm hiểu văn hóa của các dân tộc thiểu số.'),
(25, 'TMB', 'hagiang.jpg', 'Hà Giang ', 3500000, 'THG', '4 ngày 3 đêm', 'Hà Giang là một tỉnh miền núi nằm ở phía Bắc Việt Nam, giáp biên giới với Trung Quốc. Với địa hình đa dạng, từ đồi núi, suối khoáng, thác nước đến các thung lũng, đèo và cánh đồng lúa bậc thang, Hà Giang là một điểm đến du lịch hp dẫn. Nơi đây có nhiều điểm tham quan nổi tiếng như chợ phiên Mèo Vạc, đèo Mã Pí Lèng, cánh đồng lúa bản Vọng, thác Bản Giốc, đền thờ vua Mèo... Hà Giang còn nổi tiếng với các sản phẩm như rượu thổi, mật ong, bánh cuốn... Du khách đến Hà Giang có thể tham gia các hoạt động như trekking, leo núi, thăm các bản làng dân tộc thiểu số và tìm hiểu văn hóa của họ.'),
(26, 'TMB', 'hanoi.jpg', 'Hà Nội ', 3500000, 'THN', '4 ngày 3 đêm', ' Hà Nội là thủ đô và là trung tâm chính trị, văn hóa và kinh tế của Việt Nam. Với lịch sử lâu đời, Hà Nội có nhiều di tích lịch sử, văn hóa và kiến trúc như Văn Miếu - Quốc Tử Giám, Hoàng Thành Thăng Long, cầu Thê Húc, Hồươm, khu phố cổ Hà Nội... Đến Hà Nội, bạn còn có thể thưởng thức các món ăn đặc sản như phở, bún chả, nem rán, chả cá Lã Vọng... Ngoài ra, Hà Nội còn có nhiều khu vui chơi giải trí, khu du lịch sinh thái như Thung Nai, Tam Đảo, Hoà Bình, Mai Châu... Hà Nội thu hút du khách bởi vẻ đẹp kết hợp giữa sự truyền thống và hiện đại.'),
(27, 'TMB', 'thaibinh.jpg', 'Thái Bình ', 1999000, 'TTB', '3 ngày 2 đêm ', 'Thái Bình là một tỉnh nằm ở vùng đồng bằng sông Hồng, phía Bắc Việt Nam. Với vị trí thuận tiện, từ Thái Bình bạn có thể dễ dàng di chuyển đến các điểm du lịch lân cận như Hà Nội, Hạ Long, Ninh Bình... Thái Bình có nhiều di sản lịch sử, văn hóa và kiến trúc như Đền Kính Thần, đền Trần, chùa Keo, chùa Dâu... Nơi đây cũng nổi tiếng với các món ăn đặc sản như bánh đa cá lóc, nem Thái Bình, bánh gối, chả cá... Thái Bình còn có nhiều khu du lịch sinh thái như khu di tích đền Kính Thần, khu du lịch sinh thái Bình Định... Thái Bình là một địa điểm lý tưởng để tìm hiểu về văn hóa và ẩm thực đặc trưng của miền đồng bằng sông Hồng.'),
(28, 'TMB', 'sonla.jpg', 'Sơn La', 3999000, 'TSL', '4 ngày 3 đêm', 'Sơn La là một tỉnh nằm ở Tây Bắc Việt Nam, có địa hình đa dạng với những dãy núi cao, thác nước, hồ nước và rừng phong phú. Sơn La có nhiều điểm tham quan nổi tiếng như thác Mơ, hang Động Mười, hồ Nậm Mu, khu du lịch sinh thái Mộc Châu, thị trấn Tuần Giáo... Sơn La cũng nổi tiếng với các sản phẩm như rượu táo mèo, mật ong, bánh mè xửng, bơ Sơn La... Nơi đây còn là nơi gắn liền với văn hóa của các dân tộc thiểu số như Mông, Thái, Mường, Dao... Du khách đến Sơn La có thể tham gia các hoạt động như leo núi, trekking, đi bộ đường dài và tìm hiểu về văn hóa của các dân tộc ở đây.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_images`
--

CREATE TABLE `tour_images` (
  `id` int(6) NOT NULL,
  `tour_id` int(6) NOT NULL,
  `image_url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tour_images`
--

INSERT INTO `tour_images` (`id`, `tour_id`, `image_url`) VALUES
(1, 25, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `matkhau` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `matkhau`, `email`, `fullname`, `birthday`) VALUES
(1, 'ITKha_251', '14555', 'ngockha123a@gmail.com', 'Nguyễn Ngọc Khả ', '2023-04-05'),
(2, 'khanguyen', '1234455', 'ngockha123a@gmail.com', 'Nguyễn Ngọc Khả ', '2023-04-05'),
(3, 'khanguyen12', '12345', 'lionelkha5@gmail.com', 'Nguyễn Ngọc Khả Mai', '2023-05-25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matour` (`matour`),
  ADD KEY `matour_2` (`matour`);

--
-- Chỉ mục cho bảng `diemden_data`
--
ALTER TABLE `diemden_data`
  ADD PRIMARY KEY (`id_diemden`);

--
-- Chỉ mục cho bảng `lehoi`
--
ALTER TABLE `lehoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tourviet_data`
--
ALTER TABLE `tourviet_data`
  ADD PRIMARY KEY (`id_tour`),
  ADD KEY `matour` (`matour`);

--
-- Chỉ mục cho bảng `tour_images`
--
ALTER TABLE `tour_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY` (`tour_id`);

--
-- Chỉ mục cho bảng `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `diemden_data`
--
ALTER TABLE `diemden_data`
  MODIFY `id_diemden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `lehoi`
--
ALTER TABLE `lehoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tourviet_data`
--
ALTER TABLE `tourviet_data`
  MODIFY `id_tour` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tour_images`
--
ALTER TABLE `tour_images`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD CONSTRAINT `Fk_diemden_id` FOREIGN KEY (`id`) REFERENCES `diemden_data` (`id_diemden`),
  ADD CONSTRAINT `Fk_tourviet_id` FOREIGN KEY (`id`) REFERENCES `tourviet_data` (`id_tour`);

--
-- Các ràng buộc cho bảng `tour_images`
--
ALTER TABLE `tour_images`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`tour_id`) REFERENCES `tourviet_data` (`id_tour`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
