create database if not exists macRulesSchema;

use macRulesSchema;

drop table if exists macRulesTable;

CREATE TABLE `macRulesTable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `mac` varchar(17) NOT NULL,
  `block` int(1) DEFAULT NULL,
  `usage_limit` int(8) DEFAULT NULL,
  `stop_time` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `macRulesTable` (`id`,`mac`,`block`,`usage_limit`,`stop_time`) VALUES (1,'00:1C:B3:09:85:15',0,99999990, 55000.00);
INSERT INTO `macRulesTable` (`id`,`mac`,`block`,`usage_limit`,`stop_time`) VALUES (2,'00:1C:B3:09:85:16',0,99999991, 75000.00);
INSERT INTO `macRulesTable` (`id`,`mac`,`block`,`usage_limit`,`stop_time`) VALUES (3,'00:1C:B3:09:85:17',0,99999992, 130000.00);

INSERT INTO `macRulesTable` (`id`,`mac`,`block`,`usage_limit`,`stop_time`) VALUES (4,'00:1C:B3:09:85:18',1,99999993, 120000.00);
INSERT INTO `macRulesTable` (`id`,`mac`,`block`,`usage_limit`,`stop_time`) VALUES (5,'00:1C:B3:09:85:19',0,99999994, 60000.00);
