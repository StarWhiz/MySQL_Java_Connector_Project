DROP DATABASE IF EXISTS STORE;
CREATE DATABASE STORE;
USE STORE; 

DROP TABLE IF EXISTS `billofsale`;
DROP TABLE IF EXISTS `itemgraveyard`;
DROP TABLE IF EXISTS `suppliers`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `items`;
DROP TABLE IF EXISTS `archivedItems`;

CREATE TABLE `items` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `qtyinstock` int(11) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);

INSERT INTO `items` VALUES (539, 'Antec DF500 Case', '54.49',2,'2016-01-02');
INSERT INTO `items` VALUES (915, 'AMD Ryzen 1700X', '149.99',20,'2018-10-14');
INSERT INTO `items` VALUES (1296, 'NZXT H500i Case', '84.99',84,'2014-11-27');
INSERT INTO `items` VALUES (1468, 'Super Mario Party', '59.99',24,'2018-06-13');
INSERT INTO `items` VALUES (1939, 'Nail clippers', '0.89',37,'2017-03-07');
INSERT INTO `items` VALUES (2106, '16GB DDR4 RAM', '99.99',7,'2015-12-18');
INSERT INTO `items` VALUES (2223, 'ASRock AB350 Mobo', '89.99',70,'2018-06-06');
INSERT INTO `items` VALUES (2366, 'Black Ops 4', '35.99',52,'2015-11-27');
INSERT INTO `items` VALUES (2701, 'Intel i5-9600k', '249.00',3,'2017-03-22');
INSERT INTO `items` VALUES (2895, 'TP-Link C59 Router', '9.99',17,'2018-05-14');
INSERT INTO `items` VALUES (3415, 'Corsair RM650x PSU', '64.99',5,'2018-01-28');
INSERT INTO `items` VALUES (3616, '6FT HDMI Cable', '5.99',16,'2015-05-29');
INSERT INTO `items` VALUES (3691, 'Intel 545s 256GB SSD', '39.99',49,'2017-11-17');
INSERT INTO `items` VALUES (3960, 'Logitech G203 Mouse', '15.50',21,'2014-02-13');
INSERT INTO `items` VALUES (4106, 'Radeon R7 360 GPU', '25.99',65,'2016-08-10');
INSERT INTO `items` VALUES (4384, 'Acer Aspire E Laptop', '499.99',85,'2017-04-24');
INSERT INTO `items` VALUES (4822, 'Surface Pro 6', '799.95',91,'2016-03-16');
INSERT INTO `items` VALUES (5027, 'Aigo Halo LED 120mm Fan', '9.99',40,'2018-02-20');
INSERT INTO `items` VALUES (5158, 'Senzer Q10 Wireless BT Headphones', '43.99',11,'2015-02-23');
INSERT INTO `items` VALUES (5301, 'Pandemic Board Game', '19.99',55,'2017-12-14');
INSERT INTO `items` VALUES (5380, 'Koss PortaPro Headphones', '22.99',0,'2018-02-15');
INSERT INTO `items` VALUES (5390, 'Brother Label Maker', '4.99',55,'2018-07-01');
INSERT INTO `items` VALUES (5404, 'Tide Pods Detergent 35CT', '9.99',40,'2017-09-25');
INSERT INTO `items` VALUES (5713, 'Samsung 16GB Flash Drive', '2.25',45,'2018-06-26');
INSERT INTO `items` VALUES (5935, 'Samsung 128GB Flash Drive', '24.99',45,'2018-01-05');
INSERT INTO `items` VALUES (6086, 'Samsung Evo 860 500GB SSD', '65.99',76,'2017-09-20');
INSERT INTO `items` VALUES (6204, 'AUKEY Gaming Mouse Pad', '19.99',29,'2014-12-08');
INSERT INTO `items` VALUES (6342, 'Tire Pressure Guage', '5.49',62,'2017-05-31');
INSERT INTO `items` VALUES (6446, 'ViewSonic 24in 144Hz Monitor', '180.99',73,'2014-03-04');
INSERT INTO `items` VALUES (6719, 'Titanium Spork', '6.97',90,'2016-12-16');
INSERT INTO `items` VALUES (6964, 'LED Lantern', '3.95',57,'2016-05-30');
INSERT INTO `items` VALUES (7465, 'Platypus Water Bottle', '7.49',99,'2017-09-07');
INSERT INTO `items` VALUES (7472, 'SunJoe SPX3000 Pressure Washer', '149.00',49,'2016-05-27');
INSERT INTO `items` VALUES (7565, 'Nintendo Switch', '299.99',59,'2018-06-28');
INSERT INTO `items` VALUES (7819, 'Sony Playstation 4 Slim', '199.95',5,'2015-03-04');
INSERT INTO `items` VALUES (7864, 'Xbox One X', '399.99',45,'2018-01-11');
INSERT INTO `items` VALUES (7865, 'Iphone Xs', '999.89',72,'2015-08-29');
INSERT INTO `items` VALUES (7932, '12-Pack Pepsi', '2.67',46,'2016-08-18');
INSERT INTO `items` VALUES (7976, 'Corsair SF450 PSU', '73.25',93,'2015-10-25');
INSERT INTO `items` VALUES (8073, 'Arctic MX-4 Thermalpaste', '3.96',74,'2016-09-10');
INSERT INTO `items` VALUES (8417, 'GIGABYTE GTX 1070Ti', '349.45',71,'2017-01-09');
INSERT INTO `items` VALUES (8607, 'Nextbit Robin Phone', '114.99',55,'2015-07-11');
INSERT INTO `items` VALUES (8661, 'Surface Pro 3 256GB 8GB', '429.99',83,'2014-06-02');
INSERT INTO `items` VALUES (9033, 'Chopsticks 24Pairs', '5.45',14,'2018-05-07');
INSERT INTO `items` VALUES (9236, 'Cup Noodles 24pk', '4.24',87,'2014-08-25');
INSERT INTO `items` VALUES (9414, 'Bug-A-Salt Gun', '24.99',17,'2014-12-22');
INSERT INTO `items` VALUES (9456, 'Thai Tea Boba', '4.75',41,'2016-07-19');
INSERT INTO `items` VALUES (9576, 'Zalman CPU Cooler', '9.51',91,'2018-03-07');
INSERT INTO `items` VALUES (9628, 'EVGA GTX 970', '115.25',84,'2018-10-10');
INSERT INTO `items` VALUES (9864, 'GL.inet SLATE AR750S Router', '62.99',31,'2014-07-20');




CREATE TABLE `customers` (
  `customername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`customerid`)
);

INSERT INTO `customers` VALUES ('Alysha Wisozk', 76);
INSERT INTO `customers` VALUES ('Ezra Emmerich III', 181);
INSERT INTO `customers` VALUES ('Prof. Darian Paucek DDS', 215);
INSERT INTO `customers` VALUES ('Prof. Lilliana Schroeder I', 331);
INSERT INTO `customers` VALUES ('Ali Hoeger', 1031);
INSERT INTO `customers` VALUES ('Dr. Salvador Kshlerin', 1078);
INSERT INTO `customers` VALUES ('Dr. Reece West', 1174);
INSERT INTO `customers` VALUES ('Andres Boyer', 1184);
INSERT INTO `customers` VALUES ('Miss Brenna Hyatt MD', 1389);
INSERT INTO `customers` VALUES ('Odell Schulist', 1582);
INSERT INTO `customers` VALUES ('Christop Reichel PhD', 1806);
INSERT INTO `customers` VALUES ('Providenci Hayes', 2030);
INSERT INTO `customers` VALUES ('Magali Reichel', 2060);
INSERT INTO `customers` VALUES ('Addie Stehr', 3192);
INSERT INTO `customers` VALUES ('Antoinette Powlowski', 3253);
INSERT INTO `customers` VALUES ('Uriel King', 3643);
INSERT INTO `customers` VALUES ('Dr. Devyn Cormier', 3658);
INSERT INTO `customers` VALUES ('Anne Cummings III', 4101);
INSERT INTO `customers` VALUES ('Federico Wintheiser', 4437);
INSERT INTO `customers` VALUES ('Miss Kara Nikolaus III', 4549);
INSERT INTO `customers` VALUES ('Lora Monahan', 4746);
INSERT INTO `customers` VALUES ('Ebony Hayes', 4955);
INSERT INTO `customers` VALUES ('Walker Bartoletti', 4980);
INSERT INTO `customers` VALUES ('Mohammad Mosciski', 5003);
INSERT INTO `customers` VALUES ('Prof. Alek Kris', 5017);
INSERT INTO `customers` VALUES ('Donnie Johnston', 5261);
INSERT INTO `customers` VALUES ('Aric Deckow PhD', 5355);
INSERT INTO `customers` VALUES ('Keith Kutch Jr.', 5422);
INSERT INTO `customers` VALUES ('Jimmy Ritchie', 5919);
INSERT INTO `customers` VALUES ('Amani Leannon', 6201);
INSERT INTO `customers` VALUES ('Santa Haag', 6282);
INSERT INTO `customers` VALUES ('Marisol Moen', 6412);
INSERT INTO `customers` VALUES ('Pink Hahn Sr.', 6654);
INSERT INTO `customers` VALUES ('Tyrique Herzog Jr.', 6757);
INSERT INTO `customers` VALUES ('Ms. Allene O\'Connell MD', 6843);
INSERT INTO `customers` VALUES ('Prof. Angelica Boyle V', 6920);
INSERT INTO `customers` VALUES ('Destini Krajcik', 7142);
INSERT INTO `customers` VALUES ('Kelley Brakus', 7237);
INSERT INTO `customers` VALUES ('Prof. Leanne Senger', 7397);
INSERT INTO `customers` VALUES ('Pink Jacobs III', 7484);
INSERT INTO `customers` VALUES ('Ms. Dejah O\'Conner DDS', 7503);
INSERT INTO `customers` VALUES ('Mrs. Tomasa Schuster', 7523);
INSERT INTO `customers` VALUES ('Leonel Kutch', 7665);
INSERT INTO `customers` VALUES ('Josephine Runolfsson', 7929);
INSERT INTO `customers` VALUES ('Amy Veum', 8002);
INSERT INTO `customers` VALUES ('Mr. Reed Streich', 8148);
INSERT INTO `customers` VALUES ('Enrico Goldner', 8364);
INSERT INTO `customers` VALUES ('Jannie Jacobson', 8644);
INSERT INTO `customers` VALUES ('Telly Herman', 9137);
INSERT INTO `customers` VALUES ('Robbie Bartell', 9813);



CREATE TABLE `billofsale` (
  `transactionid` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `return?` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`transactionid`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`),
  FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
);
INSERT INTO `billofsale` VALUES('1000','5380','7','58.43','2013-12-10','4746','no');
INSERT INTO `billofsale` VALUES('1001','6342','2','68.43','2013-12-15','5422','no');
INSERT INTO `billofsale` VALUES('1002','5390','7','61.70','2013-12-17','4955','no');
INSERT INTO `billofsale` VALUES('1003','9456','7','97.93','2013-12-31','8364','no');
INSERT INTO `billofsale` VALUES('1004','6719','2','71.49','2014-02-09','6201','no');
INSERT INTO `billofsale` VALUES('1005','6446','5','69.45','2014-02-22','5919','no');
INSERT INTO `billofsale` VALUES('1006','8073','4','87.79','2014-03-03','7484','no');
INSERT INTO `billofsale` VALUES('1007','1939','9','18.61','2014-03-04','1031','no');
INSERT INTO `billofsale` VALUES('1008','6086','7','66.47','2014-03-12','5261','no');
INSERT INTO `billofsale` VALUES('1009','4384','7','48.57','2014-03-26','3643','no');
INSERT INTO `billofsale` VALUES('1010','3415','2','36.30','2014-04-07','1806','no');
INSERT INTO `billofsale` VALUES('1011','4384','3','48.57','2014-05-01','3643','no');
INSERT INTO `billofsale` VALUES('1012','6446','1','69.45','2014-05-14','5919','no');
INSERT INTO `billofsale` VALUES('1013','6204','8','68.21','2014-05-20','5355','no');
INSERT INTO `billofsale` VALUES('1014','7865','5','80.45','2014-06-14','7142','no');
INSERT INTO `billofsale` VALUES('1015','7565','1','76.75','2014-06-17','6757','no');
INSERT INTO `billofsale` VALUES('1016','7465','5','72.66','2014-06-18','6412','no');
INSERT INTO `billofsale` VALUES('1017','539','2','0.89','2014-08-01','76','yes');
INSERT INTO `billofsale` VALUES('1018','5404','1','62.50','2014-08-21','4980','yes');
INSERT INTO `billofsale` VALUES('1019','7976','2','81.84','2014-09-08','7397','no');
INSERT INTO `billofsale` VALUES('1020','6964','8','72.44','2014-10-10','6282','no');
INSERT INTO `billofsale` VALUES('1021','9033','5','93.76','2014-11-29','7929','yes');
INSERT INTO `billofsale` VALUES('1022','9864','9','99.49','2014-12-19','9813','no');
INSERT INTO `billofsale` VALUES('1023','8417','6','88.55','2014-12-24','7503','no');
INSERT INTO `billofsale` VALUES('1024','6719','8','71.49','2014-12-25','6201','no');
INSERT INTO `billofsale` VALUES('1025','4822','5','51.14','2014-12-27','3658','no');
INSERT INTO `billofsale` VALUES('1026','7472','10','74.67','2015-01-01','6654','no');
INSERT INTO `billofsale` VALUES('1027','2895','7','29.11','2015-01-09','1582','no');
INSERT INTO `billofsale` VALUES('1028','9456','10','97.93','2015-01-10','8364','no');
INSERT INTO `billofsale` VALUES('1029','5935','10','64.80','2015-01-31','5017','no');
INSERT INTO `billofsale` VALUES('1030','2895','3','29.11','2015-03-26','1582','no');
INSERT INTO `billofsale` VALUES('1031','2106','7','18.82','2015-04-05','1078','no');
INSERT INTO `billofsale` VALUES('1032','7819','8','76.91','2015-04-08','6843','no');
INSERT INTO `billofsale` VALUES('1033','2366','1','25.73','2015-04-21','1184','no');
INSERT INTO `billofsale` VALUES('1034','1296','6','10.45','2015-06-05','215','no');
INSERT INTO `billofsale` VALUES('1035','3960','10','43.95','2015-06-05','3192','no');
INSERT INTO `billofsale` VALUES('1036','5027','9','53.24','2015-06-12','4101','no');
INSERT INTO `billofsale` VALUES('1037','539','1','0.89','2015-06-19','76','no');
INSERT INTO `billofsale` VALUES('1038','2366','8','25.73','2015-06-26','1184','no');
INSERT INTO `billofsale` VALUES('1039','5380','2','58.43','2015-07-02','4746','no');
INSERT INTO `billofsale` VALUES('1040','1296','8','10.45','2015-08-01','215','no');
INSERT INTO `billofsale` VALUES('1041','915','6','9.25','2015-08-09','181','yes');
INSERT INTO `billofsale` VALUES('1042','1468','6','11.40','2015-08-14','331','no');
INSERT INTO `billofsale` VALUES('1043','5935','8','64.80','2015-08-15','5017','no');
INSERT INTO `billofsale` VALUES('1044','9033','9','93.76','2015-08-29','7929','no');
INSERT INTO `billofsale` VALUES('1045','7465','3','72.66','2015-08-29','6412','no');
INSERT INTO `billofsale` VALUES('1046','1939','9','18.61','2015-09-07','1031','no');
INSERT INTO `billofsale` VALUES('1047','7865','3','80.45','2015-09-24','7142','no');
INSERT INTO `billofsale` VALUES('1048','3415','6','36.30','2015-10-01','1806','yes');
INSERT INTO `billofsale` VALUES('1049','6342','6','68.43','2015-10-13','5422','yes');
INSERT INTO `billofsale` VALUES('1050','3616','2','39.06','2015-10-15','2030','no');
INSERT INTO `billofsale` VALUES('1051','5158','5','54.18','2015-10-21','4437','no');
INSERT INTO `billofsale` VALUES('1052','5027','2','53.24','2015-11-01','4101','no');
INSERT INTO `billofsale` VALUES('1053','9236','2','95.81','2015-11-14','8002','no');
INSERT INTO `billofsale` VALUES('1054','7976','6','81.84','2015-11-19','7397','no');
INSERT INTO `billofsale` VALUES('1055','9033','7','93.76','2015-11-20','7929','no');
INSERT INTO `billofsale` VALUES('1056','5158','4','54.18','2015-12-17','4437','no');
INSERT INTO `billofsale` VALUES('1057','8073','5','87.79','2015-12-18','7484','no');
INSERT INTO `billofsale` VALUES('1058','539','8','0.89','2016-01-13','76','no');
INSERT INTO `billofsale` VALUES('1059','5380','9','58.43','2016-02-04','4746','no');
INSERT INTO `billofsale` VALUES('1060','7819','2','76.91','2016-02-07','6843','no');
INSERT INTO `billofsale` VALUES('1061','5713','6','63.48','2016-02-15','5003','no');
INSERT INTO `billofsale` VALUES('1062','8661','10','89.13','2016-02-22','7665','no');
INSERT INTO `billofsale` VALUES('1063','7932','8','81.17','2016-03-07','7237','no');
INSERT INTO `billofsale` VALUES('1064','6446','5','69.45','2016-04-01','5919','no');
INSERT INTO `billofsale` VALUES('1065','7976','5','81.84','2016-04-16','7397','no');
INSERT INTO `billofsale` VALUES('1066','3691','5','39.62','2016-05-10','2060','no');
INSERT INTO `billofsale` VALUES('1067','6964','5','72.44','2016-05-13','6282','no');
INSERT INTO `billofsale` VALUES('1068','8417','5','88.55','2016-05-15','7503','no');
INSERT INTO `billofsale` VALUES('1069','5713','10','63.48','2016-05-18','5003','no');
INSERT INTO `billofsale` VALUES('1070','9628','9','99.41','2016-05-29','9137','no');
INSERT INTO `billofsale` VALUES('1071','6204','5','68.21','2016-06-02','5355','no');
INSERT INTO `billofsale` VALUES('1072','4822','4','51.14','2016-06-05','3658','no');
INSERT INTO `billofsale` VALUES('1073','1296','4','10.45','2016-06-08','215','no');
INSERT INTO `billofsale` VALUES('1074','7864','2','79.56','2016-06-13','6920','no');
INSERT INTO `billofsale` VALUES('1075','6204','3','68.21','2016-06-17','5355','no');
INSERT INTO `billofsale` VALUES('1076','9414','7','96.28','2016-06-19','8148','no');
INSERT INTO `billofsale` VALUES('1077','7565','6','76.75','2016-06-25','6757','no');
INSERT INTO `billofsale` VALUES('1078','7465','6','72.66','2016-06-27','6412','no');
INSERT INTO `billofsale` VALUES('1079','5390','7','61.70','2016-07-11','4955','yes');
INSERT INTO `billofsale` VALUES('1080','7864','2','79.56','2016-07-18','6920','no');
INSERT INTO `billofsale` VALUES('1081','5301','4','56.44','2016-08-05','4549','no');
INSERT INTO `billofsale` VALUES('1082','9236','8','95.81','2016-08-11','8002','no');
INSERT INTO `billofsale` VALUES('1083','915','5','9.25','2016-08-24','181','no');
INSERT INTO `billofsale` VALUES('1084','2106','5','18.82','2016-08-25','1078','no');
INSERT INTO `billofsale` VALUES('1085','7472','6','74.67','2016-09-06','6654','no');
INSERT INTO `billofsale` VALUES('1086','2223','4','22.41','2016-09-10','1174','no');
INSERT INTO `billofsale` VALUES('1087','9456','6','97.93','2016-09-14','8364','no');
INSERT INTO `billofsale` VALUES('1088','1468','2','11.40','2016-09-15','331','no');
INSERT INTO `billofsale` VALUES('1089','9864','3','99.49','2016-09-19','9813','no');
INSERT INTO `billofsale` VALUES('1090','6719','2','71.49','2016-10-22','6201','no');
INSERT INTO `billofsale` VALUES('1091','9236','4','95.81','2016-10-24','8002','yes');
INSERT INTO `billofsale` VALUES('1092','1939','2','18.61','2016-10-29','1031','yes');
INSERT INTO `billofsale` VALUES('1093','7819','6','76.91','2016-11-16','6843','no');
INSERT INTO `billofsale` VALUES('1094','4106','6','46.58','2016-11-21','3253','no');
INSERT INTO `billofsale` VALUES('1095','6086','7','66.47','2016-11-25','5261','no');
INSERT INTO `billofsale` VALUES('1096','9414','6','96.28','2017-01-26','8148','no');
INSERT INTO `billofsale` VALUES('1097','3960','2','43.95','2017-02-12','3192','no');
INSERT INTO `billofsale` VALUES('1098','4384','1','48.57','2017-02-21','3643','no');
INSERT INTO `billofsale` VALUES('1099','6964','8','72.44','2017-03-12','6282','no');
INSERT INTO `billofsale` VALUES('1100','8607','3','89.07','2017-04-21','7523','no');
INSERT INTO `billofsale` VALUES('1101','7932','3','81.17','2017-04-23','7237','no');
INSERT INTO `billofsale` VALUES('1102','5935','1','64.80','2017-04-24','5017','no');
INSERT INTO `billofsale` VALUES('1103','3960','4','43.95','2017-04-26','3192','no');
INSERT INTO `billofsale` VALUES('1104','2223','10','22.41','2017-05-06','1174','no');
INSERT INTO `billofsale` VALUES('1105','9576','1','99.22','2017-05-12','8644','no');
INSERT INTO `billofsale` VALUES('1106','2223','6','22.41','2017-05-24','1174','no');
INSERT INTO `billofsale` VALUES('1107','2701','7','25.89','2017-05-31','1389','no');
INSERT INTO `billofsale` VALUES('1108','3616','3','39.06','2017-06-02','2030','no');
INSERT INTO `billofsale` VALUES('1109','4106','1','46.58','2017-07-01','3253','yes');
INSERT INTO `billofsale` VALUES('1110','915','2','9.25','2017-07-19','181','no');
INSERT INTO `billofsale` VALUES('1111','7565','2','76.75','2017-08-02','6757','no');
INSERT INTO `billofsale` VALUES('1112','9576','9','99.22','2017-08-12','8644','no');
INSERT INTO `billofsale` VALUES('1113','8417','10','88.55','2017-11-06','7503','no');
INSERT INTO `billofsale` VALUES('1114','7864','10','79.56','2017-11-25','6920','no');
INSERT INTO `billofsale` VALUES('1115','3616','2','39.06','2017-11-29','2030','no');
INSERT INTO `billofsale` VALUES('1116','9414','10','96.28','2017-12-01','8148','no');
INSERT INTO `billofsale` VALUES('1117','8073','2','87.79','2017-12-09','7484','no');
INSERT INTO `billofsale` VALUES('1118','8661','8','89.13','2017-12-23','7665','no');
INSERT INTO `billofsale` VALUES('1119','1468','3','11.40','2018-01-07','331','no');
INSERT INTO `billofsale` VALUES('1120','7865','6','80.45','2018-01-31','7142','no');
INSERT INTO `billofsale` VALUES('1121','5713','9','63.48','2018-02-06','5003','no');
INSERT INTO `billofsale` VALUES('1122','2701','9','25.89','2018-02-09','1389','yes');
INSERT INTO `billofsale` VALUES('1123','2366','7','25.73','2018-02-14','1184','no');
INSERT INTO `billofsale` VALUES('1124','8661','5','89.13','2018-03-13','7665','yes');
INSERT INTO `billofsale` VALUES('1125','5404','6','62.50','2018-03-16','4980','no');
INSERT INTO `billofsale` VALUES('1126','5301','1','56.44','2018-03-16','4549','no');
INSERT INTO `billofsale` VALUES('1127','9628','4','99.41','2018-03-23','9137','no');
INSERT INTO `billofsale` VALUES('1128','2895','5','29.11','2018-04-06','1582','no');
INSERT INTO `billofsale` VALUES('1129','5301','8','56.44','2018-04-10','4549','no');
INSERT INTO `billofsale` VALUES('1130','2701','10','25.89','2018-04-14','1389','no');
INSERT INTO `billofsale` VALUES('1131','8607','2','89.07','2018-05-11','7523','no');
INSERT INTO `billofsale` VALUES('1132','4822','5','51.14','2018-05-14','3658','no');
INSERT INTO `billofsale` VALUES('1133','3691','5','39.62','2018-05-19','2060','yes');
INSERT INTO `billofsale` VALUES('1134','9628','1','99.41','2018-05-24','9137','no');
INSERT INTO `billofsale` VALUES('1135','7932','9','81.17','2018-06-08','7237','no');
INSERT INTO `billofsale` VALUES('1136','5390','5','61.70','2018-06-09','4955','no');
INSERT INTO `billofsale` VALUES('1137','6086','6','66.47','2018-07-17','5261','no');
INSERT INTO `billofsale` VALUES('1138','3691','8','39.62','2018-07-26','2060','no');
INSERT INTO `billofsale` VALUES('1139','9864','5','99.49','2018-07-28','9813','no');
INSERT INTO `billofsale` VALUES('1140','4106','2','46.58','2018-08-01','3253','no');
INSERT INTO `billofsale` VALUES('1141','3415','6','36.30','2018-08-14','1806','no');
INSERT INTO `billofsale` VALUES('1142','5404','4','62.50','2018-08-26','4980','no');
INSERT INTO `billofsale` VALUES('1143','5158','1','54.18','2018-09-10','4437','no');
INSERT INTO `billofsale` VALUES('1144','9576','3','99.22','2018-09-21','8644','no');
INSERT INTO `billofsale` VALUES('1145','8607','3','89.07','2018-09-23','7523','no');
INSERT INTO `billofsale` VALUES('1146','7472','5','74.67','2018-10-03','6654','no');
INSERT INTO `billofsale` VALUES('1147','2106','4','18.82','2018-10-03','1078','yes');
INSERT INTO `billofsale` VALUES('1148','6342','10','68.43','2018-10-08','5422','no');
INSERT INTO `billofsale` VALUES('1149','5027','8','53.24','2018-11-13','4101','no');







CREATE TABLE `itemgraveyard` (
  `itemid` int(11) NOT NULL,
  `qtymissing` int(11) DEFAULT NULL,
  `datemissing` date DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);

INSERT INTO `itemgraveyard` VALUES (539,5,'2016-04-03');
INSERT INTO `itemgraveyard` VALUES (915,3,'2016-07-12');
INSERT INTO `itemgraveyard` VALUES (1296,1,'2015-06-14');
INSERT INTO `itemgraveyard` VALUES (1468,0,'2018-01-01');
INSERT INTO `itemgraveyard` VALUES (1939,4,'2015-02-25');
INSERT INTO `itemgraveyard` VALUES (2106,6,'2015-06-03');
INSERT INTO `itemgraveyard` VALUES (2223,1,'2018-01-08');
INSERT INTO `itemgraveyard` VALUES (2366,7,'2016-12-15');
INSERT INTO `itemgraveyard` VALUES (2701,5,'2015-05-20');
INSERT INTO `itemgraveyard` VALUES (2895,4,'2018-02-02');
INSERT INTO `itemgraveyard` VALUES (3415,9,'2014-06-02');
INSERT INTO `itemgraveyard` VALUES (3616,3,'2017-01-09');
INSERT INTO `itemgraveyard` VALUES (3691,7,'2015-12-23');
INSERT INTO `itemgraveyard` VALUES (3960,4,'2016-10-03');
INSERT INTO `itemgraveyard` VALUES (4106,1,'2017-05-13');
INSERT INTO `itemgraveyard` VALUES (4384,2,'2016-12-22');
INSERT INTO `itemgraveyard` VALUES (4822,8,'2015-08-20');
INSERT INTO `itemgraveyard` VALUES (5027,6,'2014-02-26');
INSERT INTO `itemgraveyard` VALUES (5158,0,'2014-01-08');
INSERT INTO `itemgraveyard` VALUES (5301,1,'2014-07-13');
INSERT INTO `itemgraveyard` VALUES (5380,9,'2014-12-04');
INSERT INTO `itemgraveyard` VALUES (5390,4,'2017-02-06');
INSERT INTO `itemgraveyard` VALUES (5404,8,'2014-07-18');
INSERT INTO `itemgraveyard` VALUES (5713,7,'2017-10-23');
INSERT INTO `itemgraveyard` VALUES (5935,0,'2015-03-03'); 




CREATE TABLE `suppliers` (
  `transactionid` int(11) NOT NULL,
  `suppliername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemcost` float(10,2) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `dateordered` date NOT NULL,
  PRIMARY KEY (`transactionid`,`dateordered`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`)
);

INSERT INTO `suppliers` VALUES ('324',' Staples','54.18','5158','7','2018-05-13');
INSERT INTO `suppliers` VALUES ('402','Macy\'s','62.50','5404','8','2018-05-12');
INSERT INTO `suppliers` VALUES ('488',' Target','99.22','9576','5','2017-07-06');
INSERT INTO `suppliers` VALUES ('517',' Target','18.82','2106','10','2015-03-15');
INSERT INTO `suppliers` VALUES ('620',' Safeway','66.47','6086','6','2017-11-17');
INSERT INTO `suppliers` VALUES ('780',' Safeway','76.91','7819','1','2016-11-22');
INSERT INTO `suppliers` VALUES ('806',' Lowes','25.73','2366','6','2018-01-18');
INSERT INTO `suppliers` VALUES ('833',' Staples','74.67','7472','7','2016-01-08');
INSERT INTO `suppliers` VALUES ('1312',' Walmart','58.43','5380','1','2015-07-03');
INSERT INTO `suppliers` VALUES ('1437',' Safeway','36.30','3415','3','2015-05-08');
INSERT INTO `suppliers` VALUES ('1449',' Target','80.45','7865','1','2014-01-10');
INSERT INTO `suppliers` VALUES ('1466',' Fry\'s Electronics','29.11','2895','2','2018-09-27');
INSERT INTO `suppliers` VALUES ('1479',' Lowes','89.07','8607','2','2018-03-19');
INSERT INTO `suppliers` VALUES ('1500',' Office Depot','99.22','9576','8','2018-01-11');
INSERT INTO `suppliers` VALUES ('1783',' Staples','25.89','2701','6','2018-02-10');
INSERT INTO `suppliers` VALUES ('1898',' Fry\'s Electronics','87.79','8073','2','2014-10-08');
INSERT INTO `suppliers` VALUES ('1925',' Staples','81.84','7976','5','2015-05-13');
INSERT INTO `suppliers` VALUES ('1977',' Office Depot','76.75','7565','5','2015-02-17');
INSERT INTO `suppliers` VALUES ('1982',' Office Depot','64.80','5935','7','2018-02-24');
INSERT INTO `suppliers` VALUES ('2018',' SJSU','9.25','915','4','2016-03-08');
INSERT INTO `suppliers` VALUES ('2055',' Lowes','25.73','2366','5','2018-07-17');
INSERT INTO `suppliers` VALUES ('2057',' Office Depot','99.22','9576','1','2014-02-26');
INSERT INTO `suppliers` VALUES ('2108',' Safeway','72.44','6964','7','2017-12-14');
INSERT INTO `suppliers` VALUES ('2261',' Lowes','95.81','9236','6','2016-06-20');
INSERT INTO `suppliers` VALUES ('2293','Macy\'s','64.80','5935','4','2015-01-21');
INSERT INTO `suppliers` VALUES ('2303',' Lowes','96.28','9414','4','2017-09-27');
INSERT INTO `suppliers` VALUES ('2348',' Walmart','0.89','539','2','2018-01-03');
INSERT INTO `suppliers` VALUES ('2908',' Staples','43.95','3960','5','2017-01-29');
INSERT INTO `suppliers` VALUES ('2942',' Lowes','72.44','6964','10','2017-12-06');
INSERT INTO `suppliers` VALUES ('3046','Macy\'s','74.67','7472','3','2015-04-16');
INSERT INTO `suppliers` VALUES ('3076',' Safeway','79.56','7864','4','2018-10-11');
INSERT INTO `suppliers` VALUES ('3093','Macy\'s','39.06','3616','1','2016-07-04');
INSERT INTO `suppliers` VALUES ('3154',' SJSU','54.18','5158','4','2017-11-22');
INSERT INTO `suppliers` VALUES ('3221',' SJSU','68.43','6342','7','2014-05-06');
INSERT INTO `suppliers` VALUES ('3292',' Office Depot','93.76','9033','9','2014-07-30');
INSERT INTO `suppliers` VALUES ('3312',' Walmart','66.47','6086','6','2015-01-30');
INSERT INTO `suppliers` VALUES ('3426',' Walmart','71.49','6719','8','2014-08-17');
INSERT INTO `suppliers` VALUES ('3513',' Target','43.95','3960','6','2015-03-21');
INSERT INTO `suppliers` VALUES ('3592',' SJSU','81.84','7976','7','2017-03-16');
INSERT INTO `suppliers` VALUES ('3680',' Lowes','39.06','3616','8','2018-06-25');
INSERT INTO `suppliers` VALUES ('3731','Macy\'s','88.55','8417','7','2014-07-26');
INSERT INTO `suppliers` VALUES ('3738',' SJSU','81.17','7932','7','2018-08-18');
INSERT INTO `suppliers` VALUES ('3784',' Office Depot','46.58','4106','10','2015-02-20');
INSERT INTO `suppliers` VALUES ('3800',' Target','54.18','5158','4','2016-01-06');
INSERT INTO `suppliers` VALUES ('3906',' Target','80.45','7865','9','2014-11-02');
INSERT INTO `suppliers` VALUES ('3947',' Lowes','81.17','7932','5','2017-02-14');
INSERT INTO `suppliers` VALUES ('3953',' Office Depot','63.48','5713','3','2016-06-28');
INSERT INTO `suppliers` VALUES ('4001',' Target','51.14','4822','6','2017-11-13');
INSERT INTO `suppliers` VALUES ('4125',' Walmart','81.84','7976','9','2016-11-01');
INSERT INTO `suppliers` VALUES ('4170',' SJSU','11.40','1468','1','2016-03-10');
INSERT INTO `suppliers` VALUES ('4182',' Target','68.21','6204','2','2016-08-06');
INSERT INTO `suppliers` VALUES ('4363',' Lowes','66.47','6086','2','2016-04-26');
INSERT INTO `suppliers` VALUES ('4414','Macy\'s','18.61','1939','9','2015-01-01');
INSERT INTO `suppliers` VALUES ('4473',' Walmart','99.41','9628','5','2017-04-29');
INSERT INTO `suppliers` VALUES ('4487',' Target','18.82','2106','3','2016-09-25');
INSERT INTO `suppliers` VALUES ('4572',' Staples','9.25','915','10','2018-02-16');
INSERT INTO `suppliers` VALUES ('4614',' Walmart','76.91','7819','5','2015-02-15');
INSERT INTO `suppliers` VALUES ('4689',' Safeway','53.24','5027','4','2017-01-21');
INSERT INTO `suppliers` VALUES ('4710',' Staples','25.73','2366','9','2017-02-14');
INSERT INTO `suppliers` VALUES ('4763',' Target','10.45','1296','8','2016-12-22');
INSERT INTO `suppliers` VALUES ('4819',' Fry\'s Electronics','61.70','5390','5','2016-01-27');
INSERT INTO `suppliers` VALUES ('4849',' Staples','72.66','7465','5','2016-07-28');
INSERT INTO `suppliers` VALUES ('4871',' Office Depot','63.48','5713','3','2018-08-21');
INSERT INTO `suppliers` VALUES ('4942',' Safeway','9.25','915','5','2017-11-13');
INSERT INTO `suppliers` VALUES ('4943','Macy\'s','76.75','7565','8','2014-02-19');
INSERT INTO `suppliers` VALUES ('5006',' Staples','72.66','7465','5','2015-09-04');
INSERT INTO `suppliers` VALUES ('5023','Macy\'s','69.45','6446','3','2014-09-14');
INSERT INTO `suppliers` VALUES ('5073',' Office Depot','72.44','6964','4','2016-12-17');
INSERT INTO `suppliers` VALUES ('5374',' Lowes','97.93','9456','1','2016-09-12');
INSERT INTO `suppliers` VALUES ('5397',' Office Depot','22.41','2223','7','2017-12-20');
INSERT INTO `suppliers` VALUES ('5423',' Walmart','88.55','8417','9','2017-09-10');
INSERT INTO `suppliers` VALUES ('5532',' Walmart','29.11','2895','8','2018-07-02');
INSERT INTO `suppliers` VALUES ('5642',' SJSU','95.81','9236','5','2015-07-30');
INSERT INTO `suppliers` VALUES ('5685',' Staples','71.49','6719','9','2016-09-29');
INSERT INTO `suppliers` VALUES ('5838','Macy\'s','69.45','6446','2','2016-06-09');
INSERT INTO `suppliers` VALUES ('5853',' Office Depot','58.43','5380','7','2015-05-17');
INSERT INTO `suppliers` VALUES ('6043','Macy\'s','64.80','5935','1','2014-10-01');
INSERT INTO `suppliers` VALUES ('6133',' Staples','87.79','8073','7','2018-12-02');
INSERT INTO `suppliers` VALUES ('6232',' Staples','96.28','9414','6','2014-11-07');
INSERT INTO `suppliers` VALUES ('6252','Macy\'s','53.24','5027','6','2016-01-05');
INSERT INTO `suppliers` VALUES ('6265',' Fry\'s Electronics','99.49','9864','5','2014-11-27');
INSERT INTO `suppliers` VALUES ('6304',' Target','56.44','5301','4','2015-10-06');
INSERT INTO `suppliers` VALUES ('6375',' Fry\'s Electronics','61.70','5390','7','2018-10-12');
INSERT INTO `suppliers` VALUES ('6389',' Office Depot','39.62','3691','8','2015-11-12');
INSERT INTO `suppliers` VALUES ('6391',' Staples','93.76','9033','10','2018-05-14');
INSERT INTO `suppliers` VALUES ('6405',' Lowes','89.13','8661','1','2015-06-28');
INSERT INTO `suppliers` VALUES ('6407',' Fry\'s Electronics','74.67','7472','10','2018-06-16');
INSERT INTO `suppliers` VALUES ('6460',' Staples','11.40','1468','1','2014-12-02');
INSERT INTO `suppliers` VALUES ('6497',' Lowes','99.49','9864','3','2017-11-18');
INSERT INTO `suppliers` VALUES ('6539',' Walmart','72.66','7465','9','2017-09-12');
INSERT INTO `suppliers` VALUES ('6558',' Office Depot','51.14','4822','7','2016-05-02');
INSERT INTO `suppliers` VALUES ('6630',' Safeway','10.45','1296','3','2018-01-05');
INSERT INTO `suppliers` VALUES ('6759',' Walmart','79.56','7864','7','2017-08-14');
INSERT INTO `suppliers` VALUES ('6807',' Lowes','68.21','6204','6','2016-09-02');
INSERT INTO `suppliers` VALUES ('6812',' Staples','39.62','3691','7','2018-12-04');
INSERT INTO `suppliers` VALUES ('6848',' Lowes','36.30','3415','3','2018-08-13');
INSERT INTO `suppliers` VALUES ('6876',' Safeway','25.89','2701','4','2016-07-11');
INSERT INTO `suppliers` VALUES ('6955',' Walmart','18.61','1939','3','2016-11-28');
INSERT INTO `suppliers` VALUES ('6960',' Fry\'s Electronics','61.70','5390','4','2016-05-14');
INSERT INTO `suppliers` VALUES ('7094',' Staples','18.82','2106','1','2016-08-07');
INSERT INTO `suppliers` VALUES ('7137',' SJSU','99.41','9628','2','2015-04-24');
INSERT INTO `suppliers` VALUES ('7139','Macy\'s','43.95','3960','2','2014-11-28');
INSERT INTO `suppliers` VALUES ('7176',' Office Depot','68.21','6204','1','2018-04-27');
INSERT INTO `suppliers` VALUES ('7337',' Lowes','99.41','9628','10','2014-04-16');
INSERT INTO `suppliers` VALUES ('7349',' Target','0.89','539','8','2017-12-16');
INSERT INTO `suppliers` VALUES ('7372',' SJSU','80.45','7865','7','2014-08-13');
INSERT INTO `suppliers` VALUES ('7472',' Staples','89.07','8607','7','2015-08-12');
INSERT INTO `suppliers` VALUES ('7477',' Target','53.24','5027','4','2017-01-28');
INSERT INTO `suppliers` VALUES ('7492',' Staples','48.57','4384','1','2018-04-24');
INSERT INTO `suppliers` VALUES ('7526',' Fry\'s Electronics','89.13','8661','10','2017-10-03');
INSERT INTO `suppliers` VALUES ('7594','Macy\'s','51.14','4822','9','2014-09-11');
INSERT INTO `suppliers` VALUES ('7635',' Target','25.89','2701','6','2014-09-18');
INSERT INTO `suppliers` VALUES ('7786',' Target','97.93','9456','8','2015-10-26');
INSERT INTO `suppliers` VALUES ('7828',' Lowes','71.49','6719','3','2014-02-18');
INSERT INTO `suppliers` VALUES ('7898',' SJSU','68.43','6342','2','2017-10-10');
INSERT INTO `suppliers` VALUES ('7988',' Staples','11.40','1468','5','2014-07-28');
INSERT INTO `suppliers` VALUES ('8014',' Fry\'s Electronics','99.49','9864','9','2016-12-06');
INSERT INTO `suppliers` VALUES ('8019',' SJSU','56.44','5301','5','2018-02-27');
INSERT INTO `suppliers` VALUES ('8286',' Lowes','81.17','7932','6','2015-12-30');
INSERT INTO `suppliers` VALUES ('8328',' Safeway','56.44','5301','4','2017-09-03');
INSERT INTO `suppliers` VALUES ('8409',' Walmart','0.89','539','1','2018-10-23');
INSERT INTO `suppliers` VALUES ('8426','Macy\'s','10.45','1296','1','2015-06-03');
INSERT INTO `suppliers` VALUES ('8534',' Staples','22.41','2223','10','2014-06-04');
INSERT INTO `suppliers` VALUES ('8647',' Fry\'s Electronics','36.30','3415','5','2017-01-17');
INSERT INTO `suppliers` VALUES ('8650',' Fry\'s Electronics','96.28','9414','3','2016-09-07');
INSERT INTO `suppliers` VALUES ('8785',' Lowes','76.91','7819','7','2017-06-08');
INSERT INTO `suppliers` VALUES ('8896',' Target','58.43','5380','6','2016-09-28');
INSERT INTO `suppliers` VALUES ('8915',' SJSU','48.57','4384','5','2018-07-22');
INSERT INTO `suppliers` VALUES ('9003',' SJSU','62.50','5404','8','2015-11-28');
INSERT INTO `suppliers` VALUES ('9162','Macy\'s','62.50','5404','5','2015-06-05');
INSERT INTO `suppliers` VALUES ('9167',' Lowes','69.45','6446','10','2018-05-06');
INSERT INTO `suppliers` VALUES ('9185',' Office Depot','46.58','4106','4','2017-01-23');
INSERT INTO `suppliers` VALUES ('9254',' SJSU','76.75','7565','8','2018-08-14');
INSERT INTO `suppliers` VALUES ('9273',' Lowes','39.62','3691','3','2018-09-22');
INSERT INTO `suppliers` VALUES ('9282',' Staples','95.81','9236','4','2014-01-31');
INSERT INTO `suppliers` VALUES ('9304',' Office Depot','68.43','6342','3','2014-01-23');
INSERT INTO `suppliers` VALUES ('9371',' SJSU','93.76','9033','5','2015-03-13');
INSERT INTO `suppliers` VALUES ('9372',' Office Depot','88.55','8417','1','2018-08-10');
INSERT INTO `suppliers` VALUES ('9389',' Safeway','18.61','1939','9','2014-07-27');
INSERT INTO `suppliers` VALUES ('9406',' Fry\'s Electronics','89.13','8661','9','2015-09-25');
INSERT INTO `suppliers` VALUES ('9424',' Staples','87.79','8073','4','2018-11-26');
INSERT INTO `suppliers` VALUES ('9484',' Target','89.07','8607','1','2017-11-08');
INSERT INTO `suppliers` VALUES ('9543',' Fry\'s Electronics','29.11','2895','3','2016-10-09');
INSERT INTO `suppliers` VALUES ('9545',' Staples','48.57','4384','7','2016-11-30');
INSERT INTO `suppliers` VALUES ('9597',' Walmart','39.06','3616','7','2015-11-10');
INSERT INTO `suppliers` VALUES ('9651',' Fry\'s Electronics','79.56','7864','9','2015-05-27');
INSERT INTO `suppliers` VALUES ('9714',' Walmart','63.48','5713','5','2016-08-29');
INSERT INTO `suppliers` VALUES ('9829',' Fry\'s Electronics','46.58','4106','2','2018-05-24');
INSERT INTO `suppliers` VALUES ('9917',' Staples','22.41','2223','10','2015-05-06');
INSERT INTO `suppliers` VALUES ('9985',' SJSU','97.93','9456','6','2014-04-11');



CREATE TABLE `reviews` (
  `reviewid` int(11) NOT NULL,
  `reviewdate` date DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`),
  FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
) ;

INSERT INTO `reviews` VALUES ('477','2016-01-08','5158','4437','5');
INSERT INTO `reviews` VALUES ('3139','2018-03-12','7819','6843','5');
INSERT INTO `reviews` VALUES ('10389','2015-09-22','5404','4980','0');
INSERT INTO `reviews` VALUES ('12227','2017-03-21','5390','4955','1');
INSERT INTO `reviews` VALUES ('29830','2018-10-16','9456','8364','2');
INSERT INTO `reviews` VALUES ('31759','2014-11-06','6719','6201','4');
INSERT INTO `reviews` VALUES ('32450','2014-10-22','5713','5003','0');
INSERT INTO `reviews` VALUES ('34475','2016-09-11','7932','7237','5');
INSERT INTO `reviews` VALUES ('38950','2018-01-18','6964','6282','1');
INSERT INTO `reviews` VALUES ('39507','2017-01-18','5380','4746','1');
INSERT INTO `reviews` VALUES ('43185','2016-03-29','4384','3643','2');
INSERT INTO `reviews` VALUES ('43627','2018-01-15','3415','1806','3');
INSERT INTO `reviews` VALUES ('44531','2017-02-08','7465','6412','0');
INSERT INTO `reviews` VALUES ('48091','2017-08-15','539','76','1');
INSERT INTO `reviews` VALUES ('67116','2018-05-21','1296','215','0');
INSERT INTO `reviews` VALUES ('71934','2016-03-30','2223','1174','3');
INSERT INTO `reviews` VALUES ('85120','2015-04-02','5380','4746','2');
INSERT INTO `reviews` VALUES ('88351','2015-09-13','8661','7665','4');
INSERT INTO `reviews` VALUES ('94726','2016-12-19','6719','6201','0');
INSERT INTO `reviews` VALUES ('98155','2018-09-01','6086','5261','4');
INSERT INTO `reviews` VALUES ('99328','2016-05-14','6204','5355','2');
INSERT INTO `reviews` VALUES ('103356','2017-02-09','6342','5422','2');
INSERT INTO `reviews` VALUES ('109417','2017-10-01','7865','7142','5');
INSERT INTO `reviews` VALUES ('116922','2015-03-28','5027','4101','0');
INSERT INTO `reviews` VALUES ('124589','2015-06-12','4106','3253','0');
INSERT INTO `reviews` VALUES ('140757','2014-10-12','9236','8002','3');
INSERT INTO `reviews` VALUES ('144656','2015-11-05','5158','4437','1');
INSERT INTO `reviews` VALUES ('155590','2017-10-30','1939','1031','1');
INSERT INTO `reviews` VALUES ('158438','2016-07-13','2366','1184','5');
INSERT INTO `reviews` VALUES ('164214','2017-02-12','5301','4549','4');
INSERT INTO `reviews` VALUES ('171891','2015-11-02','915','181','5');
INSERT INTO `reviews` VALUES ('173126','2015-12-17','9414','8148','5');
INSERT INTO `reviews` VALUES ('179807','2014-09-28','8073','7484','3');
INSERT INTO `reviews` VALUES ('190223','2017-09-07','5380','4746','1');
INSERT INTO `reviews` VALUES ('190651','2015-11-28','9864','9813','0');
INSERT INTO `reviews` VALUES ('194061','2018-11-22','1468','331','2');
INSERT INTO `reviews` VALUES ('194779','2017-11-03','8607','7523','0');
INSERT INTO `reviews` VALUES ('199994','2014-01-02','9576','8644','1');
INSERT INTO `reviews` VALUES ('201021','2017-12-16','9628','9137','2');
INSERT INTO `reviews` VALUES ('205461','2014-08-14','6342','5422','3');
INSERT INTO `reviews` VALUES ('213886','2018-09-28','9576','8644','2');
INSERT INTO `reviews` VALUES ('217807','2014-07-16','2106','1078','4');
INSERT INTO `reviews` VALUES ('229879','2016-08-05','3960','3192','2');
INSERT INTO `reviews` VALUES ('230891','2014-05-27','5027','4101','0');
INSERT INTO `reviews` VALUES ('231744','2014-07-27','3691','2060','2');
INSERT INTO `reviews` VALUES ('238280','2018-05-09','4106','3253','0');
INSERT INTO `reviews` VALUES ('239730','2018-11-19','6446','5919','5');
INSERT INTO `reviews` VALUES ('247438','2015-02-11','5301','4549','0');
INSERT INTO `reviews` VALUES ('255975','2018-03-23','3960','3192','0');
INSERT INTO `reviews` VALUES ('256504','2015-02-28','9628','9137','2');
INSERT INTO `reviews` VALUES ('260069','2017-01-01','6719','6201','2');
INSERT INTO `reviews` VALUES ('265347','2017-01-13','7565','6757','3');
INSERT INTO `reviews` VALUES ('265642','2017-04-14','2895','1582','1');
INSERT INTO `reviews` VALUES ('275285','2018-04-17','5713','5003','0');
INSERT INTO `reviews` VALUES ('285566','2015-07-11','4822','3658','3');
INSERT INTO `reviews` VALUES ('290611','2015-06-11','3616','2030','5');
INSERT INTO `reviews` VALUES ('300435','2014-05-27','5158','4437','3');
INSERT INTO `reviews` VALUES ('317207','2018-05-01','7976','7397','3');
INSERT INTO `reviews` VALUES ('338296','2014-09-25','915','181','5');
INSERT INTO `reviews` VALUES ('339910','2015-12-29','9628','9137','0');
INSERT INTO `reviews` VALUES ('340195','2017-07-29','1939','1031','5');
INSERT INTO `reviews` VALUES ('347160','2014-06-18','6086','5261','3');
INSERT INTO `reviews` VALUES ('354200','2015-06-10','8607','7523','0');
INSERT INTO `reviews` VALUES ('355990','2016-02-27','8607','7523','5');
INSERT INTO `reviews` VALUES ('357706','2014-10-11','3616','2030','4');
INSERT INTO `reviews` VALUES ('361890','2015-03-12','6446','5919','1');
INSERT INTO `reviews` VALUES ('365830','2018-08-08','7864','6920','0');
INSERT INTO `reviews` VALUES ('377684','2017-03-26','7819','6843','0');
INSERT INTO `reviews` VALUES ('386745','2014-03-14','7976','7397','0');
INSERT INTO `reviews` VALUES ('388755','2014-01-11','4384','3643','1');
INSERT INTO `reviews` VALUES ('390293','2015-12-10','6342','5422','5');
INSERT INTO `reviews` VALUES ('391241','2017-07-07','4822','3658','0');
INSERT INTO `reviews` VALUES ('391854','2016-02-21','4822','3658','4');
INSERT INTO `reviews` VALUES ('397654','2017-07-22','3691','2060','4');
INSERT INTO `reviews` VALUES ('404651','2015-05-18','9236','8002','2');
INSERT INTO `reviews` VALUES ('405533','2016-10-20','9576','8644','0');
INSERT INTO `reviews` VALUES ('406265','2015-11-20','9414','8148','2');
INSERT INTO `reviews` VALUES ('421738','2016-02-14','4106','3253','0');
INSERT INTO `reviews` VALUES ('433689','2014-05-03','8073','7484','4');
INSERT INTO `reviews` VALUES ('454257','2015-06-25','5390','4955','2');
INSERT INTO `reviews` VALUES ('454383','2015-03-04','5935','5017','5');
INSERT INTO `reviews` VALUES ('458573','2013-12-23','2106','1078','4');
INSERT INTO `reviews` VALUES ('486071','2018-11-12','6204','5355','1');
INSERT INTO `reviews` VALUES ('492629','2017-03-13','7932','7237','2');
INSERT INTO `reviews` VALUES ('497283','2016-01-08','8417','7503','0');
INSERT INTO `reviews` VALUES ('498011','2016-01-06','8661','7665','3');
INSERT INTO `reviews` VALUES ('511830','2018-01-07','9864','9813','0');
INSERT INTO `reviews` VALUES ('514000','2014-02-15','3415','1806','1');
INSERT INTO `reviews` VALUES ('515797','2016-02-16','7819','6843','3');
INSERT INTO `reviews` VALUES ('527740','2016-12-28','2895','1582','5');
INSERT INTO `reviews` VALUES ('534079','2017-07-29','9864','9813','3');
INSERT INTO `reviews` VALUES ('540122','2015-09-21','1468','331','2');
INSERT INTO `reviews` VALUES ('544781','2016-04-06','8073','7484','5');
INSERT INTO `reviews` VALUES ('545455','2014-11-18','5301','4549','3');
INSERT INTO `reviews` VALUES ('561043','2017-09-15','3616','2030','1');
INSERT INTO `reviews` VALUES ('589777','2018-05-14','5404','4980','5');
INSERT INTO `reviews` VALUES ('604921','2016-08-25','6086','5261','5');
INSERT INTO `reviews` VALUES ('612716','2014-02-20','7864','6920','1');
INSERT INTO `reviews` VALUES ('614903','2015-11-02','3691','2060','2');
INSERT INTO `reviews` VALUES ('621116','2014-10-02','2106','1078','5');
INSERT INTO `reviews` VALUES ('635651','2016-01-12','5404','4980','4');
INSERT INTO `reviews` VALUES ('636755','2017-03-22','6964','6282','4');
INSERT INTO `reviews` VALUES ('648660','2017-09-23','6204','5355','5');
INSERT INTO `reviews` VALUES ('650079','2014-09-26','1296','215','5');
INSERT INTO `reviews` VALUES ('670634','2017-03-22','1468','331','0');
INSERT INTO `reviews` VALUES ('687688','2017-07-01','1296','215','3');
INSERT INTO `reviews` VALUES ('688346','2018-02-12','6964','6282','5');
INSERT INTO `reviews` VALUES ('688419','2015-11-22','9414','8148','5');
INSERT INTO `reviews` VALUES ('704291','2017-11-10','3960','3192','3');
INSERT INTO `reviews` VALUES ('707622','2017-08-16','3415','1806','2');
INSERT INTO `reviews` VALUES ('711227','2016-06-03','5713','5003','0');
INSERT INTO `reviews` VALUES ('720753','2014-09-09','2701','1389','5');
INSERT INTO `reviews` VALUES ('721518','2014-12-07','7865','7142','5');
INSERT INTO `reviews` VALUES ('723594','2016-03-30','9456','8364','3');
INSERT INTO `reviews` VALUES ('729434','2014-12-31','4384','3643','3');
INSERT INTO `reviews` VALUES ('744727','2015-07-20','2223','1174','1');
INSERT INTO `reviews` VALUES ('748865','2018-07-12','2366','1184','4');
INSERT INTO `reviews` VALUES ('750266','2017-12-29','7472','6654','0');
INSERT INTO `reviews` VALUES ('765474','2014-01-28','2223','1174','2');
INSERT INTO `reviews` VALUES ('775179','2014-04-10','5390','4955','5');
INSERT INTO `reviews` VALUES ('800366','2015-08-05','5935','5017','2');
INSERT INTO `reviews` VALUES ('801950','2016-02-13','5935','5017','4');
INSERT INTO `reviews` VALUES ('804019','2014-11-05','539','76','3');
INSERT INTO `reviews` VALUES ('810794','2015-10-18','915','181','1');
INSERT INTO `reviews` VALUES ('813725','2014-01-04','7472','6654','0');
INSERT INTO `reviews` VALUES ('837654','2018-02-23','9236','8002','4');
INSERT INTO `reviews` VALUES ('839730','2016-10-05','7976','7397','5');
INSERT INTO `reviews` VALUES ('848505','2014-03-02','7472','6654','2');
INSERT INTO `reviews` VALUES ('850135','2018-02-22','2701','1389','4');
INSERT INTO `reviews` VALUES ('855755','2018-04-30','8417','7503','2');
INSERT INTO `reviews` VALUES ('858586','2016-07-03','8661','7665','3');
INSERT INTO `reviews` VALUES ('881730','2014-02-10','8417','7503','2');
INSERT INTO `reviews` VALUES ('891230','2016-01-23','2895','1582','3');
INSERT INTO `reviews` VALUES ('917237','2016-07-25','6446','5919','0');
INSERT INTO `reviews` VALUES ('919670','2017-06-12','9033','7929','5');
INSERT INTO `reviews` VALUES ('929969','2018-08-02','2366','1184','5');
INSERT INTO `reviews` VALUES ('931439','2015-05-07','7565','6757','4');
INSERT INTO `reviews` VALUES ('935342','2017-11-05','1939','1031','3');
INSERT INTO `reviews` VALUES ('938592','2014-03-11','7864','6920','3');
INSERT INTO `reviews` VALUES ('938964','2018-03-09','7932','7237','1');
INSERT INTO `reviews` VALUES ('942694','2015-12-18','9033','7929','1');
INSERT INTO `reviews` VALUES ('943755','2016-02-12','7465','6412','2');
INSERT INTO `reviews` VALUES ('945172','2016-01-10','7565','6757','0');
INSERT INTO `reviews` VALUES ('961591','2014-04-29','7465','6412','5');
INSERT INTO `reviews` VALUES ('966012','2015-02-08','539','76','5');
INSERT INTO `reviews` VALUES ('967173','2015-09-20','5027','4101','4');
INSERT INTO `reviews` VALUES ('969017','2014-07-22','7865','7142','3');
INSERT INTO `reviews` VALUES ('978697','2014-03-11','9033','7929','5');
INSERT INTO `reviews` VALUES ('980007','2017-08-21','2701','1389','1');
INSERT INTO `reviews` VALUES ('991394','2015-05-21','9456','8364','0'); 


CREATE TABLE `archivedItems` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `qtyinstock` int(11) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);



