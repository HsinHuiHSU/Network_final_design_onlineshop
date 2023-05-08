CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ID` int DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (18,'admin','1');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `counter` varchar(225) NOT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('29');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `GBNO` tinyint NOT NULL AUTO_INCREMENT,
  `GBName` varchar(45) DEFAULT NULL,
  `Account` varchar(45) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  `ID` int DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (24,'黃政維好帥!','1330free','1','2022-06-18',18),(25,'黃政維好帥!','1330free','2','2022-06-18',18),(26,'黃政維好帥!','1330free','3','2022-06-18',18),(27,'黃政維好帥!!','1330free','07:58','2022-06-18',1),(28,'黃政維好帥!!','1330free','07:59','2022-06-18',1);
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Money` int NOT NULL,
  `Inventory` int NOT NULL,
  `pages` varchar(45) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `imgPath` varchar(45) NOT NULL,
  `sold` int DEFAULT NULL,
  `img2` varchar(45) DEFAULT NULL,
  `img3` varchar(45) DEFAULT NULL,
  `img4` varchar(45) DEFAULT NULL,
  `img5` varchar(45) DEFAULT NULL,
  `img6` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=130008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,'【台灣無毒生態白蝦】海水養殖白蝦','Seafood',560,1000,NULL,'規格：600g (21.2oz)<br>嚴選新鮮! 吃得出蝦味及甘甜，不用完全退冰，水煮即可。<br>中大尺寸，每隻大約15公分，一盒600克，大約22-25隻。<br><br>** 水產教室小知識** 蝦的新鮮度，可從蝦殼是否連肉判斷，若不好剝，代表不新鮮。（如坊間餐廳吃到飽等) <br>','assets/images/product/1.jpg',0,'assets/images/product/1.jpg',NULL,NULL,NULL,NULL),(2,'【宜蘭爆卵母香魚】中大規格','Seafood',245,996,NULL,'規格：185g±10% (6.5oz)<br><br><br>【宜蘭爆卵母香魚】185g±10% 中大規格(2-3人份)','assets/images/product/2.jpg',0,'assets/images/product/2.jpg',NULL,NULL,NULL,NULL),(3,'【台灣在地認證】海水養殖大文蛤','Seafood',290,998,NULL,'規格：600g (21.2oz)<br>【台灣在地認證】海水養殖無毒大文蛤(約25~30顆)三大檢驗報告。<br>【嚴格把關】三大檢驗報告(ISO / HACCP / SGS)，讓您及家人吃得安心冷藏食品，已吐砂！食用前再泡水10分鐘即可，直接料理真輕鬆。<br><br>【商品介紹】文蛤包裝前已吐過沙，若擔心吐不乾淨，可按下列方式再吐一次沙： <br>1. 以1杯量米杯的水兌1茶匙鹽的比例調成鹽水，鹽水的高度能淹過文蛤即可。<br>2. 吐沙時間勿超過2小時。<br>3. 請於室溫吐沙。如果沒有要一次煮一整包，可將剩下的已吐完沙的文蛤瀝乾，放入塑膠袋後綁緊，再置於冷藏保存。<br>注意事項：本品含有螺貝類，對其過敏者請勿食用；產地台南七股，純海水粗放養殖；養殖6個月以上，以真空包裝出貨。','assets/images/product/3.jpg',0,'assets/images/product/3.jpg',NULL,NULL,NULL,NULL),(4,'【無毒生食級】北海道生食級干貝','Seafood',268,1000,NULL,'規格：130g±5g (4.6oz) <br>原產地：日本北海道<br>北海道生食級干貝(3S級，中大顆) 130g/包(5粒) <br><br>【商品介紹】<br>干貝鮮甜美味、顆顆飽滿，每顆都比50元硬幣還大！<br>◆肉鮮潤扎實料理簡單富有彈性的口感<br>◆顆顆厚實超大顆、鮮嫩多汁','assets/images/product/4.jpg',0,'assets/images/product/4.jpg',NULL,NULL,NULL,NULL),(5,'【台灣第一名的魚】午仔魚一夜干','Seafood',300,1000,NULL,'規格：270g±5% (9.5oz)<br><br>【商品介紹】<br>「一午、二紅沙、三鯧、四馬鮫…」是漁人心目中的好魚排行榜，午仔魚是漁夫與釣友的第一名夢幻海魚，肉質細緻、刺少，平實有味且鮮嫩豐脂，怕冷的午仔在氣候溫暖、少寒流的屏東枋寮，是最美好的活水活路。凌晨就從產地進行捕撈作業，魚一離開水面馬上急速冷凍，分類完成馬上進行去鱗、去鰓及內臟的程序，這步驟確保魚不因運送過程過長失去鮮度！ <br>一夜干是源自日本北海道地區，為了保存鮮魚而發明的\"醃製、風乾\"這種保存魚的方式，經過一夜的風乾，將魚身上多餘的水分蒸發而凸顯魚本身油脂的鮮味，肉質更為緊實，經過料理程序後，風味更加濃郁，讓人讚不絕口。','assets/images/product/5.jpg',0,'assets/images/product/5.jpg',NULL,NULL,NULL,NULL),(6,'【頂級牛排】1855認證 Prime等級羽下牛排','Beef',450,1000,NULL,'規格：250g (8.8oz) <br>【1855 CAB認證】每100頭安格斯約只有7頭安格斯牛才能獲得此CAB認證。安格斯一樣分為八個等級，而『CAB認證』中的等級，又比USDA認證的等級的牛排略勝半籌。<br><br>【部位介紹】羽下牛排，選自於牛肩胛中\"最軟嫩的部位\"，口感與無骨牛小排相似。油花豐富、分布均勻，肉中間有少許細筋，肉質香甜有口感，適合煎烤或燒烤，越嚼越香越好吃！也因為翼板牛肉(羽下)的油脂呈現大理石紋的分布，因此英文別名就叫做\"Marbled Beef\"，(Marbled的意思是\"大理石花紋的\")!珍貴且難得。<br>老饕必吃 !! 極鮮嫩羽下牛排','assets/images/product/6.jpg',0,'assets/images/product/6.jpg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg\n',NULL,NULL),(7,'【頂級牛排】1855認證 安格斯頂級肋眼牛排','Beef',760,990,NULL,'規格：294.8g (10.4oz) <br>【1855 CAB認證】每100頭安格斯約只有7頭安格斯牛才能獲得此CAB認證。安格斯一樣分為八個等級，而『CAB認證』中的等級，又比USDA認證的等級的牛排略勝半籌。<br><br>【部位介紹】取自牛隻肋脊部靠近背脊的肌肉，肉質嫩度僅次於菲力，大理石紋的油花多且分布均勻，可說是最受歡迎、也最被人熟知的牛排部位。「Rib」是「肋排」的意思，「Ribeye」是從牛肋裡切下來的，中文叫做「肋眼」。肋眼牛排遍滿均勻的大理石油花紋路，香味濃郁迷人。油花分佈較多且均勻，有明顯的牛肉香氣；肉質軟嫩，嫩度僅次於菲力牛排。 熟度為五分熟左右最適合；若怕血水可選擇七分熟。<br>','assets/images/product/7.jpg',0,'assets/images/product/7.jpg','assets/images/product/7(1).jpg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg',NULL),(8,'【頂級牛排】Prime等級 安格斯無骨牛小排','Beef',490,998,NULL,'規格：200g (7oz) <br>【1855 CAB認證】每100頭安格斯約只有7頭安格斯牛才能獲得此CAB認證。安格斯一樣分為八個等級，而『CAB認證』中的等級，又比USDA認證的等級的牛排略勝半籌。<br><br>【部位介紹】無骨牛小排取自牛前胸肋骨部位(Short Rib)，帶有新鮮肉品光澤、含有豐富的大理石花紋完美油花細緻均勻分佈肉質結實，帶油筋且油脂甚多。<br>若您喜歡牛油香味及肉質軟嫩的非常推薦選無骨牛小排。<br>','assets/images/product/8.jpg',0,'assets/images/product/8.jpg','assets/images/product/American.jpeg\n','assets/images/product/American2.jpeg','assets/images/product/American3.jpeg\n','assets/images/product/American4.jpeg\n'),(9,'【嚴選牛排】美國安格斯 帶骨牛小排','Beef',420,1000,NULL,'規格：300g (10.5oz) <br>【商品介紹】帶骨牛小排取自牛的肋脊部位，一頭牛總共有13根的肋骨，經切割後成為“帶骨牛小排”。帶骨附近的油花非常豐富且集中，油筋跟膠質也較多，為整隻牛油脂與油花分佈最為豐富之部位，適合煎熟一點，骨頭經過煎鍋或是烤箱高溫之後的迷人焦香味，外脆內軟，煎到全熟都很好吃。<br><br>【商品特色】適合熟度：七分至全熟，在室溫下退冰回溫後，取出包裝把帶骨牛小排的血水擦乾。熱鍋後無需放油，放入帶骨牛小排煎1分鐘後，翻面再煎1分鐘，關火後放在平底鍋中2~3分鐘用餘溫讓中間自然熟透，微焦撒上黑胡椒及鹽巴即可享用。<br>','assets/images/product/9.jpg',0,'assets/images/product/9.jpg',NULL,NULL,NULL,NULL),(10,'【火鍋肉片】1855認證 Prime等級羽下肉片','Beef',380,1000,NULL,'規格：200g (7oz) <br>【1855 CAB認證】每100頭安格斯約只有7頭安格斯牛才能獲得此CAB認證。安格斯一樣分為八個等級，而『CAB認證』中的等級，又比USDA認證的等級的牛排略勝半籌。<br><br>【商品介紹】『安格斯牛中LV』-美國1855牛肉等級皆是經由人工挑選出Prime、Choice等級，同樣等級的牛肉，1855的肉質及風味來得更好更棒，每一階段都是經過嚴格的品質把關。更重要的是，1855牛肉皆有經過很重要的階段-濕式熟成，所以有更嫩的肉質，更濃郁的牛肉香氣與風味。<br>','assets/images/product/10.jpg',0,'assets/images/product/10.jpg','assets/images/product/American.jpeg\n','assets/images/product/American2.jpeg\n',NULL,NULL),(11,'【火鍋肉片】Prime等級 安格斯無骨牛小排','Beef',480,1000,NULL,'規格：200g±5% (7oz) <br><br>【火鍋肉片】最高等級 Prime-安格斯無骨牛小排火鍋肉片<br>','assets/images/product/11.jpg',0,'assets/images/product/11.jpg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg',NULL,NULL),(12,'【火鍋肉片】Prime等級 安格斯霜降雪花','Beef',580,1000,NULL,'規格：200g±5% (7oz) <br><br>【CAB認證】安格斯霜降雪花火鍋肉片','assets/images/product/12.jpg',0,'assets/images/product/12.jpg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg',NULL,NULL),(13,'【火鍋肉片】美國安格斯 牛五花','Beef',560,1000,NULL,'規格：400g (14.1oz) <br><br>【美國安格斯】美國安格斯牛五花火鍋肉片 長版薄片(26cm)，厚度 2mm <br>','assets/images/product/13.jpg',0,'assets/images/product/13.jpg','assets/images/product/American.jpeg\n','assets/images/product/American2.jpeg',NULL,NULL),(14,'【燒烤肉片】1855認證 Prime等級羽下肉片','Beef',380,1000,NULL,'規格：200g (7oz) <br>【1855 CAB認證】每100頭安格斯約只有7頭安格斯牛才能獲得此CAB認證。安格斯一樣分為八個等級，而『CAB認證』中的等級，又比USDA認證的等級的牛排略勝半籌。<br><br>【商品介紹】『安格斯牛中LV』-美國1855牛肉等級皆是經由人工挑選出Prime、Choice等級，同樣等級的牛肉，1855的肉質及風味來得更好更棒，每一階段都是經過嚴格的品質把關。更重要的是，1855牛肉皆有經過很重要的階段-濕式熟成，所以有更嫩的肉質，更濃郁的牛肉香氣與風味。<br>','assets/images/product/14.jpg',0,'assets/images/product/14.jpg','assets/images/product/American5.jpeg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg',NULL),(15,'【燒烤肉片】Prime等級 安格斯無骨牛小排','Beef',480,1000,NULL,'規格：200g (7oz) <br><br>【燒烤肉片】最高等級 Prime-安格斯無骨牛小排燒烤肉片','assets/images/product/15.jpg',0,'assets/images/product/15.jpg','assets/images/product/American5.jpeg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg',NULL),(16,'【燒烤肉片】Prime等級 安格斯霜降雪花','Beef',640,1000,NULL,'規格：200g±5% (7oz) <br><br>【1855 CAB認證】安格斯牛五花燒烤肉片','assets/images/product/16.jpg',0,'assets/images/product/16.jpg','assets/images/product/American5.jpeg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg\n',NULL),(17,'【燒烤肉片】美國安格斯 牛五花','Beef',390,1000,NULL,'規格：400g (14.1oz) <br><br>【美國安格斯】美國安格斯牛五花燒烤肉片長版(26cm),厚度 3mm <br>','assets/images/product/17.jpg',0,'assets/images/product/17.jpg','assets/images/product/American5.jpeg','assets/images/product/American.jpeg','assets/images/product/American2.jpeg\n',NULL),(18,'【日本A5和牛-鹿兒島】頂級燒烤肉片','A5 Beef',680,795,NULL,'規格：150g (5.2oz) <br>【日本和牛】被譽為世界上等級最高的牛肉，其中等級崇高、又被稱作「肉的藝術品」，每一隻都經過嚴正的管理、細心養育；和牛的認證需經過嚴謹的審查，擁有珍貴的『A5』最高等級名餐廳御用上等牛肉、肉質細嫩入口即化、香味獨特濃郁，鹿兒島因氣候溫暖,所產的鹿兒島牛，肉質鮮紅、脂肪分佈均勻，咬勁有濃郁的牛肉味。<br>【鹿兒島和牛】鹿兒島是日本國內最大和牛生產地，是屬於野性最強的和牛風味，位於日本九州最南端的縣市，溫暖氣候、豐富自然美景是最大特色。鹿兒島和牛，肉質鮮紅、脂肪分佈均勻，最大特色是牛肉風味非常濃郁，口感也相對有咬勁，日本A5黑毛和牛肉片油花分佈明顯，能同時品嚐到油脂甜味與瘦肉鮮味的稀有部位，是老饕最愛的部位之一。','assets/images/product/18.jpg',0,'assets/images/product/18.jpg',NULL,NULL,NULL,NULL),(19,'【日本A5和牛-近江】頂級肋眼牛排','A5 Beef',2980,1000,NULL,'規格：400g (14.1oz) <br>【日本和牛】被譽為世界上等級最高的牛肉，其中等級崇高、又被稱作「肉的藝術品」，每一隻都經過嚴正的管理、細心養育；和牛的認證需經過嚴謹的審查，擁有珍貴的『A5』最高等級名餐廳御用上等牛肉、肉質細嫩入口即化、香味獨特濃郁。<br><br>【日本A5和牛-近江】頂級肋眼牛排','assets/images/product/19.jpg',0,'assets/images/product/19.jpg',NULL,NULL,NULL,NULL),(20,'【日本A5和牛-鹿兒島】頂級火鍋肉片','A5 Beef',680,998,NULL,'規格：150g (5.2oz) <br>【日本和牛】被譽為世界上等級最高的牛肉，其中等級崇高、又被稱作「肉的藝術品」，每一隻都經過嚴正的管理、細心養育；和牛的認證需經過嚴謹的審查，擁有珍貴的『A5』最高等級名餐廳御用上等牛肉、肉質細嫩入口即化、香味獨特濃郁，鹿兒島因氣候溫暖,所產的鹿兒島牛，肉質鮮紅、脂肪分佈均勻，咬勁有濃郁的牛肉味。<br>【鹿兒島和牛】鹿兒島是日本國內最大和牛生產地，是屬於野性最強的和牛風味，位於日本九州最南端的縣市，溫暖氣候、豐富自然美景是最大特色。鹿兒島和牛，肉質鮮紅、脂肪分佈均勻，最大特色是牛肉風味非常濃郁，口感也相對有咬勁，日本A5黑毛和牛肉片油花分佈明顯，能同時品嚐到油脂甜味與瘦肉鮮味的稀有部位，是老饕最愛的部位之一','assets/images/product/20.jpg',0,'assets/images/product/20.jpg',NULL,NULL,NULL,NULL),(21,'【頂級牛排】澳洲頂級金牌Josdale 菲力牛排','AUST Beef',440,1000,NULL,'規格：150g (5.2oz) <br>【Josdale】Josdale由澳洲牛肉先鋒Joe Catalfamo創立，牛隻生長於水草肥美的維多利亞洲Gippsland，以天然方法飼養，比較健康，肉質鮮嫩多汁肉味濃。<br><br>【商品介紹】澳洲MLA、美國USDA認可 曾奪得多項大獎，澳洲JOSDALE草飼黑安格斯，天然方法飼養，肉質嫩多汁，無筋口感軟嫩適中。','assets/images/product/21.jpg',0,'assets/images/product/21.jpg','assets/images/product/Aust.jpeg','assets/images/product/Aust2.jpeg',NULL,NULL),(22,'【頂級牛排】澳洲頂級金牌Josdale 羽下牛排','AUST Beef',410,999,NULL,'規格：200g (7oz) <br>【Josdale】Josdale由澳洲牛肉先鋒Joe Catalfamo創立，牛隻生長於水草肥美的維多利亞洲Gippsland，以天然方法飼養，比較健康，肉質鮮嫩多汁肉味濃。<br><br>【商品介紹】澳洲MLA、美國USDA認可 曾奪得多項大獎，澳洲JOSDALE草飼黑安格斯，天然方法飼養，肉質嫩多汁，無筋口感軟嫩適中。','assets/images/product/22.jpg',0,'assets/images/product/22.jpg',NULL,NULL,NULL,NULL),(23,'【桐德二世】黑蜜豬里肌火鍋片','Pork',270,1000,NULL,'規格：200g (7oz) <br><br>【桐德二世】黑蜜豬里肌火鍋片','assets/images/product/23.jpg',0,'assets/images/product/23.jpg',NULL,NULL,NULL,NULL),(24,'【桐德二世】黑蜜豬梅花火鍋片','Pork',270,999,NULL,'規格：200g (7oz) <br><br>【桐德二世】黑蜜豬梅花火鍋片','assets/images/product/24.jpg',0,'assets/images/product/24.jpg',NULL,NULL,NULL,NULL),(25,'【頂級伊比利黑豬】法式帶骨里肌','Pork',350,1000,NULL,'規格：145g (4.8oz) <br>【商品介紹】嚴選自豬隻的肩胛部位，肉質軟嫩、肥瘦各半，宛如梅花般均勻分布的油脂又有「上肉」之稱，無需過度調味，肉汁滿溢即可享受伊比利豬獨特迷人的香氣。<br>【產地介紹】 來自西班牙的伊比利豬是風靡全球的歐陸傳奇食材之一，有「勞斯萊斯級豬肉」和「神戶級豬肉」的美譽。此外，由於脂肪中含有大量和橄欖油類似的不飽和脂肪酸，另有「會走路的橄欖樹」之稱，是美味又健康的頂級食材。 在地中海豔陽的照料下成長，以橡果、香草和橄欖為主食，伊比利豬的油脂豐潤卻清甜不膩，細緻肉質中散發出淡淡的橡果香氣。豔紅似牛的瘦肉和雪白的油花無需過度調味，即可品嚐到食材本身的鮮甜與獨特香氣；雖然烹調後的外觀似乎和一般豬肉並無二致，只要一放入口中，您就可以體會伊比利豬的與眾不同。','assets/images/product/25.jpg',0,'assets/images/product/25.jpg',NULL,NULL,NULL,NULL),(26,'【桐德盤克夏】黑豚五花火鍋片','Pork',280,1000,NULL,'規格：200g (7oz) <br><br>【桐德盤克夏】黑豚五花火鍋片(日本鹿兒島黑豚種源)','assets/images/product/26.jpg',0,'assets/images/product/26.jpg',NULL,NULL,NULL,NULL),(27,'【桐德盤克夏】黑豚五花燒烤片','Pork',280,1000,NULL,'規格：200g (7oz) <br><br>【桐德盤克夏】黑豚五花燒烤片(日本鹿兒島黑豚種源)','assets/images/product/27.jpg',NULL,'assets/images/product/27.jpg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('0000','0000','0000@gmail.com',NULL,NULL,NULL,'0000'),('1330free','1234','1234@gmail.com','男','桃園市','0981553325','黃政維好帥!!'),('333','333','333@gmail.com',NULL,NULL,NULL,'333');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `Recordid` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Money` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `Pname` varchar(45) DEFAULT NULL,
  `imgPath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (24,'1330free',10,'A5 Beef',680,'2022-06-14 23:42:03','黃政維','【日本A5和牛-鹿兒島】頂級火鍋肉片','assets/images/product/18.jpg'),(39,'1330free',80,'A5 Beef',680,'2022-06-16 14:00:35','黃政維','【日本A5和牛-鹿兒島】頂級燒烤肉片','assets/images/product/18.jpg'),(40,'1330free',1,'Seafood',245,'2022-06-16 14:09:05','黃政維','【宜蘭爆卵母香魚】中大規格','assets/images/product/2.jpg'),(41,'1330free',1,'Beef',490,'2022-06-16 14:09:05','黃政維','【頂級牛排】Prime等級 安格斯無骨牛小排','assets/images/product/8.jpg'),(42,'1330free',1,'AUST Beef',410,'2022-06-16 14:09:05','黃政維','【頂級牛排】澳洲頂級金牌Josdale 羽下牛排','assets/images/product/22.jpg'),(43,'1330free',1,'Seafood',245,'2022-06-17 03:00:06','黃政維好帥!','【宜蘭爆卵母香魚】中大規格','assets/images/product/2.jpg'),(44,'1330free',100,'A5 Beef',680,'2022-06-17 03:04:54','黃政維好帥!','【日本A5和牛-鹿兒島】頂級燒烤肉片','assets/images/product/18.jpg'),(45,'1330free',5,'A5 Beef',680,'2022-06-18 19:57:06','黃政維好帥!','【日本A5和牛-鹿兒島】頂級燒烤肉片','assets/images/product/18.jpg');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total`
--

DROP TABLE IF EXISTS `total`;
/*!50001 DROP VIEW IF EXISTS `total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total` AS SELECT 
 1 AS `Recordid`,
 1 AS `total_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `totalprice`
--

DROP TABLE IF EXISTS `totalprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totalprice` (
  `totalprice` int DEFAULT NULL,
  `totalprice_ID` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `totalprice_ID_UNIQUE` (`totalprice_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=680 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalprice`
--

LOCK TABLES `totalprice` WRITE;
/*!40000 ALTER TABLE `totalprice` DISABLE KEYS */;
INSERT INTO `totalprice` VALUES (380,1),(625,2),(380,3),(625,4),(380,5),(625,6),(380,7),(625,8),(380,9),(625,10),(380,11),(625,12),(380,13),(625,14),(380,15),(625,16),(380,17),(625,18),(380,19),(625,20),(380,21),(625,22),(380,23),(625,24),(380,25),(625,26),(380,27),(625,28),(380,29),(625,30),(380,31),(625,32),(380,33),(625,34),(380,35),(625,36),(380,37),(625,38),(380,39),(625,40),(380,41),(625,42),(380,43),(625,44),(380,45),(625,46),(380,47),(625,48),(380,49),(625,50),(380,51),(625,52),(380,53),(625,54),(380,55),(625,56),(380,57),(625,58),(380,59),(625,60),(380,61),(625,62),(380,63),(625,64),(380,65),(625,66),(380,67),(625,68),(380,69),(625,70),(380,71),(625,72),(1075,73),(380,74),(625,75),(1075,76),(380,77),(625,78),(1075,79),(380,80),(625,81),(1075,82),(5155,83),(245,84),(695,85),(4775,86),(450,87),(4530,88),(4080,89),(4080,90),(4080,91),(4080,92),(4080,93),(4080,94),(4080,95),(680,96),(680,97),(680,98),(680,99),(680,100),(680,101),(680,102),(680,103),(680,104),(680,105),(680,106),(680,107),(680,108),(680,109),(680,110),(680,111),(680,112),(680,113),(680,114),(680,115),(680,116),(680,117),(680,118),(680,119),(680,120),(680,121),(680,122),(680,123),(680,124),(680,125),(680,126),(680,127),(680,128),(680,129),(680,130),(680,131),(680,132),(680,133),(680,134),(680,135),(680,136),(680,137),(680,138),(680,139),(680,140),(680,141),(680,142),(680,143),(680,144),(680,145),(680,146),(680,147),(680,148),(680,149),(680,150),(680,151),(680,152),(680,153),(680,154),(18560,155),(17880,156),(17880,157),(17880,158),(17880,159),(17880,160),(17880,161),(17880,162),(17880,163),(17880,164),(17880,165),(17880,166),(680,167),(680,168),(680,169),(680,170),(680,171),(680,172),(3660,173),(680,174),(3660,175),(680,176),(3660,177),(680,178),(3660,179),(680,180),(3660,181),(680,182),(3660,183),(680,184),(3660,185),(680,186),(3660,187),(680,188),(3660,189),(680,190),(3660,191),(680,192),(3660,193),(680,194),(3660,195),(680,196),(3660,197),(680,198),(3660,199),(680,200),(3660,201),(680,202),(3660,203),(680,204),(3660,205),(680,206),(3660,207),(680,208),(3660,209),(680,210),(3660,211),(680,212),(3660,213),(680,214),(3660,215),(680,216),(3660,217),(680,218),(3660,219),(680,220),(3660,221),(680,222),(3660,223),(680,224),(3660,225),(680,226),(3660,227),(680,228),(3660,229),(680,230),(3660,231),(680,232),(3660,233),(680,234),(3660,235),(680,236),(3660,237),(680,238),(3660,239),(1360,240),(4340,241),(1360,242),(4340,243),(5100,244),(760,245),(760,246),(760,247),(760,248),(1440,249),(760,250),(680,251),(680,252),(680,253),(1240,254),(680,255),(1240,256),(680,257),(1240,258),(680,259),(1240,260),(680,261),(1240,262),(680,263),(1240,264),(680,265),(1240,266),(560,267),(560,268),(560,269),(14900,270),(14900,271),(14900,272),(14900,273),(14900,274),(14900,275),(14900,276),(14900,277),(14900,278),(14900,279),(3000,280),(3000,281),(3000,282),(3000,283),(3000,284),(3000,285),(4400,286),(3000,287),(4400,288),(1400,289),(1400,290),(1400,291),(1400,292),(1400,293),(1400,294),(1400,295),(1400,296),(2520,297),(2520,298),(2520,299),(2520,300),(2520,301),(2520,302),(2520,303),(2520,304),(2520,305),(2520,306),(2520,307),(2520,308),(2520,309),(2520,310),(2520,311),(2520,312),(2520,313),(2520,314),(2520,315),(2520,316),(2520,317),(2520,318),(680,319),(2520,320),(2520,321),(2520,322),(2520,323),(2520,324),(2520,325),(2520,326),(2520,327),(2520,328),(2520,329),(2520,330),(2520,331),(2765,332),(2520,333),(2765,334),(2520,335),(2765,336),(2520,337),(2765,338),(2520,339),(2765,340),(2520,341),(2765,342),(2520,343),(2765,344),(2520,345),(2765,346),(2520,347),(2765,348),(680,349),(680,350),(680,351),(680,352),(760,353),(760,354),(680,355),(680,356),(680,357),(680,358),(680,359),(680,360),(680,361),(680,362),(680,363),(6800,364),(6800,365),(6800,366),(6800,367),(5600,368),(5600,369),(680,370),(680,371),(680,372),(680,373),(680,374),(680,375),(680,376),(680,377),(680,378),(680,379),(680,380),(680,381),(680,382),(680,383),(680,384),(680,385),(680,386),(680,387),(680,388),(680,389),(680,390),(680,391),(680,392),(680,393),(680,394),(680,395),(680,396),(680,397),(680,398),(680,399),(680,400),(680,401),(290,402),(290,403),(680,404),(680,405),(490,406),(490,407),(270,408),(270,409),(270,410),(680,411),(680,412),(760,413),(760,414),(760,415),(760,416),(1050,417),(760,418),(1050,419),(490,420),(490,421),(490,422),(910,423),(490,424),(910,425),(490,426),(490,427),(490,428),(490,429),(1170,430),(490,431),(1170,432),(680,433),(680,434),(680,435),(680,436),(4760,437),(4760,438),(4760,439),(11600,440),(4760,441),(11600,442),(680,443),(680,444),(680,445),(54400,446),(54400,447),(54400,448),(54400,449),(54400,450),(54400,451),(54400,452),(54400,453),(54400,454),(54400,455),(680,456),(680,457),(680,458),(680,459),(680,460),(680,461),(680,462),(680,463),(680,464),(680,465),(680,466),(680,467),(680,468),(680,469),(680,470),(680,471),(680,472),(680,473),(680,474),(680,475),(680,476),(680,477),(680,478),(680,479),(680,480),(680,481),(680,482),(680,483),(680,484),(680,485),(680,486),(680,487),(680,488),(680,489),(680,490),(680,491),(680,492),(680,493),(680,494),(680,495),(680,496),(680,497),(680,498),(245,499),(245,500),(735,501),(245,502),(735,503),(1145,504),(245,505),(735,506),(1145,507),(680,508),(680,509),(245,510),(245,511),(245,512),(245,513),(245,514),(245,515),(245,516),(245,517),(245,518),(245,519),(245,520),(245,521),(245,522),(245,523),(245,524),(245,525),(245,526),(245,527),(245,528),(680,529),(680,530),(680,531),(680,532),(680,533),(680,534),(680,535),(680,536),(680,537),(680,538),(680,539),(680,540),(680,541),(680,542),(680,543),(680,544),(680,545),(680,546),(680,547),(680,548),(680,549),(680,550),(680,551),(245,552),(245,553),(245,554),(245,555),(245,556),(245,557),(245,558),(245,559),(245,560),(245,561),(245,562),(245,563),(245,564),(680,565),(680,566),(680,567),(680,568),(680,569),(245,570),(245,571),(245,572),(245,573),(245,574),(245,575),(245,576),(245,577),(245,578),(245,579),(245,580),(245,581),(245,582),(245,583),(245,584),(245,585),(245,586),(245,587),(245,588),(245,589),(245,590),(245,591),(245,592),(245,593),(245,594),(680,595),(680,596),(680,597),(680,598),(680,599),(680,600),(680,601),(680,602),(680,603),(680,604),(680,605),(680,606),(680,607),(680,608),(680,609),(680,610),(245,611),(245,612),(245,613),(245,614),(245,615),(245,616),(245,617),(245,618),(245,619),(245,620),(245,621),(245,622),(245,623),(245,624),(245,625),(245,626),(245,627),(245,628),(245,629),(245,630),(245,631),(245,632),(245,633),(245,634),(245,635),(245,636),(245,637),(245,638),(245,639),(245,640),(245,641),(245,642),(245,643),(245,644),(680,645),(680,646),(680,647),(680,648),(680,649),(680,650),(680,651),(680,652),(680,653),(680,654),(680,655),(680,656),(680,657),(680,658),(680,659),(680,660),(680,661),(680,662),(68000,663),(68000,664),(680,665),(680,666),(680,667),(680,668),(680,669),(680,670),(680,671),(680,672),(680,673),(680,674),(680,675),(3400,676),(3400,677),(3400,678),(3400,679);
/*!40000 ALTER TABLE `totalprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `total`
--

/*!50001 DROP VIEW IF EXISTS `total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total` AS select `record`.`Recordid` AS `Recordid`,sum((`record`.`quantity` * `record`.`Money`)) AS `total_price` from `record` group by `record`.`Recordid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 19:59:42
