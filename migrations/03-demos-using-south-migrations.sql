--
-- Initial SQL migration to enable South migrations for demos app
--

DROP TABLE IF EXISTS `south_migrationhistory`;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL auto_increment,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `south_migrationhistory` VALUES (1,'demos','0001_initial','2011-05-23 19:32:05');
