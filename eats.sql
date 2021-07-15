-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: eats
-- ------------------------------------------------------
-- Server version	5.6.51-log

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`direccion_id`),
  KEY `fk_cliente_direccion_idx` (`direccion_id`),
  CONSTRAINT `fk_cliente_direccion` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Rubin','ribanez0@bizjournals.com','XThPojVrAjlm',1),(2,'Sybil','swastell1@nasa.gov','Sgsg199N7C9f',2),(3,'Vallie','vezele2@a8.net','eBVDfViGt2',3),(4,'Kaile','ktarbert3@discovery.com','GCnag7YPe',4),(5,'Milt','mgomme4@telegraph.co.uk','eUpuyuPfH',5),(6,'Aretha','adallow5@ustream.tv','oEy1O6CstsHw',6),(7,'Guenna','gabrahamsen6@economist.com','sMZHENOTqg',7),(8,'Denice','dwallege7@tamu.edu','bIjRT9B86ZxZ',8),(9,'Taffy','tcurrer8@intel.com','TguGd07TdNQF',9),(10,'Tonya','tmacginney9@princeton.edu','qGPfZySTY1r',10),(11,'Penrod','ppenvardena@youku.com','hQO6CMzVHbr',11),(12,'Star','scroucherb@360.cn','YJyLSu',12),(13,'Madelon','mhurichc@nyu.edu','r0sqb2rkd0',13),(14,'Filippa','fbasfordd@earthlink.net','g0EypgZ',14),(15,'Elenore','eironsidee@cloudflare.com','CoPrmXPCG',15),(16,'Sayres','smacneishf@elpais.com','NfNHPhYG2qW',16),(17,'Pepito','pclemintonig@addthis.com','JVIQAW',17),(18,'Janaye','jbirth@google.ru','UnPXbZ',18),(19,'Katerine','kwortsi@cloudflare.com','6MAkUPt',19),(20,'Jennie','jenglandj@1und1.de','teqIFRU',20),(21,'Ginevra','gfateleyk@accuweather.com','MBf8QdW',21),(22,'Angela','afarrancel@google.ru','CVUc3Rm',22),(23,'Ulric','umonteithm@sina.com.cn','fsdRn5L',23),(24,'Charles','clown@marketwatch.com','3IJeMi',24),(25,'Damian','dsaurato@sogou.com','OWjorBDy',25),(26,'Agretha','awhithamp@nydailynews.com','i2tY2sZ64ljr',26),(27,'Susie','sshapcottq@oaic.gov.au','bj2wRH5j',27),(28,'Leonidas','lhadwickr@umn.edu','Grz5o8NNrs1',28),(29,'Mohammed','mmiddass@state.tx.us','K2WsFyBeih',29),(30,'Allegra','acreeboet@wordpress.com','b9cAZEZA',30),(31,'Antonie','aeagleshamu@google.com.au','ljGbOdx',31),(32,'Kylie','kswallowv@examiner.com','oUaZqSTs',32),(33,'Kimmi','kakroydw@webeden.co.uk','IGaqUqNzrMwK',33),(34,'Harlene','hgallacherx@imageshack.us','m8vhiT',34),(35,'Gene','gbompassy@walmart.com','diq0lv',35),(36,'Sigismund','slinsteadz@nps.gov','IHNRTaV7VL',36),(37,'Max','mbozward10@yandex.ru','vKZkYYiZW',37),(38,'Orin','obaline11@virginia.edu','AtyNmL',38),(39,'Henryetta','hwestphal12@virginia.edu','YfTQ5eI1AxT',39),(40,'Sumner','sjepson13@jigsy.com','ScznHZQoEFR7',40),(41,'Shamus','swaison14@plala.or.jp','iyy76TdJs',41),(42,'Norri','nbirkmyr15@soundcloud.com','BGZAT2',42),(43,'Floyd','fbarstock16@samsung.com','XPCk8FQZ',43),(44,'Beatrisa','bsoldan17@walmart.com','hurqLorfhni',44),(45,'Redford','rdurward18@weather.com','zpZdfDNV',45),(46,'Tiffani','tpetrillo19@homestead.com','HLKJb03vd',46),(47,'Nerissa','ncervantes1a@foxnews.com','W2WVhxQTQQI',47),(48,'Jonathan','jskilton1b@devhub.com','lGhzGgFyt7QE',48),(49,'Charlot','cmcdowell1c@ycombinator.com','AW07bia',49),(50,'Dane','dstrettle1d@yolasite.com','5lB4XhMt',50),(51,'Shina','sdubber1e@printfriendly.com','gzlQMi50dJQ',51),(52,'Far','fwoolvett1f@altervista.org','biRHJf2wiuW',52),(53,'Kylie','kjahnel1g@vistaprint.com','aJBrwy7O',53),(54,'Elsie','enerney1h@gov.uk','qD7Zlc7',54),(55,'Rosa','rlenihan1i@symantec.com','HC5iGuOzY9',55),(56,'Cletus','cgipp1j@oaic.gov.au','SJoKnKRWrQ',56),(57,'Roscoe','rover1k@earthlink.net','ngNz22iCTV',57),(58,'Zebedee','zpointing1l@wiley.com','gC7hobFUC',58),(59,'Laureen','llaise1m@usatoday.com','ZS3cls3m',59),(60,'Lucky','lbinton1n@whitehouse.gov','DK5cCrPvFYzo',60),(61,'Farley','fslatten1o@webmd.com','6bDxJAI',61),(62,'Rogers','rduhamel1p@myspace.com','0yYvpkZ0h',62),(63,'Shawnee','swhimper1q@hugedomains.com','FxqzNGP',63),(64,'Steffane','skenryd1r@yelp.com','dCdowO0',64),(65,'Mozes','mfraniak1s@goo.ne.jp','bnCTqEdYlX',65),(66,'Janie','jpablos1t@barnesandnoble.com','KhwgaY',66),(67,'Sheryl','skembrey1u@4shared.com','rmN0D7Gx8FWL',67),(68,'Allsun','ageck1v@privacy.gov.au','Yvn29PPR',68),(69,'Adolf','aelam1w@auda.org.au','f5UepW9',69),(70,'Siouxie','schamberlaine1x@flickr.com','BIDXIIv',70),(71,'Sunny','sknowles1y@noaa.gov','cdqCFHICY',71),(72,'Shanta','sfreckelton1z@wunderground.com','LAFD9FlM0Y',72),(73,'Eli','enozzolii20@harvard.edu','yE1L7aGbklOp',73),(74,'Yancey','ywhickman21@microsoft.com','Wk7cw03',74),(75,'Maddy','mtorre22@w3.org','JhD99Fuhh',75),(76,'Jehanna','jhallen23@telegraph.co.uk','GrQNI1m0qtd',76),(77,'Rouvin','rcroot24@sciencedaily.com','45bQ641kzVZ',77),(78,'Eben','espottiswood25@cbsnews.com','PLj86JTY8Jj',78),(79,'Bettye','bkendell26@slate.com','3eIddwAP',79),(80,'Felic','fdienes27@t-online.de','9Jt3njy6xY1r',80),(81,'Angus','avesco28@cbslocal.com','pC0161h',81),(82,'Jocelyn','jsolly29@github.io','ABhCU6lAasV',82),(83,'Viv','vgier2a@ox.ac.uk','mJIMqJOI',83),(84,'Carol','cfullbrook2b@sciencedaily.com','EaeWNK',84),(85,'Hector','hlongford2c@tumblr.com','tCKrKF',85),(86,'Teador','tlethby2d@virginia.edu','imL3eku8R',86),(87,'Mable','mbrotherheed2e@techcrunch.com','MXe390l',87),(88,'Sallie','sfairn2f@cloudflare.com','1BHzqpH',88),(89,'Ely','egerin2g@patch.com','PhNPVBt',89),(90,'Laurel','ldunderdale2h@mashable.com','ZG6UmmT',90),(91,'Nickolas','nconechie2i@ustream.tv','FKUDTVw',91),(92,'Aeriela','arochford2j@psu.edu','YXuslIJ',92),(93,'Smitty','sbowne2k@google.cn','oJjshHtU0f',93),(94,'Honoria','hworledge2l@baidu.com','W8Hn8Yg',94),(95,'Ilysa','ibudding2m@bloglines.com','muiLjwkbOOf',95),(96,'Sherline','ssloyan2n@yolasite.com','MiyzGhnL',96),(97,'Avie','ajado2o@pbs.org','NLFxRq7',97),(98,'Esta','ebrabender2p@dailymail.co.uk','ggERI5DAZFL0',98),(99,'Bobbie','bruseworth2q@jiathis.com','fQBRjNQ',99),(100,'Wallie','wcrighton2r@marketwatch.com','1zX6fJXDDM3P',100);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida`
--

DROP TABLE IF EXISTS `comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comida` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`restaurante_id`),
  KEY `fk_comida_restaurante1_idx` (`restaurante_id`),
  CONSTRAINT `fk_comida_restaurante1` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida`
--

LOCK TABLES `comida` WRITE;
/*!40000 ALTER TABLE `comida` DISABLE KEYS */;
INSERT INTO `comida` VALUES (1,'Latex Rubber Gloves Size 9','Allspice - Jamaican',1),(2,'Sobe - Green Tea','Bread - Flat Bread',2),(3,'Lamb - Shanks','Dikon',3),(4,'Towel Dispenser','Muffin - Banana Nut Individual',4),(5,'Puree - Kiwi','Cheese - Havarti, Roasted Garlic',5),(6,'Flour - Cake','Potatoes - Pei 10 Oz',6),(7,'Beans - Yellow','Tomato - Plum With Basil',7),(8,'Neckerchief Blck','Wine - Jackson Triggs Okonagan',8),(9,'Potatoes - Idaho 80 Count','Sugar - Individual Portions',9),(10,'Oil - Shortening - All - Purpose','Wine - Spumante Bambino White',10),(11,'Vinegar - Balsamic, White','Milk - 2%',11),(12,'Schnappes - Peach, Walkers','Trout Rainbow Whole',12),(13,'Cardamon Ground','Bagels Poppyseed',13),(14,'Extract - Raspberry','Wine - Peller Estates Late',14),(15,'Olives - Stuffed','Jameson Irish Whiskey',15),(16,'Pasta - Lasagna Noodle, Frozen','Breakfast Quesadillas',16),(17,'Scotch - Queen Anne','Cheese - Cheddar, Old White',17),(18,'Bread - Pumpernickel','Soup - Cream Of Broccoli',18),(19,'Garlic - Primerba, Paste','Pasta - Cannelloni, Sheets, Fresh',19),(20,'Juice - Mango','Chinese Foods - Chicken Wing',20),(21,'Buffalo - Short Rib Fresh','Sprouts - China Rose',21),(22,'Seaweed Green Sheets','Pheasants - Whole',22),(23,'Bread - Assorted Rolls','Mangostein',23),(24,'Ginger - Fresh','Fudge - Cream Fudge',24),(25,'Ginger - Ground','Turkey Tenderloin Frozen',25),(26,'Relish','Laundry - Bag Cloth',26),(27,'Chocolate - Pistoles, White','Spring Roll Wrappers',27),(28,'Foil - Round Foil','Truffle Cups - White Paper',28),(29,'Oil - Safflower','Wine - Cotes Du Rhone',29),(30,'Mushroom - Porcini Frozen','Muffin Orange Individual',30),(31,'Muffin Mix - Oatmeal','Yogurt - French Vanilla',31),(32,'Sauce - Demi Glace','Coffee - Beans, Whole',32),(33,'Wine - Red, Marechal Foch','Tomato - Plum With Basil',33),(34,'Pork - Back Ribs','Wine - Red Oakridge Merlot',34),(35,'Shiratamako - Rice Flour','Potatoes - Yukon Gold 5 Oz',35),(36,'Wine - Carmenere Casillero Del','Soup - Tomato Mush. Florentine',36),(37,'Coffee - Decafenated','Pasta - Canelloni',37),(38,'Myers Planters Punch','Dc - Sakura Fu',38),(39,'Mushroom - Morels, Dry','Sauce - Soy Low Sodium - 3.87l',39),(40,'Wine - White, Lindemans Bin 95','Onion - Dried',40),(41,'Oil - Margarine','Flounder - Fresh',41),(42,'Orange - Canned, Mandarin','Beef - Chuck, Boneless',42),(43,'Edible Flower - Mixed','Pasta - Penne, Lisce, Dry',43),(44,'Cactus Pads','Wine - Piper Heidsieck Brut',44),(45,'Beer - Guiness','Rice - Long Grain',45),(46,'Soup - Boston Clam Chowder','Garlic - Primerba, Paste',46),(47,'Truffle Cups - Red','Sauce - Demi Glace',47),(48,'Alize Red Passion','Langers - Cranberry Cocktail',48),(49,'Steampan Lid','Mousse - Mango',49),(50,'Sauce - Soya, Light','Broom - Push',50),(51,'Pepper - Green','Muffin - Banana Nut Individual',51),(52,'Wakami Seaweed','Tea - Herbal I Love Lemon',52),(53,'Boogies','Extract Vanilla Pure',53),(54,'Pork - Ham Hocks - Smoked','Tandoori Curry Paste',54),(55,'Dome Lid Clear P92008h','Wine - Chateau Timberlay',55),(56,'Curry Powder','Wine - Savigny - Les - Beaune',56),(57,'Beef Ground Medium','Soup - French Onion, Dry',57),(58,'Alize Red Passion','Avocado',58),(59,'Calypso - Black Cherry Lemonade','Beef Ground Medium',59),(60,'Soup - French Onion, Dry','Squid - U - 10 Thailand',60),(61,'Potatoes - Purple, Organic','Lemonade - Island Tea, 591 Ml',61),(62,'Broom And Brush Rack Black','Wine - Magnotta - Red, Baco',62),(63,'Rice - Brown','Beer - Sleemans Cream Ale',63),(64,'Sugar - Sweet N Low, Individual','Bread - Granary Small Pull',64),(65,'Gingerale - Schweppes, 355 Ml','Tahini Paste',65),(66,'Containter - 3oz Microwave Rect.','Wine - Red, Colio Cabernet',66),(67,'Lettuce - Romaine, Heart','Petite Baguette',67),(68,'Pastry - French Mini Assorted','Crush - Orange, 355ml',68),(69,'Oil - Safflower','Pork - Tenderloin, Frozen',69),(70,'Scrubbie - Scotchbrite Hand Pad','Pear - Prickly',70),(71,'Water - Tonic','Cumin - Whole',71),(72,'Capers - Pickled','Chocolate - White',72),(73,'Sugar - Monocystal / Rock','Juice - Apple, 341 Ml',73),(74,'Catfish - Fillets','Clams - Canned',74),(75,'Truffle Shells - White Chocolate','Muffin Hinge 117n',75),(76,'Brandy - Orange, Mc Guiness','Cocoa Feuilletine',76),(77,'Lettuce - Baby Salad Greens','Potatoes - Mini White 3 Oz',77),(78,'Wine - Magnotta - Cab Franc','Mayonnaise - Individual Pkg',78),(79,'Cookie Trail Mix','Wine - Zinfandel California 2002',79),(80,'Compound - Mocha','Tomatoes - Heirloom',80),(81,'Cup - 8oz Coffee Perforated','Langers - Ruby Red Grapfruit',81),(82,'Wine - Soave Folonari','Extract - Almond',82),(83,'Soup - Knorr, Veg / Beef','Pepper - Red Bell',83),(84,'Jam - Marmalade, Orange','Wine - Cotes Du Rhone',84),(85,'Everfresh Products','Arizona - Plum Green Tea',85),(86,'Wine - Merlot Vina Carmen','Oil - Sesame',86),(87,'Sauce - Fish 25 Ozf Bottle','Petit Baguette',87),(88,'Tray - 12in Rnd Blk','Soup Campbells - Italian Wedding',88),(89,'Ginger - Fresh','Cleaner - Comet',89),(90,'Wine - Chablis J Moreau Et Fils','Mushroom - Enoki, Fresh',90),(91,'Chickhen - Chicken Phyllo','Cinnamon - Ground',91),(92,'Lamb - Leg, Bone In','Pastry - Apple Large',92),(93,'Cheese - Feta','Sponge Cake Mix - Chocolate',93),(94,'Yogurt - Banana, 175 Gr','Savory',94),(95,'Pasta - Lasagna, Dry','Yukon Jack',95),(96,'Pasta - Penne, Lisce, Dry','Green Tea Refresher',96),(97,'Chicken - Diced, Cooked','Turkey - Breast, Smoked',97),(98,'Onions - Pearl','Yeast Dry - Fermipan',98),(99,'Kiwano','Apple - Northern Spy',99),(100,'Wine - Semi Dry Riesling Vineland','Salt - Sea',100);
/*!40000 ALTER TABLE `comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'Rocky','Tennessee','Chattanooga','Mayfield','Evergreen','010'),(2,'Nadean','Arizona','Scottsdale','Donald','Hintze','7902'),(3,'Chaddy','Idaho','Boise','Grim','Fieldstone','9606'),(4,'Gwendolyn','Florida','West Palm Beach','Kings','Montana','00314'),(5,'Dyanna','Virginia','Alexandria','Esch','Toban','60155'),(6,'Rosamund','Florida','Lake Worth','Prentice','Springs','9977'),(7,'Salmon','Mississippi','Hattiesburg','Southridge','Dapin','72'),(8,'Mildred','Idaho','Boise','Alpine','1st','6'),(9,'Matthias','Texas','Gatesville','Holmberg','Karstens','8508'),(10,'Anna','South Dakota','Sioux Falls','Elmside','Kinsman','60653'),(11,'Dare','Texas','Dallas','Merry','Mitchell','1'),(12,'Hyacinthia','Arizona','Tucson','Dorton','Mcbride','79567'),(13,'Barbaraanne','New York','Albany','Bunker Hill','Fuller','13'),(14,'Patsy','Florida','Lakeland','Summit','Hansons','8059'),(15,'Cheston','Florida','Boca Raton','Jay','Stuart','13'),(16,'Jenine','Indiana','Anderson','Tennessee','Cottonwood','1'),(17,'Keefe','Louisiana','New Orleans','Thackeray','North','3598'),(18,'Rolph','New York','Syracuse','Old Gate','Basil','8'),(19,'Irena','Florida','Seminole','Garrison','Weeping Birch','303'),(20,'Taddeusz','Alabama','Huntsville','Monterey','Schiller','527'),(21,'Blake','District of Columbia','Washington','Pine View','Cherokee','53731'),(22,'Ravid','Texas','Houston','Novick','Kingsford','0'),(23,'Goldina','Missouri','Springfield','Springview','Alpine','5822'),(24,'Christos','Alabama','Birmingham','Erie','Judy','169'),(25,'Ashla','Alabama','Montgomery','Garrison','Continental','9'),(26,'Debra','California','Stockton','Ruskin','Wayridge','135'),(27,'Benny','Texas','Amarillo','Hudson','Eagle Crest','3'),(28,'Iona','Georgia','Macon','Monument','Myrtle','5'),(29,'Dora','Texas','Waco','Northridge','Grasskamp','8'),(30,'Ravid','Virginia','Lynchburg','Hudson','Knutson','5'),(31,'Luelle','Ohio','Toledo','Dexter','Steensland','2'),(32,'Ruperto','North Carolina','Raleigh','Clyde Gallagher','Rowland','1'),(33,'Tobe','Florida','Orlando','Meadow Valley','Village','32971'),(34,'Catharine','Georgia','Macon','Huxley','Everett','83881'),(35,'Janenna','Georgia','Columbus','Warner','Katie','189'),(36,'Rosalinde','Virginia','Reston','Forest','Stoughton','3'),(37,'Hilton','Michigan','Detroit','Roth','Northland','0295'),(38,'Wallie','North Carolina','High Point','Duke','Hermina','5'),(39,'Zandra','Texas','Austin','Haas','Fieldstone','478'),(40,'Karen','Kansas','Topeka','Marcy','Havey','572'),(41,'Dix','Pennsylvania','Philadelphia','8th','Melrose','16'),(42,'Chantal','Colorado','Pueblo','Fairfield','Lillian','9309'),(43,'Kristoffer','California','Simi Valley','Commercial','Huxley','9672'),(44,'Ulrich','Colorado','Greeley','Eastwood','Meadow Valley','4896'),(45,'Pancho','North Carolina','Greensboro','Walton','Rutledge','2035'),(46,'Nicky','North Carolina','Wilmington','Rigney','Marcy','5'),(47,'Aurilia','New Jersey','Newark','Caliangt','Anzinger','979'),(48,'Darbie','Minnesota','Saint Paul','Nobel','Mendota','786'),(49,'Edgard','Nevada','Carson City','Fisk','Stang','83'),(50,'Florri','Tennessee','Memphis','Rutledge','Carey','1845'),(51,'Eda','Ohio','Dayton','Lighthouse Bay','Orin','83'),(52,'Wallache','New Jersey','Newark','Dixon','Brentwood','7'),(53,'Godwin','District of Columbia','Washington','Washington','Stang','61'),(54,'Jacquenetta','California','Fresno','Coolidge','4th','5874'),(55,'Carma','Texas','Houston','Birchwood','Bellgrove','95'),(56,'Rafaelita','Oregon','Portland','Birchwood','Barby','0774'),(57,'Daniela','New York','Staten Island','Schmedeman','Northwestern','3'),(58,'Virgina','Texas','Houston','Union','Marquette','26'),(59,'Olga','California','South Lake Tahoe','Valley Edge','Northview','37'),(60,'Harlen','Missouri','Saint Louis','Corry','Havey','10'),(61,'Katrinka','Mississippi','Biloxi','Sugar','Shasta','3189'),(62,'Jaymee','Florida','Saint Petersburg','Gateway','Veith','6268'),(63,'Reese','District of Columbia','Washington','American Ash','Thackeray','9781'),(64,'Francesco','Tennessee','Chattanooga','Merchant','Aberg','99'),(65,'Dex','Iowa','Des Moines','Meadow Ridge','Artisan','953'),(66,'Amargo','Texas','Houston','Schurz','Arrowood','8'),(67,'Juliana','Missouri','Saint Louis','Independence','Eliot','7'),(68,'Wendel','Oklahoma','Oklahoma City','Packers','Oakridge','958'),(69,'Tremayne','Alabama','Mobile','Prairie Rose','Merchant','7144'),(70,'Billy','Florida','Tampa','East','Iowa','5949'),(71,'Bonni','Idaho','Boise','Tennyson','Sunfield','00059'),(72,'Dina','Texas','Dallas','Crest Line','Killdeer','02'),(73,'Jdavie','Texas','Houston','Saint Paul','Del Sol','99'),(74,'Freeman','Oklahoma','Tulsa','Dakota','Summit','979'),(75,'Kelwin','Oklahoma','Oklahoma City','Sherman','Thompson','5'),(76,'Pris','South Carolina','Charleston','Hagan','Monterey','43'),(77,'Coraline','Minnesota','Maple Plain','Northview','Elgar','72'),(78,'Ettore','Florida','Vero Beach','Dahle','Hanson','875'),(79,'Cleve','California','Stockton','Novick','Cascade','55'),(80,'Pippy','North Carolina','Asheville','Russell','Marcy','34'),(81,'Ralph','Kentucky','Louisville','Knutson','Gerald','79'),(82,'Joelie','Massachusetts','Worcester','Roth','Maywood','62'),(83,'Alfy','Texas','Dallas','School','Badeau','88507'),(84,'Guillemette','Georgia','Atlanta','Dovetail','Lerdahl','2373'),(85,'Bearnard','Minnesota','Maple Plain','Bowman','Redwing','60'),(86,'Marley','Pennsylvania','Philadelphia','Kropf','Rutledge','8541'),(87,'Christie','Virginia','Charlottesville','Anderson','Green','87099'),(88,'Leilah','Oklahoma','Tulsa','Hintze','Oakridge','156'),(89,'Brynn','Maryland','Hyattsville','Victoria','Clyde Gallagher','85595'),(90,'Errol','Virginia','Newport News','Harper','Texas','67'),(91,'Cleve','New York','New York City','Forster','Little Fleur','069'),(92,'Pansy','Georgia','Atlanta','Shopko','Warbler','50'),(93,'Joela','Florida','Tampa','Lukken','Iowa','76183'),(94,'Mirabella','Florida','West Palm Beach','Chinook','Marcy','3341'),(95,'Hamid','Illinois','Peoria','Cody','Annamark','89162'),(96,'Caresa','California','Escondido','Lake View','Sunfield','95355'),(97,'Clemence','Connecticut','Waterbury','Redwing','Duke','40948'),(98,'Jessi','New Hampshire','Portsmouth','Melrose','Dovetail','7'),(99,'Cheslie','District of Columbia','Washington','Coleman','Linden','3923'),(100,'Cornie','California','Fresno','Schmedeman','Novick','08823'),(101,'Denesik-Ryan','Nebraska','Omaha','Mallard','Springview','2804'),(102,'Goodwin Group','Michigan','Detroit','Oxford','Kropf','49'),(103,'Wyman, Dietrich and Reichel','Nevada','North Las Vegas','Buell','Corry','71'),(104,'Halvorson, Blick and Carroll','Texas','Arlington','Sunnyside','Lakeland','75'),(105,'Bernhard Group','California','San Diego','Tennyson','Dunning','461'),(106,'Zemlak, Kessler and Labadie','Pennsylvania','Erie','Northport','Holy Cross','1'),(107,'Becker and Sons','California','Irvine','Clove','Fremont','537'),(108,'Pacocha, Steuber and Goyette','Ohio','Cleveland','Meadow Ridge','Packers','9430'),(109,'Schuppe-Doyle','Arkansas','Hot Springs National Park','Fisk','Vera','01'),(110,'Pfeffer, Mann and Sawayn','Florida','Saint Petersburg','Katie','Brown','33298'),(111,'Goodwin-Dickinson','Washington','Yakima','Marcy','Hauk','36801'),(112,'Green Group','Kentucky','Louisville','South','Fuller','9'),(113,'Ledner LLC','Michigan','Saginaw','Hanover','Pearson','36'),(114,'Bechtelar Inc','Ohio','Cincinnati','Trailsway','Nelson','6389'),(115,'Carter-Lemke','Texas','Dallas','Coolidge','Kings','9'),(116,'Durgan and Sons','California','San Jose','Ryan','Colorado','21841'),(117,'Baumbach-Russel','Connecticut','Danbury','Sunbrook','Jana','56'),(118,'Mraz-Beahan','Virginia','Dulles','Almo','Nelson','600'),(119,'Becker-Murray','Kansas','Shawnee Mission','Schmedeman','Monument','05'),(120,'King Group','Pennsylvania','Wilkes Barre','International','Drewry','2'),(121,'Boyle, Daugherty and Wisozk','South Carolina','Columbia','Melvin','Goodland','041'),(122,'Legros, Feeney and Hermann','Louisiana','New Orleans','Susan','Clemons','8'),(123,'Bogisich Inc','Florida','Miami','Mallory','Esker','565'),(124,'Conroy Group','Nebraska','Omaha','Mendota','Warbler','11'),(125,'Pagac, Weimann and Lindgren','Nevada','Las Vegas','Corry','Doe Crossing','555'),(126,'Reichel Group','Illinois','Evanston','Linden','Carberry','68'),(127,'Hane, Dickinson and Moen','New York','New York City','Cottonwood','Monument','288'),(128,'Kling-Thiel','Texas','Houston','Reinke','Heffernan','5894'),(129,'Hane Group','Virginia','Hampton','Maywood','Independence','5534'),(130,'Gottlieb-Doyle','South Carolina','Anderson','Warrior','Westridge','813'),(131,'Crona Group','Oregon','Portland','Cody','Ridgeway','6736'),(132,'Schumm-Shields','Washington','Spokane','Hagan','Vermont','3990'),(133,'Nitzsche-Purdy','District of Columbia','Washington','Drewry','Mesta','85620'),(134,'Heidenreich-Grant','Pennsylvania','Pittsburgh','8th','Haas','1067'),(135,'Frami, Davis and O\'Kon','Florida','Orlando','Towne','Alpine','74250'),(136,'O\'Hara Group','Virginia','Richmond','Oak Valley','Lakeland','0986'),(137,'Casper Inc','California','Moreno Valley','Village Green','Ilene','3'),(138,'Marvin-Kuhlman','Maryland','Baltimore','Pearson','Pankratz','52'),(139,'Feil-Grimes','Idaho','Boise','North','Vahlen','663'),(140,'Considine, Hammes and Tremblay','Illinois','Chicago','Clemons','Dennis','363'),(141,'Flatley-Wiza','West Virginia','Charleston','Fieldstone','Bellgrove','39197'),(142,'Goyette-Willms','California','Anaheim','Spaight','Pawling','38'),(143,'Dibbert Inc','Florida','North Port','Tomscot','Hovde','54992'),(144,'Jenkins, Nitzsche and Zulauf','Pennsylvania','Pittsburgh','Artisan','Corry','9'),(145,'Bernhard-Gleichner','Texas','Corpus Christi','Boyd','Oxford','318'),(146,'Cormier LLC','Michigan','Detroit','Fulton','Victoria','1'),(147,'Shields-Block','California','San Francisco','Dakota','Clarendon','9'),(148,'Goodwin-Kulas','District of Columbia','Washington','Barnett','Marcy','8672'),(149,'Bayer, Zemlak and Schneider','Virginia','Vienna','Chive','Esker','30657'),(150,'Purdy and Sons','Kansas','Kansas City','Sauthoff','Melody','0'),(151,'McDermott, Corkery and Weber','Texas','Austin','Mayer','Hollow Ridge','88046'),(152,'Hand LLC','Minnesota','Minneapolis','Fallview','Green Ridge','9941'),(153,'DuBuque, Nicolas and West','Georgia','Atlanta','Melby','Bellgrove','0'),(154,'Lueilwitz, Becker and Gislason','Texas','Fort Worth','Mendota','Sutherland','3'),(155,'Schoen-Gutmann','North Carolina','Durham','Mockingbird','Bay','7671'),(156,'Koss and Sons','Nevada','Carson City','Valley Edge','Jenna','5793'),(157,'McClure-Kihn','California','Sacramento','Transport','Prentice','06'),(158,'Gibson and Sons','North Carolina','Wilmington','Esch','Arrowood','9399'),(159,'Oberbrunner and Sons','Ohio','Cleveland','Monica','Tennyson','37611'),(160,'Miller Group','Texas','Wichita Falls','Anniversary','Stephen','697'),(161,'Champlin-Terry','Texas','Lubbock','Graceland','Pierstorff','1086'),(162,'Kuhlman, Marquardt and Bergnaum','California','San Jose','Warrior','Laurel','2'),(163,'Haag-Runolfsson','Massachusetts','Boston','Algoma','Kim','03019'),(164,'Russel LLC','Michigan','Grand Rapids','Haas','Vermont','78793'),(165,'Sipes Inc','Kentucky','Frankfort','Farwell','Vernon','6644'),(166,'Simonis, Bogisich and Morissette','California','Corona','Prairie Rose','Division','264'),(167,'Terry Group','California','Riverside','Lighthouse Bay','Sycamore','9434'),(168,'Smith, Medhurst and O\'Conner','Ohio','Cleveland','Calypso','Michigan','4'),(169,'Anderson, Ankunding and Johns','Louisiana','Monroe','Charing Cross','Glacier Hill','99086'),(170,'Turcotte and Sons','Minnesota','Rochester','Mariners Cove','Northfield','264'),(171,'Wuckert-Wilderman','Texas','Midland','Carpenter','Di Loreto','239'),(172,'Wehner, Collins and Tremblay','California','Inglewood','7th','Marcy','511'),(173,'Haley, Bogisich and Bayer','Kentucky','Lexington','Crowley','Arizona','40069'),(174,'D\'Amore, Schamberger and Schultz','Florida','Fort Lauderdale','Victoria','Bunting','53963'),(175,'Monahan-Weissnat','California','Pasadena','Coleman','Service','37296'),(176,'Fadel and Sons','Kansas','Shawnee Mission','Hazelcrest','Continental','0555'),(177,'Crooks, Fay and McDermott','Michigan','Battle Creek','Claremont','Columbus','4'),(178,'Goldner Inc','Texas','El Paso','Hudson','Del Mar','833'),(179,'Greenholt, Pollich and Herzog','New York','Great Neck','Mosinee','Paget','963'),(180,'Kirlin, Heaney and Harris','Texas','Houston','Bay','Blaine','4773'),(181,'Swift and Sons','New Hampshire','Portsmouth','Amoth','Monterey','50'),(182,'Casper, Johnston and Steuber','California','Long Beach','Weeping Birch','Brickson Park','1574'),(183,'Kris, Kub and Kunze','Missouri','Kansas City','Kingsford','Fair Oaks','9'),(184,'Bashirian, Swaniawski and Champlin','Connecticut','New Haven','Shoshone','Pawling','80'),(185,'DuBuque-Hills','California','Palo Alto','Darwin','Reinke','7924'),(186,'Dickens, Thompson and Macejkovic','Kansas','Topeka','Shelley','Ludington','94'),(187,'Von, Hudson and Considine','Connecticut','New Haven','Arrowood','Merry','8'),(188,'Tremblay-O\'Reilly','Tennessee','Knoxville','Golden Leaf','Steensland','1653'),(189,'Dickens, Lemke and Hammes','New York','Albany','Dapin','American Ash','0'),(190,'Braun, Auer and Nikolaus','Minnesota','Minneapolis','Browning','Ryan','0007'),(191,'Stiedemann, Bernier and Kris','Florida','Saint Petersburg','Forster','Westport','84'),(192,'Crist Inc','Indiana','Indianapolis','Sutherland','Vera','8558'),(193,'Weimann Group','Iowa','Des Moines','Graceland','Comanche','789'),(194,'Hahn-Mayer','Indiana','South Bend','Waubesa','Dixon','463'),(195,'Carroll LLC','Missouri','Saint Louis','Corry','Londonderry','2957'),(196,'Kohler, Gusikowski and Miller','Georgia','Atlanta','Merrick','Hayes','64'),(197,'Jaskolski-Gaylord','Tennessee','Memphis','Grover','5th','1'),(198,'Cremin, Langosh and Terry','Washington','Kent','Northview','Surrey','4330'),(199,'Prosacco, Feil and Effertz','California','Santa Ana','Oriole','Buhler','7'),(200,'Maggio Inc','Florida','Palm Bay','Northfield','Donald','6632');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'Blick-Kris'),(2,'Tremblay-Will'),(3,'Kulas Inc'),(4,'O\'Connell Group'),(5,'Blanda-Ryan');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` double NOT NULL,
  `forma_pago_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `repartidor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`forma_pago_id`,`cliente_id`,`repartidor_id`),
  KEY `fk_pedido_forma_pago1_idx` (`forma_pago_id`),
  KEY `fk_pedido_cliente1_idx` (`cliente_id`),
  KEY `fk_pedido_repartidor1_idx` (`repartidor_id`),
  CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_forma_pago1` FOREIGN KEY (`forma_pago_id`) REFERENCES `forma_pago` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_repartidor1` FOREIGN KEY (`repartidor_id`) REFERENCES `repartidor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2020-08-19',70.83,2,1,1),(2,'2020-09-07',1414.68,2,2,2),(3,'2020-07-17',1826.9,3,3,3),(4,'2021-05-15',1977.56,3,4,4),(5,'2020-09-09',1327.14,4,5,5),(6,'2020-10-25',1035.13,4,6,6),(7,'2020-10-03',1062.19,4,7,7),(8,'2020-12-24',333.38,2,8,8),(9,'2020-12-02',1738.57,2,9,9),(10,'2021-04-23',998.71,3,10,10),(11,'2021-01-15',374.16,4,11,11),(12,'2020-08-22',1196.84,3,12,12),(13,'2021-03-31',673.25,5,13,13),(14,'2020-07-26',1344.41,2,14,14),(15,'2021-04-11',1134.01,2,15,15),(16,'2020-09-30',1851.72,4,16,16),(17,'2020-12-22',717.49,3,17,17),(18,'2020-09-28',1608.53,1,18,18),(19,'2020-07-22',700.25,4,19,19),(20,'2021-06-22',876.95,4,20,20),(21,'2020-08-09',1765.75,5,21,21),(22,'2020-12-25',262.76,5,22,22),(23,'2020-10-08',211.75,3,23,23),(24,'2021-06-09',752.69,2,24,24),(25,'2021-05-23',909.39,5,25,25),(26,'2021-01-08',1634.12,5,26,26),(27,'2020-12-24',1837.79,5,27,27),(28,'2021-05-14',1689.84,2,28,28),(29,'2021-03-20',1658.89,1,29,29),(30,'2021-03-31',1061.87,3,30,30),(31,'2021-02-09',147.66,1,31,31),(32,'2020-10-03',510.84,4,32,32),(33,'2020-10-30',1125.73,3,33,33),(34,'2020-08-16',315.92,5,34,34),(35,'2020-10-11',967.78,4,35,35),(36,'2020-07-19',1105.11,3,36,36),(37,'2021-03-23',1541.82,4,37,37),(38,'2021-06-03',739.09,2,38,38),(39,'2020-07-19',639.55,2,39,39),(40,'2020-08-23',1056.48,1,40,40),(41,'2020-12-05',1802.74,2,41,41),(42,'2021-05-06',990.65,1,42,42),(43,'2021-02-10',1747.63,3,43,43),(44,'2021-03-30',1276.72,4,44,44),(45,'2021-06-11',877.43,1,45,45),(46,'2020-10-07',1090.52,4,46,46),(47,'2020-11-03',1247.65,4,47,47),(48,'2020-09-17',1542.07,5,48,48),(49,'2021-02-21',952.86,3,49,49),(50,'2020-12-04',1472.96,5,50,50),(51,'2021-03-28',1527.76,1,51,51),(52,'2021-06-09',838.08,3,52,52),(53,'2020-10-25',1566.33,4,53,53),(54,'2020-09-11',711.1,3,54,54),(55,'2021-01-08',63.38,1,55,55),(56,'2021-05-05',1643.87,5,56,56),(57,'2020-10-10',711.52,2,57,57),(58,'2020-10-04',998.74,3,58,58),(59,'2020-12-06',645.5,1,59,59),(60,'2020-10-29',928.71,4,60,60),(61,'2020-10-30',912.41,1,61,61),(62,'2021-04-11',1594.27,2,62,62),(63,'2021-03-11',656.86,5,63,63),(64,'2020-09-30',90.4,4,64,64),(65,'2021-03-14',1311.24,1,65,65),(66,'2021-02-22',698.02,5,66,66),(67,'2021-05-23',1123.32,3,67,67),(68,'2021-03-16',341.65,4,68,68),(69,'2020-08-27',1438.95,1,69,69),(70,'2021-03-24',1977.84,5,70,70),(71,'2021-04-03',1543.57,4,71,71),(72,'2021-07-12',217.21,5,72,72),(73,'2021-04-23',1910.32,3,73,73),(74,'2021-02-23',971.41,4,74,74),(75,'2021-02-14',1830.92,4,75,75),(76,'2021-06-02',353.09,5,76,76),(77,'2020-07-23',1270.49,1,77,77),(78,'2021-03-05',1052.11,2,78,78),(79,'2021-06-10',1403.86,3,79,79),(80,'2020-10-14',1841.2,5,80,80),(81,'2021-07-07',775.54,3,81,81),(82,'2020-12-08',278,5,82,82),(83,'2021-04-27',275.62,1,83,83),(84,'2021-02-16',1206.16,2,84,84),(85,'2021-06-28',912.73,3,85,85),(86,'2021-04-14',1395.52,1,86,86),(87,'2021-04-12',487.18,1,87,87),(88,'2020-08-05',1347.71,5,88,88),(89,'2021-04-26',453.98,1,89,89),(90,'2020-08-06',1516.6,3,90,90),(91,'2021-01-19',1391.89,2,91,91),(92,'2020-07-30',482.71,1,92,92),(93,'2021-03-07',1430.52,2,93,93),(94,'2021-04-29',936.78,2,94,94),(95,'2021-02-20',106.56,1,95,95),(96,'2020-09-04',1428.93,1,96,96),(97,'2021-05-23',373.23,5,97,97),(98,'2020-12-10',1392.94,4,98,98),(99,'2021-03-01',1283,4,99,99),(100,'2020-11-09',555.27,5,100,100);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_has_comida`
--

DROP TABLE IF EXISTS `pedido_has_comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_has_comida` (
  `id` varchar(45) NOT NULL,
  `comida_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY (`id`,`comida_id`,`pedido_id`),
  KEY `fk_comida_has_pedido_pedido1_idx` (`pedido_id`),
  KEY `fk_comida_has_pedido_comida1_idx` (`comida_id`),
  CONSTRAINT `fk_comida_has_pedido_comida1` FOREIGN KEY (`comida_id`) REFERENCES `comida` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comida_has_pedido_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_has_comida`
--

LOCK TABLES `pedido_has_comida` WRITE;
/*!40000 ALTER TABLE `pedido_has_comida` DISABLE KEYS */;
INSERT INTO `pedido_has_comida` VALUES ('1',1,1,4,225.58),('10',10,10,4,89.02),('100',100,100,4,252.02),('11',11,11,3,272.3),('12',12,12,3,397.58),('13',13,13,3,376.55),('14',14,14,4,188.78),('15',15,15,5,338.8),('16',16,16,1,98.82),('17',17,17,2,274.41),('18',18,18,4,340.5),('19',19,19,2,195.99),('2',2,2,2,89.36),('20',20,20,4,163.17),('21',21,21,5,379.94),('22',22,22,3,168.05),('23',23,23,1,237.97),('24',24,24,5,257.11),('25',25,25,5,344.98),('26',26,26,3,281.82),('27',27,27,5,86.57),('28',28,28,2,265.84),('29',29,29,3,158.45),('3',3,3,5,71.33),('30',30,30,2,95.67),('31',31,31,2,361.45),('32',32,32,4,388.1),('33',33,33,1,72.79),('34',34,34,4,284.92),('35',35,35,4,61.9),('36',36,36,5,390.69),('37',37,37,1,283.59),('38',38,38,5,323.94),('39',39,39,2,111.36),('4',4,4,1,107.74),('40',40,40,2,195.44),('41',41,41,4,351.21),('42',42,42,2,183.71),('43',43,43,3,77.82),('44',44,44,4,193.06),('45',45,45,5,210.21),('46',46,46,3,158.06),('47',47,47,4,274.14),('48',48,48,4,106.13),('49',49,49,5,225.2),('5',5,5,3,269.24),('50',50,50,1,166.86),('51',51,51,3,335.98),('52',52,52,1,334.42),('53',53,53,2,144.11),('54',54,54,3,100.14),('55',55,55,5,311.31),('56',56,56,4,132.9),('57',57,57,5,359.76),('58',58,58,1,326.9),('59',59,59,3,345.31),('6',6,6,4,289.65),('60',60,60,2,145.33),('61',61,61,2,349.04),('62',62,62,1,123),('63',63,63,2,259.46),('64',64,64,5,88.12),('65',65,65,1,207.04),('66',66,66,4,253.51),('67',67,67,4,125.25),('68',68,68,4,343.44),('69',69,69,3,349.53),('7',7,7,1,199.61),('70',70,70,4,282.55),('71',71,71,4,317.35),('72',72,72,1,188.76),('73',73,73,5,249.25),('74',74,74,3,142.75),('75',75,75,4,244.89),('76',76,76,2,138.48),('77',77,77,2,161.32),('78',78,78,3,247.67),('79',79,79,4,291.34),('8',8,8,4,380.57),('80',80,80,5,80),('81',81,81,5,183.31),('82',82,82,2,180.34),('83',83,83,1,61.92),('84',84,84,5,347),('85',85,85,2,191.83),('86',86,86,3,249.82),('87',87,87,2,55.69),('88',88,88,3,336.74),('89',89,89,3,381.73),('9',9,9,3,167.49),('90',90,90,5,344.14),('91',91,91,3,307.9),('92',92,92,3,247.26),('93',93,93,3,373.78),('94',94,94,5,310.2),('95',95,95,5,140.04),('96',96,96,5,255.39),('97',97,97,5,290.71),('98',98,98,3,390.4),('99',99,99,5,361.74);
/*!40000 ALTER TABLE `pedido_has_comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repartidor`
--

DROP TABLE IF EXISTS `repartidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartidor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `cartera` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repartidor`
--

LOCK TABLES `repartidor` WRITE;
/*!40000 ALTER TABLE `repartidor` DISABLE KEYS */;
INSERT INTO `repartidor` VALUES (1,'Brewer','bsandal0@usatoday.com','OdChnsJcPrhR','$2497.98'),(2,'Vanny','vhelks1@topsy.com','04VdHC','$4168.50'),(3,'Duncan','drickertsen2@example.com','yqT0SF4x','$7255.87'),(4,'Liliane','lfarman3@accuweather.com','YZ0bEAmVp6e','$690.08'),(5,'Patrica','praycroft4@unblog.fr','AyPZP6XbzKl','$2204.18'),(6,'Kippar','kquainton5@imdb.com','msERCOD2E','$5016.77'),(7,'Sheelah','sayerst6@craigslist.org','uj87uA1jt1oY','$4294.89'),(8,'Alastair','agoolding7@boston.com','cKSLiI','$1775.85'),(9,'Kathe','kdelacey8@cpanel.net','MVWCzuh','$4304.04'),(10,'Sam','sarends9@usda.gov','4phjFd9l5','$3283.26'),(11,'Andy','afishleya@china.com.cn','XlNypkc1w','$4088.48'),(12,'Milena','mharronb@omniture.com','X8hrXDMp','$3388.76'),(13,'Jerry','jmagrannellc@printfriendly.com','2QB598Z57Lz','$9478.50'),(14,'Genia','gnoyced@ucsd.edu','fdagrNmcQ','$7028.67'),(15,'Xaviera','xzuanne@si.edu','V8TLIu','$4690.56'),(16,'Hazlett','hfiennesf@myspace.com','QcpG0JeA','$7714.40'),(17,'Sheena','sapedaileg@macromedia.com','mYXiWA','$7967.35'),(18,'Lev','lhenlonh@bizjournals.com','nlTcrXg3','$2872.03'),(19,'Brodie','bhimsworthi@google.co.jp','BNr7QpXV','$6746.98'),(20,'Julian','jthomkej@people.com.cn','ce5cXKB','$8269.35'),(21,'Nathalie','npickworthk@dell.com','cHEICf6bK','$7460.14'),(22,'Gabriello','glattkal@fastcompany.com','9nlYsy','$6830.06'),(23,'Larry','ljarnellm@storify.com','eomFny4P6H','$2628.84'),(24,'Ethelbert','ehalfheadn@fc2.com','atG6EPic','$3254.55'),(25,'Trefor','treglero@webnode.com','jwRJssY8','$3867.57'),(26,'Britt','bpharop@usatoday.com','15viW0Q','$881.90'),(27,'Neddy','nwavellq@columbia.edu','fQJlLm4uGMee','$5514.25'),(28,'Kellby','ktuttiettr@shinystat.com','baFJHvn','$6447.73'),(29,'Alonso','agabriels@wikipedia.org','Oet46tS1n','$1749.42'),(30,'Morganne','mmaccaugheyt@apache.org','9AsNEMdSK2','$5013.82'),(31,'Clyde','cpammentu@miibeian.gov.cn','Jo31X5','$6042.40'),(32,'Arnold','abeaufoyv@europa.eu','Kgy6jjMMUo','$2990.71'),(33,'Ramsay','rcristofarow@yellowpages.com','9PIQ10SaBC','$9469.14'),(34,'Riane','rsalvinx@hostgator.com','xG0fBsGN0mT','$3785.81'),(35,'Mark','mnaismithy@nps.gov','reoQYHdOmZkL','$7532.48'),(36,'Petronille','phundallz@ow.ly','dCFhwPvTilJu','$9545.88'),(37,'Roz','rloffhead10@w3.org','dmEEFHkAmmwo','$8979.45'),(38,'Etta','emein11@phpbb.com','nvtJSWujOF','$3695.02'),(39,'Daphna','dsmallbone12@latimes.com','gYp4NYRLT','$5597.46'),(40,'Quill','qpakeman13@abc.net.au','vdk8Mw7u','$3677.56'),(41,'Arie','averbruggen14@altervista.org','Dzrs8L','$4022.89'),(42,'Rab','rstibbs15@lulu.com','m0lgFj','$7918.99'),(43,'Barr','bmays16@yale.edu','YpUbmi','$5628.15'),(44,'Lita','lpaylor17@joomla.org','5rQDcgqZbAs','$6730.47'),(45,'Leandra','lhegerty18@newsvine.com','eedTif5g','$8239.26'),(46,'Esmeralda','ecolvin19@tuttocitta.it','MUvUVVf','$2703.98'),(47,'Beilul','baberdeen1a@usatoday.com','XlcPAsbIfQfS','$9774.36'),(48,'Freeman','fhagard1b@paginegialle.it','UkmPPEUJE','$5773.66'),(49,'Edythe','emeek1c@unblog.fr','AAXxr8h3y','$9958.48'),(50,'Chane','cbeach1d@sakura.ne.jp','81LmBY','$5346.56'),(51,'Quincy','qstadden1e@oakley.com','ma1OImrTJ','$5274.75'),(52,'Hubie','hshanks1f@usnews.com','9o6TnuP2kRZ','$6063.36'),(53,'Thayne','tgaymar1g@pinterest.com','Op9K30','$2680.64'),(54,'Eulalie','eguard1h@slashdot.org','LmI2hCuF4dL','$8329.41'),(55,'Caleb','cbowerbank1i@europa.eu','qSnf2aM0P','$8398.93'),(56,'Bail','bsynnot1j@typepad.com','uxBFFk','$9903.44'),(57,'Zeb','zjaneczek1k@mashable.com','0FNzdgJd','$208.30'),(58,'Ofella','ohuckstepp1l@sciencedaily.com','f0z8Z2tnqf','$3090.29'),(59,'Robena','rgodbehere1m@marriott.com','dzBzi4CEIgOQ','$4566.02'),(60,'Donaugh','dsilly1n@wiley.com','lIFFM1nhdu','$6961.10'),(61,'Freeland','fdurdle1o@npr.org','UKoCT3PvX','$8425.93'),(62,'Tedie','tmchaffy1p@un.org','915xB1Medqq','$8061.42'),(63,'Jolee','jwoolway1q@example.com','u183yuG3','$9962.36'),(64,'Helene','habreheart1r@scientificamerican.com','DcypE0aEmC','$5591.51'),(65,'Linus','ladnam1s@histats.com','IGKqy1K2H','$3273.42'),(66,'Raphael','rchandler1t@t-online.de','GWZcT8OIX1','$1760.92'),(67,'Maddie','mgrisbrook1u@goodreads.com','v5uznZDn','$1825.31'),(68,'Rik','rpinch1v@flavors.me','U1HiN5AI1jt','$3465.17'),(69,'Marlon','mguiet1w@i2i.jp','HFbmsLtml','$1252.16'),(70,'Arri','astickells1x@cnet.com','icKDYXa6','$7984.87'),(71,'Dana','drumens1y@typepad.com','TUM3wUdh','$3268.29'),(72,'Edmund','egeraldini1z@msn.com','aIYBpY','$4771.55'),(73,'Giff','glies20@mysql.com','GiO8SoZml','$6755.82'),(74,'Zerk','zrandle21@liveinternet.ru','IaWkaSPDZ','$8436.03'),(75,'Pearl','pblackaby22@fastcompany.com','Ns0hjQ','$1529.51'),(76,'Natalie','nboig23@networkadvertising.org','0JUQgkEu','$7573.33'),(77,'Kevina','kmacguiness24@irs.gov','CssJ91V','$5147.13'),(78,'Gunther','ghasker25@google.it','7E2tGr8Y07yt','$3111.63'),(79,'Whitman','wfergusson26@newyorker.com','RYGxT6KLy9V','$8760.28'),(80,'Hewie','hwarboy27@technorati.com','nbKZrhRXO','$7466.08'),(81,'Killian','kflintoft28@weibo.com','mII6UlwJnfR','$2478.62'),(82,'Zebulon','zgodbehere29@mozilla.com','KYLeHqMof3','$7903.47'),(83,'Courtney','chruska2a@statcounter.com','zdPMuANxu','$8870.48'),(84,'Wendie','wpalethorpe2b@wunderground.com','CqeBYPD','$8336.13'),(85,'May','mthick2c@wisc.edu','0WbBxImy','$5086.50'),(86,'Christean','ccornelleau2d@prlog.org','kj7mTCS4','$8612.55'),(87,'Xavier','xpetricek2e@microsoft.com','22X6wh0','$1508.00'),(88,'Constantina','ctruss2f@naver.com','fPmfD3O','$3047.56'),(89,'Sadella','ssooper2g@scribd.com','TsitRUPOu','$8965.09'),(90,'Royal','rlanchberry2h@stanford.edu','HiTRsTpcCpb','$4342.81'),(91,'Morly','mdudbridge2i@boston.com','nyuIaDADhKH','$5662.32'),(92,'Manon','mtheodore2j@typepad.com','ILWBQUglt','$5835.98'),(93,'Olympe','oguyot2k@ucsd.edu','gDmhyHk1t','$5030.21'),(94,'Broddy','bmoffatt2l@youku.com','pLHyGT','$3984.54'),(95,'Dawna','dnorree2m@multiply.com','MwVKHCcwB','$3640.89'),(96,'Aili','ayurchishin2n@slideshare.net','P1qd2qWUw5','$1159.83'),(97,'Kay','kdreger2o@squidoo.com','Dgo5tolQ','$5356.82'),(98,'Thedrick','tnoar2p@virginia.edu','uatAQB','$794.28'),(99,'Cory','csitwell2q@ucoz.ru','rcMak4Eqq','$179.73'),(100,'Winfield','wfeenan2r@google.fr','V1Gw4As3B','$6230.56');
/*!40000 ALTER TABLE `repartidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`direccion_id`),
  KEY `fk_restaurante_direccion1_idx` (`direccion_id`),
  CONSTRAINT `fk_restaurante_direccion1` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'Schumm-Schneider',101),(2,'Walter LLC',102),(3,'Watsica and Sons',103),(4,'Gutkowski, Dicki and Bergnaum',104),(5,'Mosciski Inc',105),(6,'Heidenreich Inc',106),(7,'Rowe, West and Howell',107),(8,'Conn-Quigley',108),(9,'Kirlin-McClure',109),(10,'Schroeder-Flatley',110),(11,'Tremblay Group',111),(12,'Lebsack, Gerlach and Parisian',112),(13,'Pollich Inc',113),(14,'Graham-Macejkovic',114),(15,'Stracke and Sons',115),(16,'Parisian Group',116),(17,'Koepp-Reynolds',117),(18,'Bradtke-Mann',118),(19,'Konopelski Inc',119),(20,'Denesik Group',120),(21,'McCullough, Zieme and Bednar',121),(22,'Haag, Keeling and Wolf',122),(23,'Huel Inc',123),(24,'Emmerich LLC',124),(25,'Ankunding, Blanda and Haley',125),(26,'Paucek LLC',126),(27,'Kirlin-Rosenbaum',127),(28,'Greenholt-Nolan',128),(29,'Murphy and Sons',129),(30,'Ward-Cronin',130),(31,'Russel and Sons',131),(32,'Schuster-Homenick',132),(33,'Stokes, Bins and Jones',133),(34,'Jaskolski-Wilderman',134),(35,'Wyman and Sons',135),(36,'Langworth, Walker and Deckow',136),(37,'D\'Amore-Hudson',137),(38,'Erdman-Nolan',138),(39,'Kozey, Collier and Swaniawski',139),(40,'Wilderman-Hoppe',140),(41,'Hahn, Brekke and Kiehn',141),(42,'Quigley, Gaylord and Fay',142),(43,'Rohan-Howe',143),(44,'Schimmel and Sons',144),(45,'Harris Inc',145),(46,'Williamson-Greenfelder',146),(47,'West and Sons',147),(48,'Brekke LLC',148),(49,'Mertz Inc',149),(50,'Harris-Glover',150),(51,'Williamson-Hermiston',151),(52,'Terry, Graham and Block',152),(53,'Larkin Group',153),(54,'Barrows and Sons',154),(55,'Nienow and Sons',155),(56,'Orn Inc',156),(57,'Boehm-Kautzer',157),(58,'Boyer-Trantow',158),(59,'Kshlerin Group',159),(60,'Oberbrunner, Moore and Schowalter',160),(61,'Stiedemann and Sons',161),(62,'Block, Nicolas and Kshlerin',162),(63,'Thompson LLC',163),(64,'Zboncak and Sons',164),(65,'Parisian, Ruecker and Stracke',165),(66,'Buckridge and Sons',166),(67,'Turner-Baumbach',167),(68,'Pfeffer-Cassin',168),(69,'Bednar-Mitchell',169),(70,'Mayer, Medhurst and Ryan',170),(71,'Huels-Haag',171),(72,'Lakin-Parisian',172),(73,'Bahringer-Altenwerth',173),(74,'Nitzsche Group',174),(75,'Jenkins-Armstrong',175),(76,'Wolf-Bernier',176),(77,'Prosacco-Lubowitz',177),(78,'Reynolds-Lowe',178),(79,'Harber, Kub and Breitenberg',179),(80,'Thompson, Fisher and Nolan',180),(81,'Greenfelder-Ebert',181),(82,'Lind-Bradtke',182),(83,'Wyman, Franecki and Purdy',183),(84,'Sporer Group',184),(85,'Predovic LLC',185),(86,'Jast, Johnston and Smitham',186),(87,'Herzog LLC',187),(88,'Hodkiewicz and Sons',188),(89,'Ziemann, Goyette and Balistreri',189),(90,'Wolff-Bernhard',190),(91,'Haag, Predovic and Turcotte',191),(92,'Grant-Ruecker',192),(93,'Kshlerin, Dietrich and Block',193),(94,'Herman, Lockman and Powlowski',194),(95,'Schamberger and Sons',195),(96,'Blanda-Abshire',196),(97,'Collins and Sons',197),(98,'Kiehn-Kutch',198),(99,'Donnelly, Kautzer and Rolfson',199),(100,'Schroeder-Cronin',200);
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eats'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 11:36:39
