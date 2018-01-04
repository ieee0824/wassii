CREATE DATABASE cgi CHARACTER SET utf8mb4;

CREATE TABLE `cgi`.`header` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` text,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cgi`.`hello_world` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `cgi`.`header` (`id`, `type`, `body`)
VALUES
	(1, 'blank', '\n'),
	(2, 'html', 'Content-Type: text/html; charset=UTF-8\n');

INSERT INTO `cgi`.`hello_world` (`id`, `html`)
VALUES
	(1, '<h1>It works!<h1>');

