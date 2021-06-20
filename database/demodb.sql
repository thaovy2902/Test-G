
DROP DATABASE IF EXISTS `demodb`;
CREATE DATABASE `demodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

use demodb;

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'ThaoVy','vy123'),(3,'GiaLinh','123456'),(4,'BapNgo','bap123'),(5,'MinhQuan','kenno'),(6,'NamKhue','kh'),(7,'MinhChau','chau789'),(8,'Admin1','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Iphone '),(2,'Samsung'),(3,'Huawei'),(9,'Xiaomi'),(11,'Oppo'),(12,'Lenovo'),(14,'LG');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `fk_product_1` (`id_category`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'iPhone 12 Pro Max ',29300000,'iphone-12-pro-max_1__7.jpg','Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng.. Màn hình 6.7 inches Super Retina XDR.Năm nay, công nghệ màn hình trên 12 Pro Max cũng được đổi mới và trang bị tốt hơn cùng kích thước lên đến 6.7 inch, lớn hơn so với điện thoại iPhone 12. Với công nghệ màn hình OLED cho khả năng hiển thị hình ảnh lên đến 2778 x 1284 pixels.',1),(5,'Iphone 11 Pro Max ',21000000,'iphone11promax.jpg','Với những nâng cấp khá nhiều đặc biệt là về mặt camera và hiệu năng thì iPhone 11 Pro Max năm nay hứa hẹn sẽ lại đem về thành công lớn cho Apple.',1),(6,'OPPO A93',5990000,'oppoa93.jpg','OPPO đã tung ra OPPO A93 dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18 W.',11),(7,'Samsung Galaxy Z Fold2 5G',50000000,'ssgold.jpg','Thuộc dòng smartphone cao cấp, Samsung Galaxy Z Fold2 5G được Samsung trau chuốt không chỉ vẻ ngoài sang trọng, tinh tế mà lẫn cả “nội thất” bên trong đầy mạnh mẽ khiến chiếc smartphone này hoàn toàn xứng đáng để được sở hữu.',2),(8,'Xiaomi Redmi Note 10 5G 8GB ',5690000,'redmiNote.jpg','Redmi Note 10 5G một trong những mẫu điện thoại thuộc series Redmi Note 10 của Xiaomi, không chỉ sở hữu hiệu năng mạnh mẽ đáp ứng tốt nhu cầu chơi game, đây còn là chiếc điện thoại có hỗ trợ mạng 5G cho tốc độ kết nối nhanh chóng.',9),(9,'Samsung Galaxy A02',2060000,'ssa02.jpg','Samsung bổ sung thêm tùy chọn smartphone trong phân khúc giá rẻ mang tên Galaxy A02, máy trang bị một cấu hình ổn định cùng mức pin khủng 5000 mAh cho thời lượng vượt trội trong tầm giá mang đến bạn nhiều trải nghiệm thú vị hơn.',2),(10,'LG Wing 5G',11000000,'LGWing.jpg','LG Wing 5G 128GB sở hữu cơ chế màn hình độc nhất thế giới hiện tại. Với chiếc Wing, LG cho phép người dùng có thể một màn hình phụ với nhiều tác dụng khác nhau nhưng đồng thời thiết kế lại không quá cồng kềnh.',14),(11,'LG V50S ThinQ 5G',5990000,'LGV50s.jpg','LG V50S ThinQ 5G 256GB Hàn Quốc hiện đang là mẫu smartphone nhận được nhiều đánh giá cao trong tầm giá. Máy không chỉ nổi bật ở hiệu năng mà điểm khiến các dòng LG V50 nổi bật là khả năng trang bị những món phụ kiện ngoài.',14),(12,'Lenovo Legion 2 Pro',13450000,'LenovoLegion2.jpg','Legion Phone 2 Pro sở hữu màn hình Samsung E4 AMOLED kích thước 6.92 inch độ phân giải Full HD+ (1.080 x 2.400 px), đạt tỷ lệ khung hình 20.5:9, tốc độ làm mới 144Hz, tốc độ lấy mẫu cảm ứng 720Hz, thời gian phản hồi 3.8 ms.',12),(13,'Huawei Mate 20 HMA-L29B',15990000,'HuaweiMate20.jpg','Một tuyệt tác công nghệ kết hợp hoàn hảo công nghệ đỉnh cao và thiết kế tuyệt mỹ. HUAWEI Mate 20 Series với màn hình đầy sống động làm nổi bật vẻ đẹp thuần khiết của sản phẩm. Cấu hình vô cùng mạnh mẽ bên trong mở ra những khả năng trong tương lai và tạo ra một hướng đi mới cho trí tuệ.',3),(14,'Huawei Y7 Pro',2990000,'HuaweiY7.jpg','Màn hình hiển thị giọt nước rộng 6,26 đem đến trải nghiệm hình ảnh rõ nét và đầy đủ hơn trên điện thoại. Màn hình IPS 1520x720 HD + cho thấy độ bão hòa lớn hơn, rõ nét hơn và màu sắc tự nhiên từ mọi góc nhìn. Sẵn sàng trải nghiệm thế giới đầy màu sắc trong tầm tay.',3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;