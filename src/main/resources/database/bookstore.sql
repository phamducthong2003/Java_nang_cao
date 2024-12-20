CREATE DATABASE  IF NOT EXISTS `bookstoredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstoredb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoredb
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `description` text,
  `image` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_book_category` (`category_id`),
  CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'Tấm Cám','9786047711111','Nguyễn Dữ','NXB Văn Hóa',120000.00,143,'Câu chuyện cổ tích về Tấm và Cám.','TamCam.jpg'),(2,1,'Mắt Biếc','9786047422210','Nguyễn Nhật Ánh','NXB Trẻ',130000.00,174,'Câu chuyện tình yêu trong trẻo của tuổi học trò.','MatBiec.jpg'),(3,1,'Hương Ngọc Lan','9786048701210','Đoàn Minh Tuấn','NXB Phụ Nữ',150000.00,198,'Câu chuyện tình yêu đẹp nhưng đầy bi kịch.','HuongNgocLan.jpg'),(4,1,'Người Thầy Đầu Tiên','9786041139874','Lương Ngọc An','NXB Giáo Dục',140000.00,119,'Chuyện kể về người thầy đầu tiên của mỗi người.','NguoiThayDauTien.jpg'),(5,1,'Bước Qua Cuộc Đời','9786049109813','Trí Nguyễn','NXB Hương Giang',170000.00,180,'Cuộc sống đầy thử thách nhưng cũng đầy yêu thương.','BuocQuaCuocDoi.jpg'),(6,1,'Dế Mèn Phiêu Lưu Ký','9786042121385','Tô Hoài','NXB Kim Đồng',100000.00,200,'Cuộc phiêu lưu của Dế Mèn trong thế giới động vật.','DeMenPhieuLuuKy.jpg'),(7,1,'Những Người Cô Đơn','9786049934472','Nguyễn Bình Phương','NXB Văn Hóa',130000.00,246,'Một câu chuyện về những người cô đơn trong xã hội hiện đại.','NhungNguoiCoDon.jpg'),(8,1,'Chiếc Lá Cuối Cùng','9786045729732','O. Henry','NXB Văn Hóa',110000.00,220,'Câu chuyện cảm động về tình yêu và lòng kiên cường.','ChiecLaCuoiCung.png'),(9,1,'Thằng Bờm','9786042201744','Nguyễn Công Hoan','NXB Kim Đồng',90000.00,150,'Câu chuyện về thằng Bờm với những ước mơ và hy vọng.','ThangBom.jpg'),(10,1,'Nhà Giả Kim','9780061122415','Paulo Coelho','NXB Hồng Đức',160000.00,200,'Cuốn sách về hành trình tìm kiếm kho báu cuộc sống.','NhaGiaKim.png'),(11,2,'Lược Sử Kinh Tế Học','9786045650977','Niall Kishtainy','Nhà Xuất Bản Trẻ',135000.00,60,'Lược Sử Kinh Tế Học là cuốn sách cung cấp cái nhìn tổng quát về các trường phái và tư tưởng kinh tế qua từng thời kỳ, giúp độc giả hiểu rõ hơn về sự phát triển của kinh tế học.','LuocSuKinhTeHoc.jpg'),(12,2,'Tư Duy Kinh Tế','9787111012217','Robert Frank','NXB Tri Thức',180000.00,200,'Cuốn sách giúp bạn hiểu cách tư duy trong kinh tế học.','TuDuyKinhTe.jpg'),(13,2,'Vị Thế Của Người Lãnh Đạo','9786042138909','John C. Maxwell','NXB Trẻ',220000.00,180,'Làm thế nào để phát triển kỹ năng lãnh đạo trong kinh doanh.','ViTheCuaNguoiLanhDao.jpeg'),(14,2,'Cách Mạng Công Nghiệp 4.0','9786046977534','Klaus Schwab','NXB Hồng Đức',270000.00,250,'Cuốn sách giải thích cách mạng công nghiệp 4.0 và ảnh hưởng đến kinh tế.','CachMangCongNghiep.jpg'),(15,2,'Đầu Tư Thông Minh','9786045729961','Benjamin Graham','NXB Lao Động',300000.00,120,'Hướng dẫn các nguyên lý đầu tư lâu dài và an toàn.','DauTuThongMinh.png'),(16,2,'Sức Mạnh Của Kinh Doanh','9780194218312','Richard Branson','NXB Kim Đồng',250000.00,150,'Cuốn sách chia sẻ về bí quyết kinh doanh thành công của Richard Branson.','SucManhCuaKinhDoanh.jpg'),(17,2,'Lý Thuyết Kinh Tế Vi Mô','9780809011839','Mankiw','NXB Kinh Tế',180000.00,130,'Giới thiệu các lý thuyết về kinh tế vi mô và ứng dụng thực tế.','KinhTeViMo.jpg'),(18,2,'Nghệ Thuật Đàm Phán','9780062820268','Chris Voss','NXB Hồng Đức',200000.00,200,'Kỹ năng đàm phán trong kinh doanh và cuộc sống.','NgheThuatDamPhan.jpg'),(19,2,'Khởi Nghiệp Từ Con Số 0','9780452295263','Blake Mycoskie','NXB Thanh Niên',180000.00,220,'Hướng dẫn cách bắt đầu một doanh nghiệp từ con số 0.','KhoiNghiepTuConSo0.jpg'),(20,2,'Quản Trị Doanh Nghiệp','9780060878939','Peter Drucker','NXB Đại Học Kinh Tế Quốc Dân',260000.00,200,'Cuốn sách về các nguyên lý và chiến lược quản trị doanh nghiệp.','QuanTriDoanhNghiep.jpg'),(21,3,'Vũ Trụ Của Einstein','9780393018385','Stephen Hawking','NXB Tri Thức',300000.00,150,'Khám phá về vũ trụ và lý thuyết tương đối của Einstein.','VuTruCuaEinstein.jpg'),(22,3,'Tìm Hiểu Về ADN','9780743212643','James Watson','NXB Giáo Dục',220000.00,180,'Cuốn sách lý giải về cấu trúc ADN và sự phát triển của di truyền học.','TimHieuVeDNA.png'),(23,3,'Cuộc Cách Mạng Khoa Học','9780226458035','Thomas S. Kuhn','NXB Tri Thức',180000.00,250,'Lịch sử và các bước phát triển trong khoa học.','CuocCachMangKhoaHoc.jpg'),(24,3,'Công Nghệ Nano','9780465046723','K. Eric Drexler','NXB Hòa Bình',280000.00,200,'Sự phát triển của công nghệ nano và ảnh hưởng của nó đối với tương lai.','VatLieuVaThietBiNano.jpg'),(25,3,'Vật Lý Học Lượng Tử','9780521421491','Albert Einstein','NXB Tài Chính',350000.00,120,'Giới thiệu về lý thuyết vật lý học lượng tử và các thí nghiệm quan trọng.','VatLyHocLuongTu.jpg'),(26,3,'Các Phát Minh Vĩ Đại','9780192854144','Isaac Newton','NXB Văn Hóa',250000.00,180,'Câu chuyện về những phát minh vĩ đại thay đổi thế giới.','CacPhatMinhViDai.jpg'),(27,3,'Trí Tuệ Nhân Tạo','9780199678112','Nick Bostrom','NXB Phụ Nữ',220000.00,160,'Khám phá về trí tuệ nhân tạo và các ứng dụng của nó.','TriTueNhanTao.jpg'),(28,3,'Chúng Ta Đến Từ Đâu?','9780345408868','Carl Sagan','NXB Tư Tưởng',300000.00,200,'Tìm hiểu về sự sống trên trái đất và sự phát triển của loài người.','TheHobit.png'),(29,3,'Sự Sống Trên Sao Hỏa','9780553447394','Andy Weir','NXB Thế Giới',230000.00,220,'Cuộc sống của một nhà khoa học trên sao Hỏa trong tương lai.','SuSongTrenSaoHoa.jpg'),(30,3,'Vật Lý Học Cơ Bản','9780470469088','David Halliday','NXB Đại Học Sư Phạm',270000.00,150,'Cung cấp kiến thức cơ bản về các nguyên lý vật lý học trong tự nhiên.','VatLyHocCoBan.jpg'),(31,4,'Lịch Sử Việt Nam','9786047002300','Trần Trọng Kim','NXB Văn Hóa',220000.00,150,'Tìm hiểu về lịch sử phát triển của dân tộc Việt Nam.','LichSuVietNam.jpg'),(32,4,'Cuộc Chiến Việt Nam','9780140170727','Stanley Karnow','NXB Hồng Đức',250000.00,200,'Cuốn sách miêu tả về cuộc chiến tranh Việt Nam và các tác động của nó.','CuocChienVietNam.png'),(33,4,'Lịch Sử Thế Giới','9780195011583','Arnold Toynbee','NXB Thế Giới',280000.00,180,'Tổng quan về lịch sử của các nền văn minh trong suốt chiều dài lịch sử nhân loại.','LichSuTheGioi.jpg'),(34,4,'Người Nhật Bản','9780029048134','Ishikawa Hiroshi','NXB Thế Giới',200000.00,220,'Khám phá về lịch sử và văn hóa của người Nhật Bản.','NguoiNhatBan.jpg'),(35,4,'Lịch Sử Trung Quốc','9780674437168','John King Fairbank','NXB Lao Động',240000.00,200,'Giới thiệu về lịch sử và các triều đại của Trung Quốc.','LichSuTrungQuoc.jpg'),(36,4,'Người Anh','9780316074001','David Cannadine','NXB Phụ Nữ',230000.00,160,'Một cái nhìn tổng quan về lịch sử và văn hóa của nước Anh.','NguoiAnh.jpg'),(37,4,'Đế Chế Rôma','9780297846571','Adrian Goldsworthy','NXB Sử Học',260000.00,180,'Câu chuyện về sự phát triển và suy tàn của đế chế Rôma.','DeCheRoma.jpg'),(38,4,'Cách Mạng Pháp','9780691010871','Georges Lefebvre','NXB Sử Học',210000.00,150,'Tìm hiểu về lịch sử và những biến động lớn trong Cách mạng Pháp.','CachMangPhap.jpg'),(39,4,'Cuộc Cách Mạng Mỹ','9780140284932','Gordon S. Wood','NXB Mỹ Thuật',250000.00,220,'Cuộc cách mạng Mỹ và ảnh hưởng của nó đối với lịch sử thế giới.','CachMangMy.jpg'),(40,4,'Sự Sụp Đổ Của Liên Xô','9780393050772','David Remnick','NXB Đại Học Oxford',270000.00,250,'Cuốn sách về sự sụp đổ của Liên Xô và các nguyên nhân dẫn đến nó.','SuSupDoCuaLienXo.jpg'),(41,5,'Sức Mạnh Của Tư Duy Tích Cực','9780743239389','Norman Vincent Peale','NXB Hồng Đức',220000.00,180,'Cách thức thay đổi tư duy để thành công và hạnh phúc.','SucManhCuaTuDuyTichCuc.jpg'),(42,5,'Đắc Nhân Tâm','9781857880504','Dale Carnegie','NXB Thanh Niên',180000.00,250,'Cuốn sách chia sẻ về nghệ thuật giao tiếp và xây dựng mối quan hệ.','DacNhanTam.jpg'),(43,5,'Những Cách Giải Quyết Mâu Thuẫn','9780143119260','William Ury','NXB Văn Hóa',200000.00,180,'Cách giải quyết các vấn đề mâu thuẫn trong cuộc sống và công việc.','NhungCachGiaiQuyetMauThuan.jpg'),(44,5,'Tâm Lý Học Tích Cực','9781400077833','Martin Seligman','NXB Thế Giới',250000.00,150,'Khám phá về sức mạnh của tâm lý học tích cực và hạnh phúc lâu dài.','TamLyHocTichCuc.jpg'),(45,5,'Tự Do Tinh Thần','9781577314806','Eckhart Tolle','NXB Hương Giang',230000.00,200,'Sách chia sẻ về cách sống tự do và thanh thản trong tâm hồn.','TuDoTinhThan.jpg'),(46,5,'Đừng Bao Giờ Đi Ngủ Buồn','9780399162070','Harville Hendrix','NXB Đời Sống',220000.00,150,'Cách duy trì một mối quan hệ vợ chồng hạnh phúc và bền vững.','DungBaoGioDiNguBuon.jpg'),(47,5,'Cảm Xúc Và Cảm Nhận','9780747505020','Daniel Goleman','NXB Trẻ',240000.00,200,'Giới thiệu về cảm xúc và cách quản lý cảm xúc trong cuộc sống.','CamXucVaCamNhan.jpg'),(48,5,'Sức Mạnh Của Những Thói Quen','9781400069286','Charles Duhigg','NXB Phụ Nữ',230000.00,220,'Cuốn sách phân tích cách thay đổi thói quen để đạt thành công.','SucManhCuaNhungThoiQuen.jpg'),(49,5,'Hiểu Về Tâm Lý Con Người','9780465037937','Sigmund Freud','NXB Văn Hóa',250000.00,180,'Khám phá về tâm lý con người và các lý thuyết của Freud.','HieuVeTamLyConNguoi.jpeg'),(50,5,'Bí Quyết Thành Công','9780743272451','Stephen R. Covey','NXB Trẻ',210000.00,150,'Cách phát triển những thói quen để thành công trong sự nghiệp và cuộc sống.','BiQuyetThanhCong.jpg'),(51,6,'Lão Hạc','9786040213350','Nam Cao','NXB Văn Hóa',150000.00,200,'Tác phẩm nổi tiếng của Nam Cao về cuộc sống của người nông dân nghèo.','LaoHac.jpg'),(52,6,'Chí Phèo','9786042123274','Nam Cao','NXB Thanh Niên',160000.00,250,'Câu chuyện về Chí Phèo, một con người bị xã hội đẩy vào con đường tội lỗi.','ChiPheo.jpg'),(53,6,'Dế Mèn Phiêu Lưu Ký','9786042090841','Tô Hoài','NXB Kim Đồng',120000.00,300,'Cuốn sách thiếu nhi nổi tiếng về cuộc phiêu lưu của chú Dế Mèn.','DeMenPhieuLuuKy.jpg'),(54,6,'Đoạn Tuyệt','9786047958495','Nguyễn Công Hoan','NXB Phụ Nữ',180000.00,150,'Cuốn tiểu thuyết nói về số phận của một người phụ nữ trong xã hội phong kiến.','DoanTuyet.jpg'),(55,6,'Những Người Khốn Khổ','9780451419439','Victor Hugo','NXB Thế Giới',250000.00,200,'Câu chuyện về những số phận bất hạnh trong xã hội Pháp.','NhungNguoiKhonKho.jpg'),(56,6,'Cuốn Theo Chiều Gió','9780743278222','Margaret Mitchell','NXB Hội Nhà Văn',300000.00,150,'Cuốn tiểu thuyết kinh điển về cuộc sống của Scarlett O\'Hara trong thời kỳ Nội Chiến Mỹ.','CuonTheoChieuGio.jpg'),(57,6,'Anna Karenina','9781853262715','Leo Tolstoy','NXB Tri Thức',270000.00,180,'Cuốn tiểu thuyết về câu chuyện tình yêu bất hạnh của Anna Karenina.','AnnaKarenia.jpg'),(58,6,'Moby Dick','9780486264652','Herman Melville','NXB Dân Trí',280000.00,200,'Câu chuyện về cuộc săn lùng con cá voi Moby Dick.','MobyDick.jpg'),(59,6,'Tiếng Chim Hót Trong Bụi Mận Gai','9780099491750','Colleen McCullough','NXB Văn Hóa',260000.00,220,'Cuốn tiểu thuyết nổi tiếng về cuộc sống của gia đình Cleary.','TiengChimHotTrongBuiManGai.jpg'),(60,6,'1984','9780451524935','George Orwell','NXB Đà Nẵng',230000.00,250,'Cuốn sách phản ánh một xã hội dystopia với chế độ độc tài toàn trị.','1984.jpg'),(61,7,'Những Điều Cần Biết Về Nghệ Thuật','9780714832470','Ernst Gombrich','NXB Mỹ Thuật',280000.00,150,'Cuốn sách này giới thiệu tổng quan về nghệ thuật qua các thời kỳ lịch sử.','NhungDieuCanBietVeNgheThuat.jpg'),(62,7,'Vẽ Dáng Người','9780857685309','Andrew Loomis','NXB Mỹ Thuật',300000.00,180,'Cuốn sách hướng dẫn vẽ dáng người, cơ thể và các tư thế trong nghệ thuật.','VeDangNguoi.jpg'),(63,7,'Lịch Sử Nghệ Thuật','9780714820170','E.H. Gombrich','NXB Mỹ Thuật',350000.00,200,'Lịch sử nghệ thuật từ cổ đại đến hiện đại, giải thích các phong trào nghệ thuật quan trọng.','LichSuNgheThuat.jpg'),(64,7,'Bí Quyết Vẽ Tranh','9780891347610','Bert Dodson','NXB Phụ Nữ',220000.00,250,'Hướng dẫn vẽ tranh từ cơ bản đến nâng cao.','BiQuyetVeTranh.jpg'),(65,7,'Thế Giới Của Nghệ Thuật','9780714823379','E. H. Gombrich','NXB Hương Giang',290000.00,180,'Cuốn sách tổng hợp các phong cách nghệ thuật và các tác phẩm nghệ thuật nổi tiếng.','TheGioiCuaNgheThuat.jpg'),(66,7,'Nghệ Thuật Của Nét Vẽ','9781585421975','Betty Edwards','NXB Dân Trí',250000.00,150,'Hướng dẫn chi tiết về việc vẽ và phát triển kỹ năng hội họa.','NgheThuatCuaNetVe.jpeg'),(67,7,'Kỹ Thuật Vẽ Tranh','9780914227389','Jack Hamm','NXB Thanh Niên',240000.00,220,'Sách hướng dẫn kỹ thuật vẽ tranh từ các bước cơ bản đến nâng cao.','KyThuatVeTranh.jpg'),(68,7,'Lý Thuyết Màu Sắc','9780300179350','Josef Albers','NXB Mỹ Thuật',270000.00,200,'Giới thiệu về lý thuyết màu sắc và ứng dụng trong nghệ thuật.','LyThuyetMauSac.jpg'),(69,7,'Nghệ Thuật Sắp Xếp','9780811835511','Taro Gomi','NXB Giáo Dục',210000.00,180,'Cuốn sách giới thiệu nghệ thuật sắp xếp vật phẩm theo các quy luật thẩm mỹ.','NgheThuatSapXep.jpg'),(70,7,'Cuộc Cách Mạng Nghệ Thuật','9780375703491','Robert Hughes','NXB Mỹ Thuật',300000.00,220,'Cuốn sách phân tích sự phát triển của nghệ thuật trong thế kỷ 20.','CuocCachMangNgheThuat.png'),(71,8,'Hướng Dẫn Du Lịch Việt Nam','9786047939136','Trần Văn Mạnh','NXB Văn Hóa',150000.00,250,'Hướng dẫn chi tiết về các địa điểm du lịch nổi tiếng ở Việt Nam.','HuongDanDuLichVietNam.jpg'),(72,8,'Du Lịch Thế Giới','9781786577343','Lonely Planet','NXB Hương Giang',280000.00,150,'Tìm hiểu về các điểm du lịch nổi tiếng trên thế giới.','DuLichTheGioi.jpg'),(73,8,'Điểm Đến Hấp Dẫn','9780316485791','Alex Garland','NXB Phụ Nữ',230000.00,200,'Khám phá những điểm đến tuyệt vời và những trải nghiệm không thể bỏ qua.','DiemDenHapDan.jpg'),(74,8,'Hành Trình Qua Châu Á','9781864504992','Tony Wheeler','NXB Thế Giới',260000.00,180,'Một cuốn sách đầy ắp thông tin về các quốc gia ở châu Á và các điểm du lịch nổi bật.','HanhTrinhQuaChauA.jpg'),(75,8,'Từ Điển Du Lịch','9780130618704','Philip Kotler','NXB Đại Học Kinh Tế',220000.00,150,'Giới thiệu các thuật ngữ và khái niệm trong ngành du lịch.','TuDienDuLich.jpg'),(76,8,'Hướng Dẫn Du Lịch Thái Lan','9781742201289','Andrew Forbes','NXB Phụ Nữ',240000.00,180,'Hướng dẫn chi tiết về các địa điểm du lịch tại Thái Lan.','HuongDanDuLichThaiLan.jpg'),(77,8,'Du Lịch Nhật Bản','9781925992859','Tetsuya Yamada','NXB Kim Đồng',250000.00,200,'Cuốn sách cung cấp thông tin chi tiết về các điểm du lịch ở Nhật Bản.','DuLichNhatBan.jpg'),(78,8,'Hành Trình Ấn Độ','9780099492059','Ruth Prawer Jhabvala','NXB Hồng Đức',270000.00,150,'Cuốn sách khám phá nền văn hóa và các địa điểm du lịch nổi tiếng của Ấn Độ.','HanhTrinhAnDo.jpg'),(79,8,'Du Lịch Mạo Hiểm','9780385486804','Chris McCandless','NXB Tri Thức',300000.00,180,'Một cuốn sách du lịch về những chuyến phiêu lưu mạo hiểm.','DuLichMaoHiem.jpg'),(80,8,'Cẩm Nang Du Lịch Châu Âu','9781598802372','Rick Steves','NXB Đà Nẵng',220000.00,200,'Cẩm nang du lịch cung cấp thông tin chi tiết về các thành phố và quốc gia ở Châu Âu.','CamNangDuLichChauAu.jpg'),(81,9,'Kỹ Thuật Lập Trình Cơ Bản','9780321543967','Bjarne Stroustrup','NXB Khoa Học',250000.00,200,'Sách giới thiệu các nguyên lý cơ bản trong lập trình.','KyThuatLapTrinhCoBan.jpg'),(82,9,'Giới Thiệu Về Mạng Máy Tính','9780132412356','Andrew S. Tanenbaum','NXB Khoa Học',230000.00,220,'Cuốn sách trình bày các khái niệm cơ bản về mạng máy tính.','GioiThieuVeMangMayTinh.jpg'),(83,9,'Điện Tử Cơ Bản','9780133126338','Thomas L. Floyd','NXB Đại Học Quốc Gia',280000.00,180,'Hướng dẫn chi tiết về các nguyên lý điện tử cơ bản.','DienTuCoBan.jpg'),(84,9,'Lập Trình Hướng Đối Tượng','9780071760753','Herbert Schildt','NXB Khoa Học',270000.00,150,'Sách cung cấp kiến thức về lập trình hướng đối tượng với Java.','LapTrinhHuongDoiTuong.jpg'),(85,9,'Nhập Môn Kỹ Thuật Số','9780201674767','John Waker','NXB Khoa Học',240000.00,200,'Giới thiệu về kỹ thuật số và ứng dụng của chúng trong đời sống.','NhapMonKyThuatSo.jpg'),(86,9,'Công Nghệ Tự Động','9780131660803','Paul K. Mehta','NXB Khoa Học',290000.00,180,'Cuốn sách nghiên cứu về các công nghệ tự động hóa trong sản xuất.','CongNgheTuDong.jpg'),(87,9,'Kỹ Thuật Xử Lý Tín Hiệu','9780131989421','Alan V. Oppenheim','NXB Khoa Học',320000.00,150,'Nghiên cứu về lý thuyết và ứng dụng xử lý tín hiệu trong công nghiệp.','KyThuatXuLyTinHieu.jpg'),(88,9,'Điện Tử Vật Lý','9781118237253','David Halliday','NXB Khoa Học',310000.00,180,'Cuốn sách giới thiệu các khái niệm cơ bản trong điện tử vật lý.','DienTuVatLy.jpg'),(89,9,'Vật Lý Ứng Dụng','9780201056832','Keith R. Symon','NXB Khoa Học',330000.00,200,'Sách giới thiệu các ứng dụng của vật lý trong đời sống và công nghiệp.','VatLyUngDung.jpg'),(90,9,'Kỹ Thuật Thông Tin','9780139443345','James K. Wolf','NXB Khoa Học',340000.00,150,'Cuốn sách cung cấp kiến thức cơ bản về kỹ thuật thông tin và viễn thông.','KyThuatThongTin.jpg'),(91,10,'Kinh Tế Vĩ Mô','9780547172489','N. Gregory Mankiw','NXB Đại Học Kinh Tế',350000.00,200,'Cung cấp kiến thức về kinh tế vĩ mô và các yếu tố ảnh hưởng đến nền kinh tế toàn cầu.','KinhTeVixMo.jpg'),(92,10,'Kinh Tế Vi Mô','9781429222624','Paul Krugman','NXB Kinh Tế',330000.00,180,'Giới thiệu các nguyên lý cơ bản của kinh tế vi mô và thị trường.','KinhTeViMo.jpg'),(93,10,'Tài Chính Doanh Nghiệp','9781133944063','Eugene F. Brigham','NXB Thế Giới',400000.00,220,'Sách giải thích về các nguyên lý tài chính doanh nghiệp và cách quản lý tài chính trong kinh doanh.','TaiChinhDoanhNghiep.png'),(94,10,'Nguyên Lý Kinh Tế','9781285431236','Greg Mankiw','NXB Thế Giới',350000.00,250,'Cuốn sách tổng quan về kinh tế học, thích hợp cho những ai mới bắt đầu học về kinh tế.','NguyenLyKinhTe.png'),(95,10,'Kinh Tế Học Đại Cương','9780199680153','Mark P. Taylor','NXB Đại Học Kinh Tế',320000.00,180,'Một cuốn sách giới thiệu khái quát về kinh tế học và các lý thuyết kinh tế cơ bản.','KinhTeHocDaiCuong.jpg'),(96,10,'Lý Thuyết Kinh Tế','9780073375857','David C. Colander','NXB Kinh Tế',290000.00,200,'Phân tích các lý thuyết kinh tế và các ứng dụng trong thế giới thực.','LyThuyetKinhTe.jpg'),(97,10,'Kinh Tế Quốc Tế','9780321248807','Paul R. Krugman','NXB Thế Giới',450000.00,150,'Giới thiệu về nền kinh tế toàn cầu và các mối quan hệ kinh tế quốc tế.','KinhTeQuocTe.jpg'),(98,10,'Tài Chính Công','9781429218192','Jonathan Gruber','NXB Đại Học Kinh Tế',380000.00,180,'Cuốn sách phân tích các vấn đề tài chính công và quản lý ngân sách nhà nước.','TaiChinhCong.jpg'),(99,10,'Kinh Tế Học Nhập Môn','9780262026423','Robert E. Hall','NXB Đại Học Kinh Tế',310000.00,220,'Sách giúp người đọc làm quen với các khái niệm cơ bản trong kinh tế học.','KinhTeHocNhapMon.jpg'),(100,10,'Quản Lý Tài Chính','9780071753700','Richard A. Brealey','NXB Kinh Tế',370000.00,200,'Cung cấp kiến thức về quản lý tài chính cá nhân và doanh nghiệp.','QuanLyTaiChinhCaNhan.png'),(101,NULL,'Toán lớp 1','1312432543','Xuất Bản VN','Xuất Bản VN',100000.00,50,'đâsdasdas','anh_5.png');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `total_amout` int NOT NULL DEFAULT '1',
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `fk_cart_customer` (`customer_id`),
  CONSTRAINT `fk_cart_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,2,300000);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `cart_item_id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`cart_item_id`),
  KEY `fk_cartitem_cart` (`cart_id`),
  KEY `fk_cartitem_book` (`book_id`),
  CONSTRAINT `fk_cartitem_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_cartitem_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (17,1,3,2,300000);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tiểu Thuyết'),(2,'Phiêu lưu ly kỳ'),(3,'Giáo Dục'),(4,'Lãng mạng'),(5,'Kỳ ảo'),(6,'Phát Triển Bản Thân'),(7,'Trinh thám - kinh dị'),(8,'Khoa Học Viễn Tưởng'),(9,'Tâm Lý Học'),(10,'Thanh xuân');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dob` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'customer@gmail.com','$2a$10$gSRhUjn0GNlzahRSI8Qdeepxq.2JdXBXFb1gN8sOu4dVXADsXRdLS','Nguyễn Thị Mai','0905123456','123 Đường A, Quận 1, TP.HCM','Nữ','1990-05-12','2023-01-14 17:00:00',NULL),(2,'le.van2@gmail.com','password2','Lê Văn Bình','0906234567','234 Đường B, Quận 2, TP.HCM','Nam','1988-07-24','2023-02-11 17:00:00',NULL),(3,'tran.hoai3@gmail.com','password3','Trần Hoài Nam','0907345678','345 Đường C, Quận 3, TP.HCM','Nam','1992-10-14','2023-06-16 17:00:00',NULL),(4,'pham.thu4@gmail.com','password4','Phạm Thu Hà','0908456789','456 Đường D, Quận 4, TP.HCM','Nữ','1991-12-30','2023-12-09 17:00:00',NULL),(5,'nguyen.anh5@gmail.com','password5','Nguyễn Anh Tuấn','0909567890','567 Đường E, Quận 5, TP.HCM','Nam','1993-04-20','2023-04-29 17:00:00',NULL),(6,'dang.quoc6@gmail.com','password6','Đặng Quốc Khánh','0911678901','678 Đường F, Quận 6, TP.HCM','Nam','1990-06-01','2023-10-25 17:00:00',NULL),(7,'hoang.thi7@gmail.com','password7','Hoàng Thị Lan','0912789012','789 Đường G, Quận 7, TP.HCM','Nữ','1985-08-17','2023-02-08 17:00:00',NULL),(8,'pham.van8@gmail.com','password8','Phạm Văn Dũng','0913890123','890 Đường H, Quận 8, TP.HCM','Nam','1994-11-22','2023-01-30 17:00:00',NULL),(9,'le.kim9@gmail.com','password9','Lê Kim Anh','0914901234','901 Đường I, Quận 9, TP.HCM','Nữ','1993-03-18','2023-02-04 17:00:00',NULL),(10,'vo.minh10@gmail.com','password10','Võ Minh Quang','0915012345','012 Đường J, Quận 10, TP.HCM','Nam','1992-07-07','2023-03-26 17:00:00',NULL),(11,'nguyen.hoai11@gmail.com','password11','Nguyễn Hoài Phương','0916123456','111 Đường K, Quận 11, TP.HCM','Nữ','1989-09-21','2023-11-18 17:00:00',NULL),(12,'doan.hong12@gmail.com','password12','Đoàn Hồng Sơn','0917234567','222 Đường L, Quận 12, TP.HCM','Nam','1991-01-10','2023-09-16 17:00:00',NULL),(13,'phan.thi13@gmail.com','password13','Phan Thị Lan','0918345678','333 Đường M, Quận Bình Tân, TP.HCM','Nữ','1995-02-12','2023-11-27 17:00:00',NULL),(14,'vu.minh14@gmail.com','password14','Vũ Minh Hùng','0919456789','444 Đường N, Quận Tân Bình, TP.HCM','Nam','1987-04-23','2023-05-27 17:00:00',NULL),(15,'ngo.kim15@gmail.com','password15','Ngô Kim Chi','0920567890','555 Đường O, Quận Tân Phú, TP.HCM','Nữ','1996-06-11','2023-04-20 17:00:00',NULL),(16,'bui.hoang16@gmail.com','password16','Bùi Hoàng Nam','0921678901','666 Đường P, Quận Phú Nhuận, TP.HCM','Nam','1993-03-15','2023-04-16 17:00:00',NULL),(17,'dinh.huu17@gmail.com','password17','Đinh Hữu Trí','0922789012','777 Đường Q, Quận Gò Vấp, TP.HCM','Nam','1988-11-09','2023-07-22 17:00:00',NULL),(18,'trinh.thi18@gmail.com','password18','Trịnh Thị Mai','0923890123','888 Đường R, Quận Thủ Đức, TP.HCM','Nữ','1994-08-14','2023-11-27 17:00:00',NULL),(19,'la.hoang19@gmail.com','password19','Lã Hoàng Quân','0924901234','999 Đường S, Quận Bình Thạnh, TP.HCM','Nam','1990-02-26','2023-11-12 17:00:00',NULL),(20,'khong.phuong20@gmail.com','password20','Khổng Phương Trinh','0925012345','1000 Đường T, Quận 7, TP.HCM','Nữ','1986-07-30','2023-08-12 17:00:00',NULL),(21,'ly.tuan21@gmail.com','password21','Lý Tuấn Anh','0926123456','1111 Đường U, Quận 6, TP.HCM','Nam','1992-10-25','2023-06-21 17:00:00',NULL),(22,'cao.van22@gmail.com','password22','Cao Văn Thành','0927234567','1212 Đường V, Quận 5, TP.HCM','Nam','1984-12-05','2023-07-09 17:00:00',NULL),(23,'dao.thanh23@gmail.com','password23','Đào Thanh Hương','0928345678','1313 Đường W, Quận 4, TP.HCM','Nữ','1989-01-19','2023-03-08 17:00:00',NULL),(24,'chu.kim24@gmail.com','password24','Chu Kim Ngân','0929456789','1414 Đường X, Quận 3, TP.HCM','Nữ','1995-05-16','2023-05-13 17:00:00',NULL),(25,'luu.hong25@gmail.com','password25','Lưu Hồng Sơn','0930567890','1515 Đường Y, Quận 2, TP.HCM','Nam','1991-03-07','2023-04-07 17:00:00',NULL),(26,'tong.thi26@gmail.com','password26','Tống Thị Hà','0931678901','1616 Đường Z, Quận 1, TP.HCM','Nữ','1994-06-18','2023-03-27 17:00:00',NULL),(27,'ly.hoang27@gmail.com','password27','Lý Hoàng Gia','0932789012','1717 Đường A1, Quận Tân Bình, TP.HCM','Nam','1987-10-30','2023-05-20 17:00:00',NULL),(28,'truong.anh28@gmail.com','password28','Trương Anh Thư','0933890123','1818 Đường B2, Quận Bình Tân, TP.HCM','Nữ','1990-08-05','2023-03-18 17:00:00',NULL),(29,'luong.minh29@gmail.com','password29','Lương Minh Tâm','0934901234','1919 Đường C3, Quận Thủ Đức, TP.HCM','Nam','1995-11-15','2023-11-28 17:00:00',NULL),(30,'pham.ngoc30@gmail.com','password30','Phạm Ngọc Lan','0935012345','2020 Đường D4, Quận Gò Vấp, TP.HCM','Nữ','1993-09-22','2023-12-01 17:00:00',NULL),(31,'tungvu@gmail.com','$2a$10$/SpJEk7EjkkiAw.Fko3TcuN1zcoHIvj6meNSaTmk9MBS2pE4lANEG','Vũ Xuân Tùng','0123456789','Hà Nội','Nam','2024-12-04','2024-12-17 05:24:52',NULL),(32,'tung@gmail.com','$2a$10$pou39nHAEa0mhQnKkddSz.H3AIWkUqbDUBg5Xwg35NNmaQalj5.6u','Vũ Xuân Tùng','0123456789','Hà Nội','Nam','2024-12-02','2024-12-17 05:30:52',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `employee_name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dob` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'employee@gmail.com','$2a$10$y1/o.mlLDrmjUwcqL2ylG.6/tbZujKco25ue5ZYr2trEM6yrdazOO','Nguyen Thi A','0123456789','123 Main St, HCM','Nam','1990-10-10','admin',500,'2024-10-11 10:00:00',NULL),(2,'van.a2@gmail.com','$2a$10$Ndn56Qz70RwqdvBga1.TuuuVtbw6W92Kp8PwPLElYSXlHiWD2ALgu','Nguyen Thi 2','0123456789','123 Main St, HCM','Nam','1990-10-10','employee',500,'2024-10-11 10:00:00',NULL),(3,'van.a3@gmail.com','$2a$10$Ndn56Qz70RwqdvBga1.TuuuVtbw6W92Kp8PwPLElYSXlHiWD2ALgu','Nguyen Thi 3','0123456789','123 Main St, HCM','Nam','1990-10-10','employee',500,'2024-10-11 10:00:00',NULL),(4,'van.a4@gmail.com','$2a$10$Ndn56Qz70RwqdvBga1.TuuuVtbw6W92Kp8PwPLElYSXlHiWD2ALgu','Nguyen Thi 4','0123456789','123 Main St, HCM','Nam','1990-10-10','employee',500,'2024-10-11 10:00:00',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text,
  `notification_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `fk_notification_customer` (`customer_id`),
  CONSTRAINT `fk_notification_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `fk_orderdetail_cart` (`order_id`),
  KEY `fk_orderdetail_book` (`book_id`),
  CONSTRAINT `fk_orderdetail_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_orderdetail_cart` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,51,11,2,1000000),(2,51,23,1,800000),(3,52,17,3,1200000),(4,52,5,1,800000),(5,53,4,1,500000),(6,53,9,2,1000000),(7,54,13,1,1200000),(8,54,7,2,750000),(9,55,21,1,600000),(10,55,19,2,800000),(11,56,18,1,650000),(12,56,3,2,300000),(13,57,22,3,1800000),(14,57,25,2,450000),(15,58,14,1,1000000),(16,58,20,2,1100000),(17,59,10,3,750000),(18,59,5,1,300000),(19,60,12,2,800000),(20,60,24,1,1400000),(21,61,15,1,1000000),(22,61,30,2,900000),(23,62,16,1,1200000),(24,62,9,2,1000000),(25,63,3,3,800000),(26,63,5,1,400000),(27,64,8,2,1200000),(28,64,1,2,500000),(29,65,11,1,600000),(30,65,7,2,650000),(31,66,6,2,800000),(32,66,4,1,700000),(33,67,25,3,450000),(34,67,13,2,800000),(35,68,7,1,600000),(36,68,16,1,900000),(37,69,18,2,1000000),(38,69,5,1,300000),(39,70,22,2,700000),(40,70,10,3,500000),(41,71,12,1,800000),(42,71,24,2,600000),(43,72,1,3,500000),(44,72,11,2,700000),(45,73,17,2,800000),(46,73,6,1,300000),(47,74,14,1,1000000),(48,74,5,2,450000),(49,75,13,3,800000),(50,75,20,2,550000),(51,76,3,1,400000),(52,76,12,3,600000),(53,77,8,1,500000),(54,77,1,2,700000),(55,78,15,2,1200000),(56,78,4,1,500000),(57,79,9,1,700000),(58,79,19,2,800000),(59,80,22,2,500000),(60,80,12,1,800000),(61,81,10,2,900000),(62,81,25,1,600000),(63,82,5,1,350000),(64,82,16,2,700000),(65,83,2,3,600000),(66,83,18,1,350000),(67,84,24,1,750000),(68,84,19,2,800000),(69,85,13,2,800000),(70,85,5,1,200000),(71,86,8,3,500000),(72,86,7,1,400000),(73,87,5,2,450000),(74,87,16,1,550000),(75,88,25,3,650000),(76,88,1,2,700000),(77,89,10,2,800000),(78,89,13,1,500000),(79,90,14,1,1200000),(80,90,5,2,350000),(81,91,17,1,700000),(82,91,4,2,400000),(83,92,22,3,650000),(84,92,3,2,500000),(85,93,7,2,450000),(86,93,5,1,300000),(87,94,19,3,900000),(88,94,11,1,800000),(89,95,10,2,500000),(90,95,13,1,650000),(91,96,16,3,700000),(92,96,8,1,500000),(93,97,18,2,700000),(94,97,7,1,300000),(95,98,25,2,450000),(96,98,1,1,350000),(97,99,22,2,700000),(98,99,9,1,400000),(99,100,5,0,0),(100,100,2,0,0),(103,102,1,1,120000),(104,103,7,4,520000),(105,104,2,2,260000);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `total_amout` int NOT NULL DEFAULT '1',
  `total_price` double DEFAULT NULL,
  `order_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT (_utf8mb3'Chờ xử lý'),
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_customer` (`customer_id`),
  KEY `fk_order_employee` (`employee_id`),
  CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_order_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (50,12,3,1500000,1800000,'Chờ xử lý','2024-10-01 01:30:00'),(51,9,2,2000000,2300000,'Hoàn thành','2024-10-05 02:00:00'),(52,5,1,800000,950000,'Đang giao','2024-10-07 07:15:00'),(53,3,4,500000,600000,'Hoàn thành','2024-10-10 03:00:00'),(54,11,2,1200000,1400000,'Chờ xử lý','2024-10-12 04:30:00'),(55,2,3,750000,850000,'Đã hủy','2024-10-13 06:00:00'),(56,7,1,1800000,2100000,'Chờ xử lý','2024-10-14 05:45:00'),(57,4,4,2200000,2500000,'Hoàn thành','2024-10-17 01:20:00'),(58,15,1,950000,1050000,'Hoàn thành','2024-10-19 08:00:00'),(59,6,2,650000,780000,'Đang giao','2024-10-21 09:10:00'),(60,10,3,1700000,2000000,'Chờ xử lý','2024-10-23 02:50:00'),(61,13,4,2400000,2700000,'Hoàn thành','2024-10-25 03:30:00'),(62,8,1,2100000,2400000,'Đã hủy','2024-10-28 07:20:00'),(63,16,2,1300000,1500000,'Chờ xử lý','2024-10-30 01:05:00'),(64,14,3,2000000,2300000,'Hoàn thành','2024-11-01 05:10:00'),(65,20,4,1600000,1900000,'Đang giao','2024-11-03 06:40:00'),(66,21,1,2200000,2500000,'Hoàn thành','2024-11-04 08:00:00'),(67,18,2,1400000,1700000,'Đã hủy','2024-11-06 03:10:00'),(68,22,3,1900000,2200000,'Chờ xử lý','2024-11-08 02:30:00'),(69,19,4,1800000,2100000,'Hoàn thành','2024-11-08 07:25:00'),(70,23,1,1500000,1800000,'Chờ xử lý','2024-11-09 09:05:00'),(71,17,2,2400000,2800000,'Đang giao','2024-10-03 01:15:00'),(72,24,3,2200000,2500000,'Hoàn thành','2024-10-06 04:00:00'),(73,25,4,1800000,2100000,'Chờ xử lý','2024-10-09 05:00:00'),(74,26,1,2000000,2300000,'Đang giao','2024-10-13 07:40:00'),(75,27,2,1300000,1500000,'Hoàn thành','2024-10-17 09:10:00'),(76,28,3,2200000,2500000,'Chờ xử lý','2024-10-20 05:30:00'),(77,29,4,2400000,2700000,'Đã hủy','2024-10-22 06:00:00'),(78,30,1,1600000,1900000,'Chờ xử lý','2024-10-25 03:00:00'),(79,23,2,2500000,2900000,'Hoàn thành','2024-10-28 07:30:00'),(80,22,3,2000000,2300000,'Đang giao','2024-10-30 04:50:00'),(81,21,4,1900000,2200000,'Hoàn thành','2024-11-01 02:10:00'),(82,20,1,2100000,2400000,'Chờ xử lý','2024-11-04 03:20:00'),(83,19,2,1500000,1800000,'Hoàn thành','2024-11-05 01:40:00'),(84,18,3,2200000,2500000,'Chờ xử lý','2024-11-07 07:50:00'),(85,17,4,2300000,2600000,'Đang giao','2024-11-08 05:30:00'),(86,16,1,1400000,1700000,'Hoàn thành','2024-11-09 03:10:00'),(87,15,2,2000000,2300000,'Chờ xử lý','2024-11-09 04:50:00'),(88,14,3,2100000,2400000,'Hoàn thành','2024-11-09 05:30:00'),(89,13,4,2200000,2500000,'Đã hủy','2024-11-09 06:00:00'),(90,12,1,1300000,1600000,'Chờ xử lý','2024-11-09 07:10:00'),(91,4,2,1800000,2100000,'Hoàn thành','2024-10-04 06:30:00'),(92,11,3,1900000,2200000,'Chờ xử lý','2024-10-08 05:20:00'),(93,28,4,2300000,2600000,'Hoàn thành','2024-10-11 04:00:00'),(94,29,1,2100000,2400000,'Đang giao','2024-10-14 08:30:00'),(95,26,2,1800000,2100000,'Chờ xử lý','2024-10-18 09:00:00'),(96,4,3,1700000,2000000,'Hoàn thành','2024-10-21 10:00:00'),(97,16,4,2500000,2900000,'Chờ xử lý','2024-10-24 07:50:00'),(98,1,1,1900000,2200000,'Hoàn thành','2024-10-27 06:10:00'),(99,10,2,2000000,2300000,'Đang giao','2024-10-29 08:20:00'),(100,1,NULL,0,0,'Đang giao','2024-12-17 04:02:27'),(101,1,NULL,0,0,'Đã hủy','2024-12-17 04:59:54'),(102,1,NULL,1,120000,'Chờ xử lý','2024-12-17 05:00:38'),(103,1,NULL,4,520000,'Đang giao','2024-12-17 05:46:52'),(104,1,NULL,2,260000,'Đang giao','2024-12-17 05:54:59'),(105,1,NULL,1,140000,'Đã hủy','2024-12-17 08:52:25'),(106,1,NULL,4,540000,'Đã hủy','2024-12-17 09:23:25');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-19  9:35:33
