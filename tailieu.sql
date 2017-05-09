-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2017 at 05:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `loai_tai_lieu`
--

CREATE TABLE `loai_tai_lieu` (
  `id` int(11) NOT NULL,
  `ten_loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_tai_lieu`
--

INSERT INTO `loai_tai_lieu` (`id`, `ten_loai`) VALUES
(1, 'Toán học'),
(2, 'Vật lý'),
(3, 'Hóa học'),
(4, 'Tiếng Anh'),
(5, 'Ngữ Văn'),
(6, 'Sử - Địa - GDCD');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tai_lieu`
--

CREATE TABLE `tai_lieu` (
  `id` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `tac_gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_chinh` text COLLATE utf8_unicode_ci NOT NULL,
  `nam_phat_hanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_trang` int(11) NOT NULL,
  `gioi_thieu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tai_lieu`
--

INSERT INTO `tai_lieu` (`id`, `ten`, `images`, `link`, `ma_loai`, `tac_gia`, `noi_dung_chinh`, `nam_phat_hanh`, `so_trang`, `gioi_thieu`) VALUES
(1, 'Các dạng toán ứng dụng thực tế', 'toan-thuc-te.jpg', '0BwAaSf8Rudj0X3AtSVBBRUZDN0k', 1, 'Đặng Việt Đông', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Chuyên đề bài toán ứng dụng thực tiễn có đáp án và lời giải chi tiết', 'N/A', 168, 'Bài tập trắc nghiệm về 6 dạng Toán ứng dụng thực tiễn thường gặp: Đạo hàm, GTLN - GTNN của hàm số, hình đa diện, hàm số mũ - hình nón - trụ - cầu, nguyên hàm - tích phân.'),
(2, 'Tiếp cận 11 chuyên đề trọng tâm giải nhanh trắc nghiệm Toán', 'tiep-can-11-chuyen-de-toan.jpg', '0BwAaSf8Rudj0QUxrUWdIRnBMdGM', 1, 'Trần Công Diêu', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia 2017 môn Toán, Tài liệu Megabook môn Toán', '2017', 449, 'Sách gồm 2 phần:\r\n+ Phần A. Các chuyên đề Toán THPT\r\n+ Phần B. 5 đề minh họa kỳ thi THPT Quốc gia 2017'),
(3, 'Tuyển chọn 36 đề thi thử THPT Quốc gia 2017 môn Toán có đáp án', '36-de-thi-toan.png', '0BwAaSf8Rudj0U1FzR0FLQkRJM3c', 1, 'N/A', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia 2017 môn Toán', '2017', 332, 'Các đề thi được chọn lọc kỹ càng, đảm bảo sát với cấu trúc đề thi minh họa của Bộ GD và ĐT, tất cả các đề thi thử đều có đáp án.'),
(4, 'Tổng ôn trắc nghiệm Toán 2017 (Phần 2: Hình học và bài toán thực tế)', 'tong-on-trac-nghiem-toan-p2.jpg', '0BwAaSf8Rudj0WVVGajBUNlE4bGM', 1, 'Đào Đăng Đạt', 'Tài liệu ôn thi THPT Quốc gia 2017 môn Toán', '2017', 899, 'Phần tiếp theo của cuốn Tổng ôn trắc nghiệm Toán 2017 - Đào Đăng Đạt (Phần 1: Đại số và Giải tích)\r\n'),
(5, 'Tổng ôn trắc nghiệm Toán 2017 (Phần 1: Đại số và Giải tích)', 'tong-on-trac-nghiem-toan-p1.jpg', '0BwAaSf8Rudj0cnhOWUlxZzhQWjg', 1, 'Đào Đăng Đạt', 'Tài liệu ôn thi THPT Quốc gia môn Toán', '2017', 779, 'Cuốn sách gồm 13 chương. Mỗi chương sẽ chia làm 3 phần:\r\n+ Phần đầu: Kiến thức cơ bản\r\n+ Phần 2: Các dạng bài và ví dụ minh họa\r\n+ Phần 3: Bài tập ôn luyện và tổng hợp'),
(6, 'Trắc nghiệm và tự luận phương pháp tọa độ trong không gian Oxyz', 'toa-do-oxyz.jpg', '0BwAaSf8Rudj0RC1OcDV5b1pnaDg', 1, 'Nguyễn Quốc Thịnh', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Chuyên đề Oxyz', '2017', 223, 'Nội dung cuốn tài liệu bám sát nội dung kiến thức trong cấu trúc ĐỀ MINH HỌA của Bộ GD&ĐT và SGK Hình học 12 Cơ bản.'),
(7, 'Tuyển tập 43 đề thi trắc nghiệm lớp 12 môn Toán có đáp án', 'tuyen-tap-de-thi-toan-12.png', '0BwAaSf8Rudj0a2J1NnFXRll3bkE', 1, 'N/A', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia 2017 môn Toán', '2017', 262, 'Sách gồm 43 đề trắc nghiệm Toán 12, trong có gồm các đề thi HK1 và đề thi thử THPT Quốc gia 2017 môn Toán học của các trường THPT và Sở GD&ĐT trên toán quốc. Các đề thi đều có đáp án'),
(8, 'Hướng dẫn ôn tập kỳ thi THPT Quốc gia 2016 - 2017 môn Toán', 'huong-dan-on-tap-toan.png', '0BwAaSf8Rudj0NXNJcWkxV2hOZWM', 1, 'Đoàn Quỳnh', 'Tài liệu ôn thi THPT Quốc gia môn Toán', '2017', 246, 'Sách do Nhà xuất bản Giáo dục Việt Nam phát hành'),
(9, 'Chinh phục nguyên hàm - tích phân từ A đến Z', 'chinh-phuc-nguyen-ham-tich-phan-tu-a-den-z.jpg', '0BwAaSf8Rudj0dEU0bHhmMHIwSWs', 1, 'Nguyễn Hữu Bắc', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Chuyên đề nguyên hàm và tích phân', '2016', 478, 'Sách gồm lý thuyết, phân dạng, ví dụ và các bài tập có lời giải nguyên hàm - tích phân'),
(10, 'Tổng ôn tập chuyên đề Hình học không gian', 'hinh-hoc-khong-gian.png', '0BwAaSf8Rudj0YzFvWkJONERrdVE', 1, 'Nguyễn Anh Trường', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Chuyên đề Hình học không gian', '2014', 473, 'Sách gồm các phần sau:\r\nA. Tóm tắt sách giáo khoa\r\nB. Các dạng toán\r\nC. Bài tập tổng hợp'),
(11, 'Chinh phục câu hỏi phụ khảo sát hàm số từ A đến Z', 'khao-sat-ham-so.jpg', '0BwAaSf8Rudj0Q3Z4U2RKTDNPVFU', 1, 'Nguyễn Hữu Bắc, Nguyễn Xuân Nam', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Chuyên đề khảo sát hàm số', '2016', 205, 'Phân dạng và hướng dẫn giải các dạng toán về khảo sát hàm số'),
(12, 'Siêu tư duy Toán học luyện đề THPT Quốc gia 2016 - 2017', 'sieu-tu-duy-toan.jpg', '0BwAaSf8Rudj0MVNRNDQ4OFNPZ0E', 1, 'Đoàn Trí Dũng, Hà Hữu Hải, Nguyễn Đỗ Chiến, Nguyễn Đại Dương, Nguyễn Tấn Siêng', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia 2017 môn Toán, Rèn luyện tư duy giải Toán', '2017', 258, 'Phần 1. Tổng hợp các công thức căn bản sử dụng trong giải Toán\r\nPhần 2. Các kỹ năng và tư duy trong giải toán phương trình - hệ phương trình và bất phương trình\r\nPhần 3. Các kỹ năng và kiến thức căn bản trong giải toán hình học tọa độ phẳng\r\nPhần 4. Các kiến thức trọng tâm và tư duy giải toán bất đẳng thức, GTLN - GTNN\r\nPhần 5. Bộ đề rèn luyện kỹ năng giải Toán'),
(13, 'Tuyển tập đề thi và phương pháp giải nhanh Toán trắc nghiệm', 'de-thi-trac-nghiem-toan.png', '0BwAaSf8Rudj0bFlRTEpkc1JRQ0k', 1, 'Nguyễn Bá Tuấn', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia 2017 môn Toán, Tài liệu trắc nghiệm môn Toán, Phương pháp giải nhanh trắc nghiệm Toán', '2017', 341, 'Gồm các phương pháp tư duy giải nhanh Toán trắc nghiệm và 20 đề thi Toán trắc nghiệm có đáp án, hướng dẫn giải theo hướng áp dụng các phương pháp giải nhanh'),
(14, 'Phương pháp tư duy giải nhanh trắc nghiệm Toán 12', 'tu-duy-trac-nghiem-toan.png', '0BwAaSf8Rudj0akg4UElFRFF5TzA', 1, 'Nguyễn Bá Tuấn', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Giái nhanh trắc nghiệm Toán, Tài liệu học tập Toán 12', '2017', 335, 'Để sử dụng sách hiệu quả cần lưu ý:\r\n+ Đọc và học các phương pháp tư duy\r\n+ Luyện tập thường xuyên với các bài tập trong sách\r\n+ Ghi chú, ghi chép và đánh dấu các mục cần ghi nhớ\r\n+ Trao đổi với thầy cô, bạn bè khi gặp khó khăn hoặc vướng mắc'),
(15, 'MEGA Luyện đề trắc nghiệm THPT Quốc gia 2017 môn Toán', 'mega-toan.png', '0BwAaSf8Rudj0QTdDQ3QxQVc1RW8', 1, 'Trần Công Diêu', 'Tài liệu ôn thi THPT Quốc gia môn Toán, Đề thi thử THPT Quốc gia môn Toán 2017, Tài liệu Megabook môn Toán', '2017', 482, 'Sách gồm 20 đề thi thử THPT Quốc gia 2017 môn Toán có lời giải chi tiết\r\n'),
(16, 'Bài tập trắc nghiệm lượng tử ánh sáng - Nguyễn Vũ Minh', 'luong-tu-anh-sang.jpg', '0BwAaSf8Rudj0Z3hJUVFjQ3JrNWM', 2, 'Nguyễn Vũ Minh', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý', '2017', 32, 'Bài tập trắc nghiệm chuyên đề lượng tử ánh sáng có đáp án'),
(17, 'Bổ trợ kiến thức luyện thi Đại học trên kênh VTV2 môn Vật lý - (Phần 3)', 'bo-tro-vat-ly-vtv2-phan-3.jpg', '0BwAaSf8Rudj0ZzVrZzNhUVcycHc', 2, 'Chu Văn Biên', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý', 'N/A', 336, 'Sóng cơ, sóng điện từ, điện từ, sóng ánh sáng, lượng tử ánh sáng, hạt nhân'),
(18, 'Bổ trợ kiến thức luyện thi Đại học trên kênh VTV2 môn Vật lý - (Phần 2 - Điện xoay chiều)', 'bo-tro-vat-ly-vtv2-phan-2.jpg', '0BwAaSf8Rudj0U0ZOLTVIR3FqdTg', 2, 'Chu Văn Biên', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Chuyên đề điện xoay chiều', 'N/A', 336, '+ Chủ đề 1. Mạch điện\r\n+ Chủ đề 2. Máy điện'),
(19, 'Bổ trợ kiến thức luyện thi Đại học trên kênh VTV2 môn Vật lý - (Phần 1 - Dao động)', 'bo-tro-vat-ly-vtv2-phan-1.jpg', '0BwAaSf8Rudj0VG1PZFVvRUhRWTg', 2, 'Chu Văn Biên', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Chuyên đề dao động', 'N/A', 344, '+ Chủ đề 1. Dao động điều hòa\r\n+ Chủ đề 2. Con lắc lò xo\r\n+ Chủ đề 3. Con lắc đơn\r\n+ Chủ đề 4. Dao động tắt dần, dao động duy trì, dao động cưỡng bức, cộng hưởng\r\n+ Chủ đề 5: Tổng hợp các dao động điều hòa'),
(20, 'Phương pháp mới giải nhanh trắc nghiệm Vật lý', 'phuong-phap-giai-nhanh-vat-ly.jpg', '0BwAaSf8Rudj0U3dWbnZYVXZGWXc', 2, 'Phạm Đức Cường', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Phương pháp giải nhanh Vật lý', 'N/A', 536, 'Sách gồm 18 vấn đề, mỗi vấn đề gồm nhiều dạng bài tập. Mỗi dạng gồm:\r\nA - Kiến thức căn bản: Nêu rõ các công thức cần nắm, công thức giải nhanh bài tập, các công thức giải nhanh, các công thức biến đổi nâng cao, các hệ quả từ các hiện tượng\r\nB - Các ví dụ: Mỗi ví dụ là một dạng bài tập được sắp xếp từ dễ đến khó. Học sinh cần nắm vững các ví dụ này trước khi làm trắc nghiệm\r\nSố câu trắc nghiệm trong sách là 1286 câu'),
(21, 'Sơ đồ tư duy Vật lý 12', 'so-do-tu-duy-vat-ly.png', '0BwAaSf8Rudj0YXczcjhqTFVpa0U', 2, 'Phạm Minh Trung', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Mindmap Vật lý 12', '2017', 34, ''),
(22, 'Đánh thức tư duy Vật lý chuyên đề điện xoay chiều', 'danh-thuc-tu-duy-vat-ly.png', '0BwAaSf8Rudj0V1RFNGRIbnp0TGc', 2, 'Nguyễn Minh Thảo', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Chuyên đề điện xoay chiều ôn thi THPT Quốc gia', '2017', 322, 'Trong mỗi bài tập mẫu có phần Tư duy tìm lời giải để định hướng các em cách suy nghĩ khi đứng trước các dữ kiện của đề bài. Trong phần hướng dẫn này, một số bài được viết dưới dạng liệt kê, một số bài thì trình bài dưới dạng sơ đồ tư duy (mindmap) một cách linh hoạt.'),
(23, 'Tuyển tập 196 bài toán cơ điện hay và khó', '196-bai-vat-ly.jpg', '0B0qEbM0gvgeQTU01eHZPbzN3MnM', 2, 'Vũ Ngọc Anh', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Chuyên đề cơ - điện', '2017', 292, 'Phần 1. Phương pháp giải toán\r\nPhần 2. Tuyển tập các bài toán hay và khó\r\nPhần 3. Các đề thi tham khảo'),
(24, 'Tổng ôn lý thuyết Vật lý 12', 'tong-on-ly-thuyet-vat-ly-12.png', '0B0qEbM0gvgeQQkFFRmtZQjYtVjg', 2, 'Đinh Hoàng Minh Tân', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Lý thuyết Vật lý 12', 'N/A', 37, '+ Chương 1. Dao động cơ\r\n+ Chương 2. Sóng cơ \r\n+ Chương 3. Điện xoay chiều\r\n+ Chương 4. Dao động & sóng điện từ\r\n+ Chương 5. Tính chất sóng ánh sáng\r\n+ Chương 6. Lượng tử ánh sáng\r\n+ Chương 7. Hạt nhân nguyên tử '),
(25, 'Bài tập tổng hợp ôn thi THPT Quốc gia môn Vật lý', 'bai-tap-vat-ly.jpg', '0B0qEbM0gvgeQOWROYi1RTjByNG8', 2, 'Trần Quất Lâm', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Đề thi thử THPT Quốc gia 2017 môn Vật lý', 'N/A', 186, 'Chuyên đề 1: Đại cương về dao động điều hòa - Con lắc lò xo\r\nChuyên đề 2: Năng lượng dao động điều hòa\r\nChuyên đề 3: Khoảng thời gian - Quãng đường - Tốc độ trung bình\r\nChuyên đề 4: Lực đàn hồi -Lực hồi phục - Thời gian lò xo nén giãn\r\nChuyên đề 5: Viết phương trình dao động\r\nChuyên đề 6: Tổng hợp dao động\r\nChuyên đề 7: Dao động cưỡng bức - Dao động tắt dần\r\nChuyên đề 8: Các đại lượng cơ bản về con lắc đơn\r\nChuyên đề 9: Chu kỳ con lắc đơn thay đổi theo tác dụng ngoại lực, độ cao\r\nvà nhiệt độ - Bài toán đồng hồ chạy nhanh, chậm\r\nChuyên đề 10: Sai số và Xử lý sai số'),
(26, 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Giải nhanh Vật lý 12 bằng Casio', 'giai-nhanh-vat-ly-bang-casio.jpg', '0B0qEbM0gvgeQcUxKSk5GaDAtS0E', 2, 'Đoàn văn Lượng', 'Chuyên đề 1: Đại cương về dao động điều hòa - Con lắc lò xo\nChuyên đề 2: Năng lượng dao động điều hòa\nChuyên đề 3: Khoảng thời gian - Quãng đường - Tốc độ trung bình\nChuyên đề 4: Lực đàn hồi -Lực hồi phục - Thời gian lò xo nén giãn\nChuyên đề 5: Viết phương trình dao động\nChuyên đề 6: Tổng hợp dao động\nChuyên đề 7: Dao động cưỡng bức - Dao động tắt dần\nChuyên đề 8: Các đại lượng cơ bản về con lắc đơn\nChuyên đề 9: Chu kỳ con lắc đơn thay đổi theo tác dụng ngoại lực, độ cao\nvà nhiệt độ - Bài toán đồng hồ chạy nhanh, chậm\nChuyên đề 10: Sai số và Xử lý sai số', 'N/A', 34, ''),
(27, 'Phương pháp và thủ thuật giải nhanh các dạng trắc nghiệm Vật lý 12', 'giai-nhanh-vat-ly.jpg', '0B0qEbM0gvgeQakhCZm9HYVdPS0k', 2, 'Nguyễn Trần Cương', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Công thức giải nhanh Vật lý 12', 'N/A', 26, 'Vật lý là môn khoa học cơ bản nên việc dạy vật lý trong trường phổ thông phải giúp học sinh nắm được kiến thức cơ bản, trọng tâm của bộ môn, mối quan hệ giữa vật lý và các môn khoa học khác để vận dụng các quy luật vật lý vào thực tiễn đời sống. Vật lý biểu diễn các quy luật tự nhiên thông qua toán học vì vậy hầu hết các khái niệm, các định luật, quy luật và phương pháp... của vật lý trong trường phổ thông đều được mô tả bằng ngôn ngữ toán học, đồng thời cũng yêu cầu học sinh phải biết vận dụng tốt toán học vào vật lý để trả lời nhanh, chính xác các dạng bài tập vật lý nhằm đáp ứng tốt các yêu cầu ngày càng cao của các đề thi TNPT và TSĐH.\r\nVấn đề đặt ra là với số lượng lớn các công thức vật lý trong chương trình PTTH làm sao nhớ hết để vận dụng, trả lời các câu hỏi trong khi đề thi trắc nghiệm phủ hết chương trình, không trọng tâm, trọng điểm, thời gian trả lời mỗi câu hỏi quá ngắn, (không quá 1,5 phút) nên việc suy luận và chứng minh các công thức cần vận dụng là bất khả thi. Vì vậy chúng tôi chọn đề tài: Nhớ tối thiểu các công thức cơ bản và các công thức có tính tổng quát nhất của chương trình và đưa ra các phương pháp, thủ thuật vận dụng nhằm giải quyết nhanh, chính xác các các dạng bài toán trong chương trình.'),
(28, '130 bài tập Vật lý 12 mức điểm 7 đến 10 từ đề thi các trường chuyên', '130-bai-tap-vat-ly-kho.jpg', '0B0qEbM0gvgeQVEtfRm5ybW96d0k', 2, 'Nguyễn Đức Thuận', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Đề thi thử THPT Quốc gia 2017 môn Vật lý', '2017', 57, 'Các bài tập hay và khó môn vật lý 12 được trích từ đề thi học kỳ và đề thi thử của các trường chuyên trên cả nước'),
(29, 'Luyện thi THPT Quốc gia môn Vật lý 7 ngày 7 điểm, 8 tuần 8 điểm', '7-ngay-7-diem.jpg', '0B0qEbM0gvgeQdlRERVFndTZLVjg', 2, 'Chu Văn Biên', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Đề thi thử THPT Quốc gia 2017 môn Vật lý', '2017', 428, 'Sách dùng cho kỳ thi THPT Quốc gia\r\n+ Sát đề chính thức của Bộ\r\n+ Cô động - Ngắn gọn - Hiệu quả\r\n+ Dễ học - Dễ nhớ'),
(30, 'Phương pháp giải toán Vật lý 12', 'phuong-phap-giai-vat-ly-12.png', '0B0qEbM0gvgeQeU4zb0lPYi1vT28', 2, 'Trần Anh Trung', 'Tài liệu ôn thi THPT Quốc gia môn Vật lý, Bài tập Vật lý 12', 'N/A', 113, '+ Phần 1. PHƯƠNG PHÁP GIẢI TOÁN VỀ DAO ĐỘNG ĐIỀU HÒA CỦA CON LẮC LÒ XO\r\n+ Phần 2. PHƯƠNG PHÁP GIẢI TOÁN VỀ DAO ĐỘNG ĐIỀU HÒA CỦA CON LẮC ĐƠN\r\n+ Phần 3. PHƯƠNG PHÁP GIẢI TOÁN VỀ DAO ĐỘNG TẮT DẦN VÀ CỘNG HƯỞNG CƠ HỌC\r\n+ Phần 4. PHƯƠNG PHÁP GIẢI TOÁN VỀ SỰ TRUYỀN SÓNG CƠ HỌC, GIAO THOA SÓNG, SÓNG DỪNG, SÓNG ÂM\r\n+ Phần 5. PHƯƠNG PHÁP GIẢI TOÁN VỀ MẠCH ĐIỆN XOAY CHIỀU KHÔNG PHÂN NHÁNH (RLC)\r\n+ Phần 6. PHƯƠNG PHÁP GIẢI TOÁN VỀ MÁY PHÁT ĐIỆN XOAY CHIỀU, BIẾN THẾ, TRUYỀN TẢI ĐIỆN NĂNG\r\n+ Phần 7. PHƯƠNG PHÁP GIẢI TOÁN VỀ DAO ĐỘNG ĐIỆN TỰ DO TRONG MẠCH LC\r\n+ Phần 8. PHƯƠNG PHÁP GIẢI TOÁN VỀ PHẢN XẠ ÁNH SÁNG CỦA GƯƠNG PHẲNG VÀ GƯƠNG CẦU\r\n+ Phần 9. PHƯƠNG PHÁP GIẢI TOÁN VỀ KHÚC XẠ ÁNH SÁNG, LƯỠNG CHẤT PHẲNG (LCP), BẢNG MẶT SONG SONG (BMSS), LĂNG KÍNH (LK)\r\n+ Phần 10. PHƯƠNG PHÁP GIẢI TOÁN VỀ THẤU KÍNH VÀ HỆ QUANG HỌC ĐỒNG TRỤC VỚI THẤU KÍNH\r\n+ Phần 11. PHƯƠNG PHÁP GIẢI TOÁN VỀ MẮT VÀ CÁC DỤNG CỤ QUANG HỌC BỔ TRỢ CHO MẮT\r\n+ Phần 12. PHƯƠNG PHÁP GIẢI TOÁN VỀ HIỆN TƯỢNG TÁN SẮC ÁNH SÁNG\r\n+ Phần 13 . PHƯƠNG PHÁP GIẢI TOÁN VỀ GIAO THOA SÓNG ÁNH SÁNG\r\n+ Phần 14 . PHƯƠNG PHÁP GIẢI TOÁN VỀ TIA RƠNGHEN\r\n+ Phần 15 . PHƯƠNG PHÁP GIẢI TOÁN VỀ HIỆN TƯỢNG QUANG ĐIỆN\r\n+ Phần 16 . PHƯƠNG PHÁP GIẢI TOÁN VỀ MẪU NGUYÊN TỬ HIĐRÔ THEO BO\r\n+ Phần 17 . PHƯƠNG PHÁP GIẢI TOÁN VỀ PHÓNG XẠ VÀ PHẢN ỨNG HẠT NHÂN'),
(31, 'Ôn luyện thi cấp tốc môn Hóa học', 'on-luyen-cap-toc-hoa-hoc.jpg', '0B0qEbM0gvgeQeEVwRWVqTUxkdEE', 3, 'Cù Thanh Toàn', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học', 'N/A', 408, 'Tập sách gồm 4 phần:\r\n+ Các công thức giải nhanh bài tập Hóa học\r\n+ Các phương pháp giải nhanh bài tập Hóa học\r\n+ Rèn luyện kỹ năng giải nhanh bài tập Hóa học\r\n+ Luyện kỹ năng làm nhanh đề thi Đại học, Cao đẳng'),
(32, 'Chinh phục câu vận dụng cao trong đề thi THPT QG môn Hóa học', 'van-dung-cao-hoa-hoc.jpg', '0B0qEbM0gvgeQdW92MzJ1R0tmaEU', 3, 'Lê Hữu Đông', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Bài tập vận dụng cao môn Hóa học', '2017', 20, 'Tài liệu trình bày các phương pháp tiếp cận và giải quyết các bài tập Hóa học ở mức độ khó'),
(33, 'Ôn tập lý thuyết Hóa học cấp tốc', 'on-tap-ly-thuyet-hoa-hoc.jpg', '0B0qEbM0gvgeQTFFkOGZjZjV4bEk', 3, 'Nguyễn Anh Phong', 'Lý thuyết Hóa học, Tài liệu ôn thi THPT Quốc gia môn Hóa học', '2016', 326, 'Đề cương ôn tập cấp tốc lý thuyết Hóa học trong 20 ngày'),
(34, 'Lý thuyết Hóa học cô đọng trong 300 câu hỏi trắc nghiệm', 'ly-thuyet-hoa-hoc.jpg', '0B0qEbM0gvgeQSklMMk9HRXV5STA', 3, 'Vũ Ngọc Huyền', 'Tài liệu ôn tập lý thuyết Hóa học', '2017', 39, 'Tài liệu gồm 300 câu trắc nghiệm lý thuyết Hóa học có đáp án và hướng dẫn làm bài'),
(35, 'Ngân hàng đề thi Hóa học ôn tập kỳ thi THPT Quốc gia 2017', 'ngan-hang-de-thi.jpg', '0B0qEbM0gvgeQOHllSnR3Q0hqOTg', 3, 'Lê Hữu Đông', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia môn Hóa học', '2017\r\n', 62, 'Tài liệu gồm 18 đề, có đáp án'),
(36, '18 đề thi dành cho học sinh trung bình - khá môn Hóa học (Tập 1)', '18-de-thi-hoa-hoc.jpg', '0B0qEbM0gvgeQWTZzTVdsQm05QnM', 3, 'Lê Hữu Đông', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia môn Hóa học', 'N/A', 53, 'Đề thi thử THPT Quốc gia môn Hóa học có đáp án'),
(37, 'Bí mật đề thi Đại học kỳ thi THPT Quốc gia môn Hóa học - Phần 2: Hữu cơ', 'bi-mat-de-thi-phan-2.jpg', '0B0qEbM0gvgeQbW1EcGlVcnJvVkk', 3, 'N/A', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia môn Hóa học', '2016', 172, 'Cuốn sách này gồm 7 phần, chứa tất cả các chiều hướng ra đề thi, các cách xử lý và giải quyết nhanh một bài toán, dễ học và dễ hiểu\r\n+ Phần 1: Hydrocacbon (Ankan + Anken + Ankin + Ankadien + Benzene)\r\n+ Phần 2: Dẫn xuất Halozen + Rượu + Hợp chất phenol\r\n+ Phần 3: Andehit + Xeton\r\n+ Phần 4: Axit + Este + Lipit\r\n+ Phần 5: Amin + Amino Axit + Peptit + Protein\r\n+ Phần 6: Cacbonhydrat\r\n+ Phần 7: Polime'),
(38, 'Bí mật đề thi Đại học kỳ thi THPT Quốc gia môn Hóa học - Phần 1: Vô cơ', 'bi-mat-de-thi-phan-1.jpg', '0B0qEbM0gvgeQMlFQMEctcUFPUW8', 3, 'N/A\r\n', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia môn Hóa học', '2016', 256, 'Các bài của đề thi đại học thường có xu hướng lặp lại giữa các năm và giữa 2 khối A, B .Có nhiều câu ,sự giống nhau đến đáng kinh ngạc. Và đề thi THPT Quốc Gia thì nó ko nằm ngoài chương trình phổ thông nên cách ra đề sẽ giống cấu trúc đề đại học 2014. Vì mỗi đề có rất nhiều câu được lặp lại, mình không thể kể hết ra được nên chỉ có thể cho các bạn 1, 2 ví dụ trong đề, để các bạn thấy được mà biết các ôn tập đạt kết quả tốt cho kì thi.'),
(39, 'Nguyên tắc lặp lại trong đề thi Đại học môn Hóa học', 'nguyen-tac-lap-lai-hoa-hoc.png', '0B0qEbM0gvgeQTlJ1ZmxOUXdqWWs', 3, 'Lê Đăng Khương', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia môn Hóa học', 'N/A', 115, '1. Khoảng 2-3 năm đề thi sẽ lặp lại một lần, có thể là ý tưởng có thể là thay số để ra bài mới có thể là hỏi theo cách khác.\r\n2. Không quá 50% đề các năm trước lặp lại. Điều này đảm bảo tính mới và tính kế thừa trong đề thi.\r\n3. Những bài lặp lại là những bài cốt lõi. Nắm chắc các dạng đó là đã làm được 80% đề thi rồi.'),
(40, 'Giải chi tiết đề thi môn Hóa học 2007 - 2017', 'giai-chi-tiet-de-hoa-hoc.jpg', '0B0qEbM0gvgeQanUwQlZURlA3bDQ', 3, 'Lê Đức Thọ', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Đề thi thử THPT Quốc gia 2017 môn Hóa học', '2017', 106, '+ Giải chi tiết các câu trong đề thi\r\n+ Câu hỏi khó được giải theo nhiều cách\r\n+ Bộ tài liệu chuyên sâu môn Hóa học\r\n+ Tài liệu luyện thi THPT Quốc gia 2018'),
(41, 'Công phá lý thuyết Hóa học', 'cong-pha-ly-thuyet-hoa-hoc.jpg', '0B0qEbM0gvgeQMDdaaXdZdXJHVVU', 3, 'Megabook', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Trắc nghiệm lý thuyết Hóa học', '2015', 147, ''),
(42, 'Chinh phục câu hỏi phân hóa kỳ thi THPT QG 2017 - Vô cơ và Peptit', 'vo-co-va-peptit.jpg', '0B0qEbM0gvgeQM1hwR0VFVmFQb1U', 3, 'Vũ Duy Khánh', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Câu hỏi phân loại Hóa học, Chuyên đề Hóa học Vô cơ, Chuyên đề Peptit', '2017', 34, 'Trước kỳ thi THPT QG 2016 sắp tới,BGD đã có nhiều sự thay đổi,như các bạn thấy thì bài thi Hóa của chúng ta sẽ thi 40 câu trong thời gian 50 phút. BGD đã đưa ra đề thi minh họa cho các môn trong đó có môn Hóa trong bài thi KHTN,theo đánh giá sơ bộ thì mình thấy đề thi gần như nằm trọn vẹn trong chương trình Hóa lớp 12. Như vậy các câu phân hóa nằm ở phần nào? Chính là ở phần peptit, vô cơ dạng hỗn hợp tác dụng với hỗn hợp H+ và NO3− hay năm nay có thể nằm về dạng nhiệt nhôm hay một số dạng khác và tất nhiên sẽ được đề cập đến trong chuyên đề bao gồm Phần 1 và Phần 2 hoặc có thể nhiều hơn; và 1 dạng bài tập nữa có thể nằm vào phần câu hỏi phân hóa chính là bài tập về este (trong phần 2).Đề thi Minh Họa chưa thể nói lên được điều gì cả và theo mình nghĩ thì đề thi thật sẽ khó hơn đôi chút và sẽ có nhiều mã đề nên câu hỏi phân loại có thể nằm vào bất cứ 1 trong 3 dạng trên,tài liệu này mình và bạn Trung đã bỏ công sức ra làm nên có thể có những sai sót nên rất mong nhận được những góp ý từ các bạn và các thầy cô.'),
(43, 'Bài tập chọn lọc chuyên đề điện phân', 'chuyen-de-dien-phan.jpg', '0B0qEbM0gvgeQT0RIQjVrdm9GcUk', 3, 'Nguyễn Công Kiệt, Lương Mạnh Cầm', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Chuyên đề điện phân', '2017', 41, '+ Nhằm giúp các em học sinh có 1 tài liệu tham khảo đầy đủ các dạng bài và có cái nhìn tổng quát nhất về hướng ra đề của Bộ Giáo Dục về bài toán điện phân trong những năm vừa qua cũng như hỗ trợ rèn luyện kĩ năng giải toán hóa học. Nhóm tác giả đã biên soạn tập tài liệu nhỏ này như một món quà nhỏ gửi đến các em 99. Nội dung tài liệu bám sát theo các yêu cầu và định hướng ra đề thi mới nhất của Bộ GD&ĐT. Ở mỗi dạng bài, tác giả đều nêu rõ nội dung, phương pháp, phân dạng các dạng bài tập từ cơ bản đến nâng cao và bài tập ôn luyện trọng tâm của dạng đó. Trong sự hiểu biết hạn hẹp của mình, các tác giả đã cố gắng trình bày lời giải theo hướng tự nhiên nhất có thể. Bạn đọc cũng sẽ thấy hứng thú hơn khi một số bài tập được trình bày với nhiều cách giải nhanh, phân tích, bình luận sau mỗi lời giải.\r\n+ Để việc ôn luyện có hiệu quả và khắc sâu kiến thức tác giả chân thành khuyên các em trong quá trình sử dụng tài liệu này các em nên "xem nhẹ (thậm chí là xem thường) những lời giải trong tài liệu này", hãy tự giải các bài tập theo cách của mình trước, dù bằng bất cứ cách nào, dù là cả tuần hay cả tháng mới ra, cực chẳng đã lắm thì mới xem lời giải. Bởi lẽ một bài tập khó mà các em tự giải được sẽ cho các em nhiều cảm xúc mới hơn rất rất nhiều lần so với việc cứ đọc đề rồi xem giải như một cái máy. Và quan trọng hơn tất cả là việc làm đó rèn luyện cho các em tư duy tự chủ, độc lập đưa ra quyết đinh vì trong phòng thi không có ai có thể giúp em ngoài chính bản thân em.'),
(44, 'Phương pháp quy đổi giải bài toán hóa học hữu cơ', 've-dep-quy-doi.png', '0B0qEbM0gvgeQdGhVNWE1WkEyTjA', 3, 'Võ Minh Ngọc', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Vẻ đẹp của quy đổi Hóa học, Chuyên đề Hóa học hữu cơ', '2017', 62, 'Tài liệu gồm 3 phần chính:\r\nPhần một: Các kĩ thuật quy đổi hỗn hợp hữu cơ phức tạp. Các kĩ thuật này bao gồm: Đồng Đẳng Hóa, Thủy Phân Hóa, Hiđro Hóa và Ankan Hóa\r\nPhần hai: Các bài toán tổng hợp. Phần này bao gồm một số bài toán đòi hỏi sự vận dụng cao.\r\nPhần ba: Bài tập tự luyện. Đây sẽ là những thử thách thú vị giành cho các bạn.\r\nTrong tài liệu này mình sẽ không đề cập nhiều đến peptit. Các bạn hãy tham khảo tác phẩm Đồng Đẳng Hóa và bài toán peptit của anh NT Nhật Trường (sinh viên trường đại học Y Dược thành phố HCM) để có cái nhìn sâu sắc nhất về bài toán peptit. Tác phẩm này cũng chính là nguồn gốc ý tưởng cho kĩ thuật đầu tiên – kĩ thuật Đồng Đẳng Hóa trong tài liệu này. Ba kĩ thuật còn lại được mình mở rộng và phát triển dựa trên nền tảng của Đồng Đẳng Hóa.'),
(45, 'Tuyển chọn bộ lý thuyết môn Hóa học ôn thi THPT Quốc gia 2017', 'tuyen-chon-ly-thuyet-hoa-hoc.jpg', '0B0qEbM0gvgeQMWpCaUExVnJWNTQ', 3, 'Trần Văn Hiền, Lê Thành Chung', 'Tài liệu ôn thi THPT Quốc gia môn Hóa học, Lý thuyết Hóa học hay và khó', '2017', 23, '+ Phần 1. Lý thuyết Este - chất béo - Cacbonhydrat\r\n+ Phần 2. Amin - Amino Axit - Peptit - Protein\r\n+ Phần 3. Đại cương kim loại - Điện phân - Điều chế - Ăn mòn kim loại\r\n+ Phần 4. Lý thuyết tổng hợp'),
(46, 'Tuyển tập đề thi học sinh giỏi môn Tiếng Anh từ các tỉnh thành cả nước', 'de-thi-hsg-tieng-anh.png', '0B0qEbM0gvgeQSlZEYzBvWjdNQUE', 4, 'Anh Tuấn Trương', 'Đề thi HSG môn Tiếng Anh 12, Tài liệu ôn thi HSG môn Tiếng Anh 12', 'N/A', 205, ''),
(47, 'Cẩm nang Tiếng Anh', 'cam-nan-tieng-anh.jpg', '0B0qEbM0gvgeQbmVvTjUzQWd6eTg', 4, 'Lê Lâm Khang', 'Tài liệu Tiếng Anh', '2017', 187, 'Ebook này soạn ra dành cho những bạn muốn học tốt anh văn nhưng không có dịp tìm hiểu hay tiếp xúc với nhiều phương pháp, chưa biết cách tự học hay còn nhiều vấn đề khác nữa. Điều cần đối với bạn duy nhất là sự quyết tâm của bạn thôi. Còn bạn là ai, bạn từng nhận bao nhiêu con 0 điểm kiểm tra anh văn, bao nhiều lời chỉ trích của giáo viên anh văn mình không quan tâm. Bạn chỉ cần một thứ duy nhất là quyết tâm, quyết tâm và quyết tâm thôi.\r\n'),
(48, '7 cách học Tiếng Anh', '7-cach-hoc-tieng-anh.jpg', '0B0qEbM0gvgeQTHlMelZxVVQ1cGc', 4, 'N/A', 'Các phương pháp học Tiếng Anh', 'N/A', 139, 'Sách trình bày 7 phương pháp giúp bạn nâng cao trình độ Tiếng Anh của mình một cách nhanh chóng.'),
(49, 'Bộ đề tinh túy ôn thi THPT Quốc gia 2017 môn Tiếng Anh', 'bo-de-tinh-tuy-mon-tieng-anh.png', '0B0qEbM0gvgeQYmM3MFY1bnFyMGs', 4, 'Lovebook', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Đề thi thử THPT Quốc gia 2017 môn Tiếng Anh, Tài liệu Lovebook môn Sinh học', '2017', 330, 'Sách gồm 30 đề thi thử THPT Quốc gia 2017 môn Tiếng Anh có đáp án và lời giải chi tiết'),
(50, 'Ngữ pháp và bài tập chương trình Tiếng Anh lớp 12', 'ngu-phap-va-bai-tap-tieng-anh-12.jpg', '0B0qEbM0gvgeQYmstc3JKSHExdm8', 4, 'Tạ Thanh Hiền', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Ngữ pháp Tiếng Anh, Học tốt Tiếng Anh lớp 12', '2017', 144, ''),
(51, '990 thành ngữ Toeic căn bản', '999-thanh-ngu-toeic.jpg', '0B0qEbM0gvgeQR0h3VkkxYlkzM28', 4, 'Diễm Ly, Hoàng Thanh', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh', 'N/A', 306, '+ Gồm 3 bước phân tích dễ nhớ nhất để đạt được điểm tối đa trong kỳ thi Toeic\r\n+ Tuyển chọn những thành ngữ thường được sử dụng nhất, đem lại hiệu quả học tập rất cao đối với cụm từ\r\n+ Được biên soạn một cách chi tiết và phân tích cụ thể, rất hữu ích cho người đọc\r\n+ Là giáo trình giảng dạy tiếng Anh Toeic mới và cập nhật nhất'),
(52, 'Tuyển tập 10 đề thi thử THPT Quốc gia 2017 môn Tiếng Anh có đáp án và lời giải chi tiết', 'ngan-hang-de-thi-tieng-anh.png', '0B0qEbM0gvgeQVWx4SWd1bFl1WWM', 4, 'Lê Đức Thọ', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Đề thi thử THPT Quốc gia 2017 môn Tiếng Anh', '2017', 139, 'Cứ như thường lệ ,kể từ tháng 11 năm 2016 mình lại tổng hợp các đề thi các trường trên cả nước năm 2016 như Chuyên Đại học Vinh ,Chuyên Nguyễn Huệ ,Chuyên Khoa Học Tự Nhiên , Chuyên Sư Phạm Hà Nội ... lược bỏ các câu hỏi không còn phù hợp với kì thi THPT Quốc Gia 2017 như Phần Tự Luận để các em có nguồn bài tập tham khảo chất lượng phục vụ kì thi trên lớp cũng như kì thi THPT Quốc Gia 2017 sắp tới!\r\nCấu trúc cuốn Tài Liệu :\r\n- 05 đề đầu được biên soạn có LỜI GIẢI CHI TIẾT .\r\n- 05 đề sau có Đáp án tham chiếu'),
(53, 'Luyện thi cấp tốc các dạng bài tập từ các đề thi Quốc gia môn Tiếng Anh', 'luyen-thi-cap-toc-tieng-anh.png', '0B0qEbM0gvgeQeHhoRVdBQWlpSEU', 4, 'Hoàng Thái Dương', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Ôn thi cấp tốc Tiếng Anh', 'N/A', 250, 'Sách gồm 3 phần chính\r\n+ Phần 1: 8 đề trắc nghiệm luyện thi THPT, mỗi đề gồm 50 câu hỏi trắc nghiệm đủ dạng và hướng dẫn giải sau mỗi đề\r\n+ Phần 2: 6 đề trắc nghiệm luyện thi tuyển sinh ĐH - CĐ\r\n+ Phần 3: Giới thiệu đề tốt nghiệp THPT, đề tuyển sinh ĐH - CĐ của bộ GD và ĐT\r\n'),
(54, 'Hướng dẫn học tốt Tiếng Anh 12', 'hoc-tot-tieng-anh-12.jpg', '0B0qEbM0gvgeQRXl1dXJJV29CMk0', 4, 'Mai Lan Hương, Nguyễn Thanh Loan', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh', '2015', 159, 'Sách được biên soạn dựa theo từng đơn vị bài học trong sách giáo khóa tiếng Anh 12. Mỗi bài học gồm có:\r\n+ Bảng từ vựng\r\n+ Ngữ pháp\r\n+ Bài giải và bài dịch'),
(55, 'Tự học đột phá chuyên đề ngữ pháp Tiếng Anh', 'tu-hoc-ngu-phap-tieng-anh.jpg', '0B0qEbM0gvgeQVVl5bHpBMm9rbXc', 4, 'Dương Hương', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Ngữ pháp Tiếng Anh', 'N/A', 230, '+ Chinh phục 35 chuyên đề ngữ pháp Tiếng Anh\r\n+ Luyện tập hơn 1000 câu hỏi kèm lời giải cực chi tiết\r\n+ Dành cho học sinh lớp 10, 11, 12 và luyện thi THPT Quốc gia'),
(56, 'Chinh phục bài tập điền từ Tiếng Anh', 'dien-tu-tieng-anh.png', '0B0qEbM0gvgeQbGN4WEFRQk5NOHc', 4, 'Lovebook', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Tài liệu Lovebook môn Tiếng Anh', 'N/A', 289, '+ Có hướng dẫn phương pháp học kỹ càng\r\n+ Có lời giải chi tiết cho bài tập\r\n+ Hệ thống bài tập được phân theo các chủ đề thường gặp để học sinh có thể học dễ dàng hơn cũng như trau dồi vùng kiến thức mà mình bị hổng'),
(57, 'Chinh phục bài tập từ vựng Tiếng Anh', 'chinh-phuc-tieng-anh.png', '0B0qEbM0gvgeQeHJ5Wl9xRlJ0R0E', 4, 'Lovebook', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Tài liệu Lovebook môn Tiếng Anh', 'N/A', 336, 'Sách dành cho:\r\n+ Học sinh lớp 12 chuẩn bị cho kỳ thi Tuyển sinh Đại học, Cao đẳng (Kỳ thi THPT Quốc gia)\r\n+ Sinh viên, học sinh tự học ôn thi Ielts, Toefl, Toeic\r\n+ Người học Tiếng Anh muốn nâng cao vốn từ vựng'),
(58, 'Rèn kỹ năng luyện giải đề thi THPT Quốc gia môn Tiếng Anh', 'ren-luyen-tieng-anh.png', '0B0qEbM0gvgeQUllqQloxX1AwdVU', 4, 'Vũ Thị Mai Phương', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Đề thi thử THPT Quốc gia 2017 môn Tiếng Anh', 'N/A', 482, '+ 20 đề cực sát với đề thi thật (50 câu trắc nghiệm)\r\n+ Lời giải siêu chi tiết - ôn tập dễ dàng\r\n+ Ghi nhớ - Vận dụng nâng cao trong các đề thi'),
(59, 'Tự học đột phá trọng âm - phát âm Tiếng Anh', 'tu-duy-dot-pha-tieng-anh.jpg', '0B0qEbM0gvgeQNjE5eklCc3g4LUU', 4, 'Hoàng Đào, Hương Giang', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Rèn luyện trọng âm - phát âm môn Tiếng Anh', 'N/A', 370, '+ Luyện tập hơn 1000 câu hỏi kèm lời giải cực kỳ chi tiết\r\n+ Tặng bộ video bài giảng chuyên đề trọng âm - phát âm cực hay\r\n+ Dành cho lớp 10, 11, 12 và luyện thi THPT Quốc gia'),
(60, 'MEGA Luyện đề THPT Quốc gia 2017 môn Tiếng Anh', 'mega-anh.png', '0B0qEbM0gvgeQeEZCVnJVcjdUa0k', 4, 'Lệ Mỹ, Dương Hương', 'Tài liệu ôn thi THPT Quốc gia môn Tiếng Anh, Đề thi thử THPT Quốc gia 2017 môn Tiếng Anh, Tài liệu Megabook môn Tiếng Anh', '2017', 486, 'Sách gồm 20 đề thi thử THPT Quốc gia 2017 môn Tiếng Anh có đáp án'),
(61, '15 ngày luyện thi cấp tốc môn Ngữ Văn chuyên đề Nghị luận Văn học', '15-ngay-luyen-thi-cap-toc-ngu-van.jpg', '0B0qEbM0gvgeQUXYwSlIydnpodHM', 5, 'N/A', 'Tài liệu ôn thi THPT Quốc gia môn Ngữ Văn', '2016', 314, ''),
(62, 'Bộ đề luyện thi THPT Quốc gia 2017 môn Ngữ Văn', 'bo-de-trac-nghiem-mon-ngu-van.jpg', '0B0qEbM0gvgeQT0FhTE9BSGFZM1U', 5, 'Đỗ Ngọc Thống (Chủ biên), Phạm Thị Thu Hiền, Phạm Thị Huệ', 'Tài liệu ôn thi THPT Quốc gia môn Ngữ Văn, Đề thi thử THPT Quốc gia 2017 môn Ngữ Văn có hướng dẫn làm bài', '2017', 190, 'Sách có cấu trúc 2 phần:\r\n+ Phần 1. Giới thiệu cấu trúc đề thi THPT Quốc gia 2017 môn Ngữ Văn, những điểm kế thừa và đổi mới, đồng thời hướng dẫn học sinh cách ôn luyện và làm bài thi theo định hướng mới.\r\n+ Phần 2. Giới thiệu hệ thống đề giúp học sinh thực hành, ôn luyện để chuẩn bị cho kỳ thi. Các đề được biên soạn theo cấu trúc mới đã được Bộ Giáo dục và Đào tạo công bố.'),
(63, 'Bộ đề luyện thi THPT Quốc gia môn Ngữ Văn', 'bo-de-luyen-thi-ngu-van.png', '0B0qEbM0gvgeQWTZlZ3p4UHVORWs', 5, 'Lê Quang Hưng, Nguyễn Việt Hùng', 'Tài liệu ôn thi THPT Quốc gia môn Ngữ Văn, Đề thi thử THPT Quốc gia môn Ngữ Văn', 'N/A', 201, 'Sách có cấu trúc 3 phần:\r\n+ Phần mở đầu: Giới thiệu cấu trúc đề thi THPT Quốc gia môn Ngữ Văn và hướng dẫn cách làm bài thi hiệu quả cùng một số lưu ý khi làm bài cho học sinh\r\n+ Phần đề thi: Giới thiệu 20 đề luyện thi cho học sinh ôn luyện và thử sức\r\n+ Phần hướng dẫn giải và đáp án: Hướng dẫn làm bài chi tiết cho những câu hỏi đòi hỏi khả năng vận dụng kiến thức tổng hợp, đánh giá năng lực của học sinh và cung cấp đáp án cho những câu hỏi kiểm tra kiến thức đơn thuần'),
(64, 'MEGA Luyện đề THPT Quốc gia 2017 môn Ngữ Văn', 'mega-van.png', '0B0qEbM0gvgeQMGFBa1htNGR0RFk', 5, 'Mạnh Linh, Huyền Trang', 'Tài liệu ôn thi THPT Quốc gia môn Ngữ Văn, Đề thi thử THPT Quốc gia 2017 môn Ngữ Văn, Tài liệu Megabook môn Ngữ Văn', '2017', 324, 'Sách gồm 14 đề thi thử THPT Quốc gia 2017 môn Ngữ Văn có hướng dẫn làm bài'),
(65, 'Bộ đề tinh túy ôn thi THPT Quốc gia 2017 môn Ngữ Văn', 'bo-de-tinh-tuy-on-thi-thpt-quoc-gia-mon-ngu-van-2017.png', '0B0qEbM0gvgeQN0lDeDFqa3NUQTg', 5, 'Lovebook', 'Tài liệu ôn thi THPT Quốc gia môn Ngữ Văn, Đề thi thử THPT Quốc gia môn Ngữ Văn 2017, Tài liệu Lovebook môn Ngữ Văn', '2017', 340, 'Sách gồm 60 đề thi thử THPT Quốc gia 2017 môn Ngữ Văn có hướng dẫn làm bài'),
(66, 'MEGA Luyện đề THPT Quốc gia 2017 môn Sử - Địa - GDCD', 'mega-sdgd.png', '0B0qEbM0gvgeQTThxeWlaY2pMSTA', 6, 'Thanh Ngọc, Thanh Thủy, Từ Nhung', 'Tài liệu ôn thi THPT Quốc gia môn Lịch sử, Địa lý, Giáo dục công dân (GDCD), Đề thi thử THPT Quốc gia 2017 môn Lịch sử, Địa lý, Giáo dục công dân (GDCD), Tài liệu Megabook môn Sử - Địa - GDCD', '2017', 456, 'Sách gồm 30 đề thi thử THPT Quốc gia 2017 môn Sử - Địa - GDCD có hướng dẫn giải');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', '$2y$10$u5KT1c/xR62qXH3qMGqfgeyTEylRM.CUcvpwCBVrZetkZ2zACHhei', 1, 'mHefQYQd451qYMljApujmBeNLcVFBdMEpdj8gO9u5P74dJwbNF1JBPvarhe4', '2017-04-28 09:30:20', NULL),
(4, 'member', '$2y$10$1d8wSH5lZvJlyiPU83sJ1OtMc3g9Wz3N5xGtdYbHES5AFqQdQRlNS', 2, NULL, '2017-04-28 09:30:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai_tai_lieu`
--
ALTER TABLE `loai_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loai_tai_lieu`
--
ALTER TABLE `loai_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
