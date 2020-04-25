CREATE DATABASE IF NOT EXISTS `ckf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ckf`;

-- Copiando estrutura para tabela ckf.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `charid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `characterName` varchar(50) NOT NULL,
  `age` int(11) unsigned DEFAULT 0,
  `level` int(11) DEFAULT 1,
  `xp` int(11) DEFAULT 0,
  `groups` text NOT NULL DEFAULT '{}',
  `charTable` text NOT NULL DEFAULT '{}',
  `skin` text NOT NULL DEFAULT '{}',
  `clothes` text DEFAULT '{}',
  `weapons` text NOT NULL DEFAULT '{}',
  `is_dead` int(11) DEFAULT 0,
  PRIMARY KEY (`charid`),
  KEY `FK_characters_users` (`user_id`),
  CONSTRAINT `FK_characters_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela ckf.chests
CREATE TABLE IF NOT EXISTS `chests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) DEFAULT NULL,
  `position` text NOT NULL DEFAULT '{}[]',
  `type` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chests_characters` (`charid`),
  CONSTRAINT `FK_chests_characters` FOREIGN KEY (`charid`) REFERENCES `characters` (`charid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure ckf.getData
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `getData`(
	IN `typeData` VARCHAR(10),
	IN `id` INT(8),
	IN `chave` TEXT
)
BEGIN
	IF (chave = 'all' && typeData = 'clothes') THEN
		SELECT clothes as Value FROM characters WHERE charid = id;
	ELSEIF (chave = 'all' && typeData = 'groups') THEN
		SELECT groups as Value FROM characters WHERE charid = id;
	ELSEIF (chave = 'all' && typeData = 'charTable') THEN
		SELECT charTable as Value FROM characters WHERE charid = id;
	ELSEIF (chave = 'all' && typeData = 'skin') THEN
		SELECT skin as Value FROM characters WHERE charid = id;
	END IF;
	
	IF (typeData = 'groups') THEN
		SELECT json_extract(groups, CONCAT("$.", chave)) as Value FROM characters WHERE charid = id;
	ELSEIF (typeData = 'clothes') THEN
		SELECT json_extract(clothes, CONCAT("$.", chave)) as Value FROM characters WHERE charid = id;
	ELSEIF (typeData = 'charTable') THEN
		SELECT json_extract(charTable, CONCAT("$.", chave)) as Value FROM characters WHERE charid = id;
	ELSEIF (typeData = 'skin') THEN
		SELECT json_extract(skin, CONCAT("$.", chave)) as Value FROM characters WHERE charid = id;
	END IF;
END//
DELIMITER ;

-- Copiando estrutura para procedure ckf.inventories
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inventories`(
	IN `iid` VARCHAR(20),
	IN `charid` INT(8),
	IN `itemName` VARCHAR(100),
	IN `itemCount` INT(8),
	IN `typeInv` VARCHAR(8)
)
BEGIN
    IF (typeInv = "update") THEN
        UPDATE inventories SET items = JSON_SET(items, CONCAT("$.", itemName), itemCount) WHERE id = iid;
    ELSEIF (typeInv = "remove") THEN
        UPDATE inventories SET items = JSON_REMOVE(items, CONCAT("$.", itemName)) WHERE id = iid;
    ELSEIF (typeInv = "select") THEN
        SELECT * from inventories WHERE id = iid;
    ELSEIF (typeInv = "insert") THEN
        INSERT INTO inventories(id, charid, capacity, items) VALUES (iid, charid, 20, "{}");
    ELSEIF (typeInv = "deadPlayer") THEN
        UPDATE inventories SET items = '{}' WHERE id = iid and charid = charid;
    END IF;
END//
DELIMITER ;

-- Copiando estrutura para tabela ckf.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` varchar(100) NOT NULL,
  `charid` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `items` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_inventoriers_characters` (`charid`),
  CONSTRAINT `FK_inventories_characters` FOREIGN KEY (`charid`) REFERENCES `characters` (`charid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela ckf.posses
CREATE TABLE IF NOT EXISTS `posses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL,
  `members` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `charid` (`charid`),
  CONSTRAINT `FK_posses_characters` FOREIGN KEY (`charid`) REFERENCES `characters` (`charid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure ckf.remData
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `remData`(
	IN `typeData` VARCHAR(20),
	IN `chave` TEXT,
	IN `id` INT(8)


)
BEGIN
	IF (typeData = 'groups') THEN
		UPDATE characters SET groups = JSON_REMOVE(groups, CONCAT("$.", chave)) WHERE charid = id;
	ELSEIF (typeData = 'clothes') THEN
		UPDATE characters SET clothes = JSON_REMOVE(clothes, CONCAT("$.", chave)) WHERE charid = id;
	ELSEIF (typeData = 'charTable') THEN
		UPDATE characters SET charTable = JSON_REMOVE(charTable, CONCAT("$.", chave)) WHERE charid = id;
	ELSEIF (typeData = 'skin') THEN
		UPDATE characters SET skin = JSON_REMOVE(skin, CONCAT("$.", chave)) WHERE charid = id;
	END IF;
END//
DELIMITER ;

-- Copiando estrutura para procedure ckf.setData
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `setData`(
	IN `typeData` VARCHAR(20),
	IN `chave` VARCHAR(50),
	IN `valorChave` TEXT,
	IN `id` INT(8)


)
BEGIN
	-- THIS IS A GROUPS - IF IS A ADMIN, USER, MECHANIC ETC...
	IF (typeData = 'groups') THEN
		UPDATE characters SET groups = JSON_SET(groups, CONCAT("$.", chave), valorChave) WHERE charid = id;
	-- THIS IS A CHAR TABLE [ POSITION / HUNGER / THIRST / ETC... ]
	ELSEIF (typeData = 'charTable') THEN
		UPDATE characters SET charTable = JSON_SET(charTable, CONCAT("$.", chave), valorChave) WHERE charid = id;
	-- THIS IS A PLAYER SKIN - FACE FEATURES, HEAD BLEND ETC..
	ELSEIF (typeData = 'skin') THEN
		UPDATE characters SET skin = JSON_SET(skin, CONCAT("$.", chave), valorChave) WHERE charid = id;
	-- THIS IS A CLOTHES SITUATION
	ELSEIF (typeData = 'clothes') THEN
		UPDATE characters SET clothes = JSON_SET(clothes, CONCAT("$.", chave), valorChave) WHERE charid = id;
	ELSEIF (chave = 'ALL' and typeData = 'saveClothes') THEN
		UPDATE characters SET clothes = valorChave WHERE charid = id;
	END IF;
END//
DELIMITER ;

-- Copiando estrutura para tabela CKF.users
CREATE TABLE `users` (
	`user_id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(21) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`banned` INT(11) NOT NULL DEFAULT 0,
	PRIMARY KEY (`user_id`),
	INDEX `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- Exportação de dados foi desmarcado.