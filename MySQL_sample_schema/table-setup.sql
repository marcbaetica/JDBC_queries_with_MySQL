create database if not exists macRulesSchema;

use macRulesSchema;

drop table if exists macRulesTable;

CREATE TABLE `macRulesTable` (
  `mac` varchar(17) NOT NULL,
  `block` int(1) DEFAULT NULL,
  `user_total` int(4) DEFAULT NULL,
  `total_all` int(8) DEFAULT NULL,
  `start_time` decimal(10,2) DEFAULT NULL,
  `stop_time` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `macRulesTable` (`mac`,`block`,`user_total`,`total_all`, `start_time`, `stop_time`) VALUES ('00:1C:B3:09:85:15',0,1230,99999990, 55000.00, 55000.00);
INSERT INTO `macRulesTable` (`mac`,`block`,`user_total`,`total_all`, `start_time`, `stop_time`) VALUES ('00:1C:B3:09:85:16',0,1231,99999991, 55000.00, 75000.00);
INSERT INTO `macRulesTable` (`mac`,`block`,`user_total`,`total_all`, `start_time`, `stop_time`) VALUES ('00:1C:B3:09:85:17',0,1232,99999992, 55000.00, 130000.00);

INSERT INTO `macRulesTable` (`mac`,`block`,`user_total`,`total_all`, `start_time`, `stop_time`) VALUES ('00:1C:B3:09:85:18',1,1233,99999993, 55000.00, 120000.00);
INSERT INTO `macRulesTable` (`mac`,`block`,`user_total`,`total_all`, `start_time`, `stop_time`) VALUES ('00:1C:B3:09:85:19',0,1234,99999994, 55000.00, 60000.00);