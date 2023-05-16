-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema alpenarestaurantdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `alpenarestaurantdb` ;

-- -----------------------------------------------------
-- Schema alpenarestaurantdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `alpenarestaurantdb` DEFAULT CHARACTER SET utf8 ;
USE `alpenarestaurantdb` ;

-- -----------------------------------------------------
-- Table `restaurant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurant` ;

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `street` VARCHAR(100) NULL,
  `cuisine` VARCHAR(45) NULL,
  `website_url` VARCHAR(2000) NULL,
  `phone` VARCHAR(15) NULL,
  `happy_hour` TINYINT NULL,
  `rating` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'user'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `restaurant`
-- -----------------------------------------------------
START TRANSACTION;
USE `alpenarestaurantdb`;
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (1, 'Pompeyos Mexican Grill', '1120 S State Ave', 'Mexican', 'https://www.facebook.com/people/Pompeyos-Mexican-grill/100063639037783/', '9893402036', 0, 4.5);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (2, 'John Boy\'s Restaurant', '817 W Chisholm St', 'Family-friendly', 'http://johnboysgoodeats.com/', '9893560481', 0, 4.2);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (3, 'Fresh Palate', '109 N 2nd Ave', 'American', 'https://www.freshpalate.us/', '9893581400', 1, 4.5);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (4, 'Mango\'s Tequila Bar', '121 W Chisholm St', 'Mexican', 'https://www.facebook.com/people/Mangos-Tequila-Bar/100063563740928/', '9893401232', 0, 4.6);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (5, 'Twin Acres-19th Hole', '1081 US-23', 'American', 'https://www.twinacres19thhole.com/', '9893563712', 0, 4.4);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (6, 'Austin Brothers Beer Co.', '821 W Miller St', 'Brewpub', 'https://www.austinbrosbeerco.com/', '9893569000', 0, 4.7);
INSERT INTO `restaurant` (`id`, `name`, `street`, `cuisine`, `website_url`, `phone`, `happy_hour`, `rating`) VALUES (7, 'Red Brick Tap and Barrel', '109 River St', 'American', 'https://www.redbricktap.com/', '9893402175', 0, 4.7);

COMMIT;

