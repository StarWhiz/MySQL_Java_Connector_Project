DROP DATABASE IF EXISTS STORE;
CREATE DATABASE STORE;
USE STORE; 

DROP TABLE IF EXISTS `billofsale`;
DROP TABLE IF EXISTS `itemgraveyard`;
DROP TABLE IF EXISTS `suppliers`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `qtyinstock` int(11) DEFAULT NULL,
  `qtysold` int(11) DEFAULT NULL,
  `numofreturns` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);
INSERT INTO `items` VALUES (539, 'blanditiis', '36.30', 2, 145, 17);
INSERT INTO `items` VALUES (915, 'exercitationem', '68.21', 20, 171, 9);
INSERT INTO `items` VALUES (1296, 'harum', '66.47', 84, 35, 3);
INSERT INTO `items` VALUES (1468, 'incidunt', '58.43', 24, 59, 11);
INSERT INTO `items` VALUES (1939, 'et', '0.89', 37, 19, 17);
INSERT INTO `items` VALUES (2106, 'aspernatur', '99.22', 7, 63, 2);
INSERT INTO `items` VALUES (2223, 'corporis', '22.41', 70, 125, 10);
INSERT INTO `items` VALUES (2366, 'porro', '18.61', 52, 180, 2);
INSERT INTO `items` VALUES (2701, 'quam', '56.44', 3, 133, 12);
INSERT INTO `items` VALUES (2895, 'quam', '88.55', 17, 94, 6);
INSERT INTO `items` VALUES (3415, 'magni', '25.73', 5, 156, 20);
INSERT INTO `items` VALUES (3616, 'cupiditate', '76.91', 16, 39, 15);
INSERT INTO `items` VALUES (3691, 'laudantium', '25.89', 49, 130, 9);
INSERT INTO `items` VALUES (3960, 'nisi', '87.79', 21, 115, 12);
INSERT INTO `items` VALUES (4106, 'culpa', '72.66', 65, 194, 8);
INSERT INTO `items` VALUES (4384, 'occaecati', '76.75', 85, 106, 7);
INSERT INTO `items` VALUES (4822, 'maiores', '43.95', 91, 166, 3);
INSERT INTO `items` VALUES (5027, 'illo', '61.70', 40, 141, 10);
INSERT INTO `items` VALUES (5158, 'nihil', '69.45', 11, 200, 4);
INSERT INTO `items` VALUES (5301, 'natus', '39.62', 55, 95, 8);
INSERT INTO `items` VALUES (5380, 'et', '18.82', 0, 42, 6);
INSERT INTO `items` VALUES (5390, 'ut', '11.40', 55, 128, 20);
INSERT INTO `items` VALUES (5404, 'ipsum', '72.44', 40, 157, 0);
INSERT INTO `items` VALUES (5713, 'et', '9.25', 45, 107, 15);
INSERT INTO `items` VALUES (5935, 'aut', '54.18', 45, 74, 3);
INSERT INTO `items` VALUES (6086, 'dolore', '63.48', 76, 17, 14);
INSERT INTO `items` VALUES (6204, 'autem', '48.57', 29, 31, 13);
INSERT INTO `items` VALUES (6342, 'harum', '71.49', 62, 27, 14);
INSERT INTO `items` VALUES (6446, 'rem', '81.84', 73, 98, 3);
INSERT INTO `items` VALUES (6719, 'quidem', '39.06', 90, 24, 12);
INSERT INTO `items` VALUES (6964, 'ducimus', '89.13', 57, 113, 11);
INSERT INTO `items` VALUES (7465, 'vitae', '99.49', 99, 150, 13);
INSERT INTO `items` VALUES (7472, 'minus', '89.07', 49, 196, 16);
INSERT INTO `items` VALUES (7565, 'veniam', '97.93', 59, 129, 0);
INSERT INTO `items` VALUES (7819, 'qui', '62.50', 5, 5, 3);
INSERT INTO `items` VALUES (7864, 'a', '81.17', 45, 52, 16);
INSERT INTO `items` VALUES (7865, 'eos', '64.80', 72, 146, 18);
INSERT INTO `items` VALUES (7932, 'quaerat', '74.67', 46, 62, 19);
INSERT INTO `items` VALUES (7976, 'ex', '93.76', 93, 56, 13);
INSERT INTO `items` VALUES (8073, 'atque', '79.56', 74, 154, 12);
INSERT INTO `items` VALUES (8417, 'et', '68.43', 71, 61, 13);
INSERT INTO `items` VALUES (8607, 'aut', '51.14', 55, 27, 7);
INSERT INTO `items` VALUES (8661, 'modi', '46.58', 83, 20, 1);
INSERT INTO `items` VALUES (9033, 'optio', '10.45', 14, 187, 17);
INSERT INTO `items` VALUES (9236, 'quae', '53.24', 87, 124, 16);
INSERT INTO `items` VALUES (9414, 'aut', '95.81', 17, 145, 11);
INSERT INTO `items` VALUES (9456, 'sit', '29.11', 41, 104, 11);
INSERT INTO `items` VALUES (9576, 'praesentium', '99.41', 91, 128, 18);
INSERT INTO `items` VALUES (9628, 'in', '96.28', 84, 9, 4);
INSERT INTO `items` VALUES (9864, 'voluptas', '80.45', 31, 14, 0);



CREATE TABLE `customers` (
  `customername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customerid` int(11) NOT NULL,
  `initialpurchasedate` date DEFAULT NULL,
  `numberofreturns` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
);

INSERT INTO `customers` VALUES ('Alysha Wisozk', 76, '2000-11-17', 5);
INSERT INTO `customers` VALUES ('Ezra Emmerich III', 181, '2004-07-08', 5);
INSERT INTO `customers` VALUES ('Prof. Darian Paucek DDS', 215, '2011-11-06', 5);
INSERT INTO `customers` VALUES ('Prof. Lilliana Schroeder I', 331, '1987-08-25', 2);
INSERT INTO `customers` VALUES ('Ali Hoeger', 1031, '1975-07-09', 5);
INSERT INTO `customers` VALUES ('Dr. Salvador Kshlerin', 1078, '2013-06-08', 8);
INSERT INTO `customers` VALUES ('Dr. Reece West', 1174, '1991-11-12', 4);
INSERT INTO `customers` VALUES ('Andres Boyer', 1184, '2000-09-20', 7);
INSERT INTO `customers` VALUES ('Miss Brenna Hyatt MD', 1389, '2003-06-19', 8);
INSERT INTO `customers` VALUES ('Odell Schulist', 1582, '1987-04-03', 6);
INSERT INTO `customers` VALUES ('Christop Reichel PhD', 1806, '1993-07-27', 2);
INSERT INTO `customers` VALUES ('Providenci Hayes', 2030, '1988-04-22', 7);
INSERT INTO `customers` VALUES ('Magali Reichel', 2060, '1984-12-22', 3);
INSERT INTO `customers` VALUES ('Addie Stehr', 3192, '2008-05-11', 9);
INSERT INTO `customers` VALUES ('Antoinette Powlowski', 3253, '2012-07-26', 5);
INSERT INTO `customers` VALUES ('Uriel King', 3643, '2006-03-19', 2);
INSERT INTO `customers` VALUES ('Dr. Devyn Cormier', 3658, '2001-08-03', 6);
INSERT INTO `customers` VALUES ('Anne Cummings III', 4101, '2011-06-16', 4);
INSERT INTO `customers` VALUES ('Federico Wintheiser', 4437, '1996-08-16', 9);
INSERT INTO `customers` VALUES ('Miss Kara Nikolaus III', 4549, '1993-06-19', 4);
INSERT INTO `customers` VALUES ('Lora Monahan', 4746, '2010-10-07', 8);
INSERT INTO `customers` VALUES ('Ebony Hayes', 4955, '2009-01-24', 5);
INSERT INTO `customers` VALUES ('Walker Bartoletti', 4980, '2014-06-26', 4);
INSERT INTO `customers` VALUES ('Mohammad Mosciski', 5003, '1973-11-03', 5);
INSERT INTO `customers` VALUES ('Prof. Alek Kris', 5017, '2008-03-28', 2);
INSERT INTO `customers` VALUES ('Donnie Johnston', 5261, '1989-09-24', 8);
INSERT INTO `customers` VALUES ('Aric Deckow PhD', 5355, '1986-07-29', 7);
INSERT INTO `customers` VALUES ('Keith Kutch Jr.', 5422, '1993-08-30', 6);
INSERT INTO `customers` VALUES ('Jimmy Ritchie', 5919, '2008-07-08', 8);
INSERT INTO `customers` VALUES ('Amani Leannon', 6201, '2009-07-10', 3);
INSERT INTO `customers` VALUES ('Santa Haag', 6282, '1982-07-11', 8);
INSERT INTO `customers` VALUES ('Marisol Moen', 6412, '1970-05-24', 4);
INSERT INTO `customers` VALUES ('Pink Hahn Sr.', 6654, '1984-04-18', 8);
INSERT INTO `customers` VALUES ('Tyrique Herzog Jr.', 6757, '1981-07-21', 8);
INSERT INTO `customers` VALUES ('Ms. Allene O\'Connell MD', 6843, '2016-05-01', 7);
INSERT INTO `customers` VALUES ('Prof. Angelica Boyle V', 6920, '1989-04-21', 8);
INSERT INTO `customers` VALUES ('Destini Krajcik', 7142, '1980-01-25', 7);
INSERT INTO `customers` VALUES ('Kelley Brakus', 7237, '1975-11-15', 2);
INSERT INTO `customers` VALUES ('Prof. Leanne Senger', 7397, '2014-11-19', 7);
INSERT INTO `customers` VALUES ('Pink Jacobs III', 7484, '2000-09-11', 2);
INSERT INTO `customers` VALUES ('Ms. Dejah O\'Conner DDS', 7503, '2012-06-05', 6);
INSERT INTO `customers` VALUES ('Mrs. Tomasa Schuster', 7523, '2013-03-10', 6);
INSERT INTO `customers` VALUES ('Leonel Kutch', 7665, '1972-10-23', 4);
INSERT INTO `customers` VALUES ('Josephine Runolfsson', 7929, '1986-11-01', 2);
INSERT INTO `customers` VALUES ('Amy Veum', 8002, '1983-07-04', 9);
INSERT INTO `customers` VALUES ('Mr. Reed Streich', 8148, '1982-09-07', 8);
INSERT INTO `customers` VALUES ('Enrico Goldner', 8364, '1972-09-22', 3);
INSERT INTO `customers` VALUES ('Jannie Jacobson', 8644, '2015-04-27', 4);
INSERT INTO `customers` VALUES ('Telly Herman', 9137, '2012-02-04', 5);
INSERT INTO `customers` VALUES ('Robbie Bartell', 9813, '2016-12-26', 4);




CREATE TABLE `billofsale` (
  `transactionid` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `itemprice` float(10,2) DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionid`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`),
  FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
);


INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (16879, 5390, 3, '61.70', '1988-01-28', 4955);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (20152, 7932, 6, '81.17', '1970-06-08', 7237);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (33331, 2106, 2, '18.82', '2015-07-12', 1078);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (76740, 5935, 8, '64.80', '1984-11-14', 5017);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (115730, 539, 4, '0.89', '1999-07-20', 76);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (128874, 1296, 2, '10.45', '1983-11-28', 215);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (137112, 3691, 5, '39.62', '1994-03-06', 2060);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (166883, 3415, 8, '36.30', '2000-07-21', 1806);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (182740, 5404, 10, '62.50', '2001-03-27', 4980);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (225837, 5158, 8, '54.18', '2018-07-19', 4437);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (230878, 2223, 2, '22.41', '2015-05-21', 1174);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (233630, 5380, 6, '58.43', '1989-10-25', 4746);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (274630, 9576, 9, '99.22', '1974-06-11', 8644);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (281758, 4384, 5, '48.57', '2007-02-27', 3643);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (284170, 5027, 8, '53.24', '1993-07-22', 4101);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (292023, 6446, 7, '69.45', '2014-01-20', 5919);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (345198, 2701, 2, '25.89', '2000-11-30', 1389);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (357220, 3616, 3, '39.06', '1987-04-02', 2030);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (362444, 8661, 6, '89.13', '1973-05-01', 7665);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (393859, 8417, 8, '88.55', '1982-01-09', 7503);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (412744, 9456, 6, '97.93', '1977-01-31', 8364);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (413906, 7472, 3, '74.67', '1982-10-24', 6654);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (435750, 4106, 2, '46.58', '2016-04-20', 3253);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (440233, 5713, 1, '63.48', '2004-07-04', 5003);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (446187, 915, 1, '9.25', '1983-07-12', 181);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (452610, 6719, 1, '71.49', '2005-01-24', 6201);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (501762, 7565, 4, '76.75', '2008-11-29', 6757);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (522831, 7819, 1, '76.91', '2007-08-30', 6843);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (533183, 6342, 4, '68.43', '1998-04-23', 5422);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (565569, 5301, 6, '56.44', '1987-07-18', 4549);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (580471, 1468, 4, '11.40', '1986-02-21', 331);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (627123, 7976, 7, '81.84', '1981-01-07', 7397);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (645488, 1939, 9, '18.61', '1989-09-26', 1031);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (653743, 8607, 6, '89.07', '2011-09-22', 7523);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (706552, 9236, 10, '95.81', '1970-05-30', 8002);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (708492, 4822, 1, '51.14', '2003-03-23', 3658);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (709133, 2366, 8, '25.73', '1992-09-20', 1184);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (713820, 9033, 3, '93.76', '1975-05-22', 7929);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (723253, 9864, 8, '99.49', '1985-05-22', 9813);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (734891, 3960, 1, '43.95', '2008-02-13', 3192);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (737653, 8073, 10, '87.79', '1972-02-04', 7484);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (741251, 7864, 1, '79.56', '1978-01-13', 6920);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (749910, 7465, 1, '72.66', '1984-12-27', 6412);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (764623, 6964, 1, '72.44', '2015-01-04', 6282);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (777199, 7865, 2, '80.45', '1973-03-03', 7142);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (799326, 2895, 10, '29.11', '1976-05-28', 1582);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (808085, 9414, 4, '96.28', '1997-11-23', 8148);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (909611, 6086, 5, '66.47', '1982-05-26', 5261);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (938343, 6204, 5, '68.21', '1996-03-05', 5355);
INSERT INTO `billofsale` (`transactionid`, `itemid`, `qtyordered`, `itemprice`, `purchasedate`, `customerid`) VALUES (972536, 9628, 4, '99.41', '1998-02-23', 9137);



CREATE TABLE `itemgraveyard` (
  `itemid` int(11) NOT NULL,
  `qtymissing` int(11) DEFAULT NULL,
  `datemissing` date DEFAULT NULL,
  PRIMARY KEY (`itemid`)
);

INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (539, 5, '1993-11-17');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (915, 3, '2005-05-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1296, 1, '1985-11-24');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1468, 0, '1991-02-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (1939, 4, '1999-08-13');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2106, 6, '1993-08-23');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2223, 1, '1977-09-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2366, 7, '1984-12-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2701, 5, '1972-09-30');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (2895, 4, '2003-06-24');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3415, 9, '2015-03-07');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3616, 3, '1975-02-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3691, 7, '1995-10-18');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (3960, 4, '2012-01-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4106, 1, '1994-02-19');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4384, 2, '2007-02-10');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (4822, 8, '2016-12-29');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5027, 6, '1984-05-07');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5158, 0, '1984-03-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5301, 1, '1993-10-13');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5380, 9, '2008-10-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5390, 4, '2008-10-21');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5404, 8, '2007-09-03');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5713, 7, '2016-03-30');
INSERT INTO `itemgraveyard` (`itemid`, `qtymissing`, `datemissing`) VALUES (5935, 0, '1977-01-27');



CREATE TABLE `suppliers` (
  `supplierid` int(11) NOT NULL,
  `suppliername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemcost` float(10,2) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `qtyordered` int(11) DEFAULT NULL,
  `dateordered` date NOT NULL,
  PRIMARY KEY (`supplierid`,`dateordered`),
  FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`)
);

INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (212, ' Macy\'s', '61.89', 1468, 23, '1991-12-05');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (455, ' Macy\'s', '82.74', 7864, 87, '1981-04-11');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1079, ' Lowes', '66.51', 6342, 91, '2013-05-07');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1108, ' Walmart', '94.58', 5027, 142, '1987-02-27');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1158, ' Target', '90.52', 9864, 117, '2015-07-12');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1263, 'Home Depot', '64.65', 7932, 145, '1996-05-24');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1421, ' Target', '93.06', 5301, 17, '1974-03-30');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1644, ' Walmart', '55.19', 9456, 12, '1987-05-21');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1806, ' Fry\'s Electronics', '46.24', 3415, 15, '2017-07-20');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1853, ' Walmart', '9.09', 915, 84, '1977-07-10');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (1869, ' Macy\'s', '58.63', 8417, 62, '1981-02-16');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (2236, ' SJSU', '68.43', 2366, 133, '1971-04-25');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (2247, ' Safeway', '35.89', 7865, 179, '1987-04-28');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (2335, 'Home Depot', '86.55', 7976, 138, '2003-07-20');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (2626, ' Macy\'s', '93.94', 4384, 75, '1985-08-02');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (3221, ' SJSU', '45.33', 9414, 107, '1991-01-02');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (3585, ' Safeway', '70.99', 5935, 83, '2017-11-02');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (3643, ' SJSU', '22.19', 6086, 28, '2002-11-30');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (3839, ' Lowes', '4.51', 5380, 151, '1988-03-22');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (3972, ' Fry\'s Electronics', '38.55', 2701, 89, '1996-07-08');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (4061, ' SJSU', '63.36', 6204, 19, '1991-09-27');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (4438, ' Safeway', '35.80', 3960, 185, '1997-09-26');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (4552, 'Home Depot', '0.81', 2106, 151, '2004-07-03');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (4852, ' Target', '14.33', 3616, 32, '1975-05-26');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5332, ' Lowes', '60.31', 1296, 50, '2000-05-08');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5398, ' Walmart', '18.86', 2895, 40, '1993-12-27');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5442, ' Fry\'s Electronics', '9.98', 7465, 16, '1984-06-29');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5470, ' Safeway', '87.36', 5158, 126, '2010-03-16');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5500, ' Fry\'s Electronics', '17.16', 539, 96, '1980-10-18');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5846, ' Safeway', '99.93', 9576, 76, '1993-10-26');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (5854, ' Macy\'s', '45.19', 7472, 192, '1989-11-24');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6314, ' Target', '94.45', 7819, 128, '2014-06-06');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6391, ' Fry\'s Electronics', '95.97', 2223, 176, '2001-04-29');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6737, ' Safeway', '61.38', 9033, 108, '2018-04-26');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6800, ' Safeway', '0.38', 4106, 137, '2003-02-15');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6802, ' Lowes', '52.43', 9236, 12, '1970-02-06');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (6937, ' Macy\'s', '89.02', 8607, 158, '1973-08-17');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7142, ' Fry\'s Electronics', '43.66', 8073, 16, '2009-09-05');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7149, ' Safeway', '98.88', 8661, 137, '1987-10-10');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7541, ' Safeway', '92.34', 6719, 125, '1978-04-18');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7587, ' Walmart', '47.30', 9628, 43, '2017-01-01');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7665, ' Macy\'s', '40.16', 5390, 60, '1989-03-23');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7749, ' Lowes', '47.83', 7565, 174, '1994-08-07');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7808, ' SJSU', '34.80', 3691, 187, '2010-08-19');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (7817, ' Macy\'s', '18.24', 6964, 35, '1992-08-04');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (8086, ' Fry\'s Electronics', '76.49', 6446, 84, '2004-03-03');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (8831, ' Fry\'s Electronics', '56.54', 5404, 96, '2018-01-16');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (8955, ' Walmart', '14.35', 4822, 33, '1978-07-24');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (9278, ' Lowes', '97.08', 5713, 124, '2004-12-07');
INSERT INTO `suppliers` (`supplierid`, `suppliername`, `itemcost`, `itemid`, `qtyordered`, `dateordered`) VALUES (9936, ' Walmart', '35.35', 1939, 33, '2002-05-24');



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

INSERT INTO `reviews` VALUES ('24186','1970-03-31','5301','4549','2'),
('71546','1998-01-03','2366','1184','1'),
('81747','1970-08-27','6086','5261','2'),
('87350','2006-04-01','2701','1389','4'),
('108702','2010-08-18','7864','6920','2'),
('113500','1978-10-18','7472','6654','2'),
('122886','1995-10-07','5935','5017','2'),
('131333','1984-07-07','5390','4955','3'),
('146485','1980-08-11','3616','2030','3'),
('156185','2000-05-12','1296','215','3'),
('214304','2002-08-28','7819','6843','4'),
('231831','2008-11-17','7465','6412','3'),
('265772','2003-10-20','7565','6757','1'),
('287597','2015-05-25','539','76','4'),
('319697','2011-06-24','5404','4980','2'),
('332137','1986-01-21','9628','9137','1'),
('342617','1973-03-20','915','181','4'),
('360735','1981-08-16','9236','8002','2'),
('386478','1979-04-08','8661','7665','4'),
('396015','1980-11-25','4384','3643','4'),
('448209','2008-08-05','7932','7237','3'),
('455654','1977-09-10','9414','8148','1'),
('467562','1980-09-15','9456','8364','4'),
('549289','2003-05-31','3960','3192','5'),
('551453','1994-01-02','5027','4101','3'),
('556007','2014-11-17','6204','5355','5'),
('559330','2014-03-28','8417','7503','5'),
('570366','1989-08-19','5380','4746','1'),
('589417','1990-03-11','9864','9813','3'),
('610726','1996-11-25','5158','4437','3'),
('615611','2013-08-23','6719','6201','1'),
('632099','2004-04-04','1468','331','4'),
('644136','2006-11-25','3415','1806','4'),
('647163','1976-01-01','4106','3253','2'),
('689849','1988-11-09','6446','5919','5'),
('731086','2011-02-14','2223','1174','3'),
('741193','1999-08-27','1939','1031','3'),
('761301','2001-07-05','8073','7484','4'),
('775689','1981-07-01','7865','7142','5'),
('777066','2005-06-06','4822','3658','4'),
('782232','2018-01-23','3691','2060','3'),
('798370','1993-02-06','5713','5003','3'),
('811396','1998-03-15','6342','5422','3'),
('856339','2007-12-05','2895','1582','2'),
('890312','1997-07-05','6964','6282','5'),
('923632','2018-01-31','8607','7523','4'),
('924712','1993-08-14','2106','1078','1'),
('943780','1971-03-04','9033','7929','1'),
('962210','1978-05-07','7976','7397','1'),
('984528','1993-03-24','9576','8644','4'); 





