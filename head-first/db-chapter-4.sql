CREATE TABLE `chapter_4`.`fish_info` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `common` VARCHAR(50) NOT NULL ,  
    `species` VARCHAR(50) NOT NULL ,  
    `location` VARCHAR(50) NOT NULL ,  
    `weight` VARCHAR(50) NOT NULL ,    
    PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

INSERT INTO `fish_info` 
    (`id`, `common`, `species`, `location`, `weight`) 
    VALUES (NULL, 'bass, largemouth', 'M. salmoides', 'Montgomary lake, GA', '22 lb 4 oz'), 
    (NULL, 'walleye', 'S. vitreus', 'Old hickory lake, TN', '25 lb 0 oz'),
    (NULL, 'trout, cuttthroat', 'O. Clarki', 'Pyramid lake, NV', '41 lb 0 oz'), 
    (NULL, 'perch, yellow', 'P. Flavescens', 'Bordentown, NJ', '4 lb 3 oz'),
    (NULL, 'bluegill', 'L. Macrochirus', 'Ketona Lake, AL', '4 lb 12 oz'), 
    (NULL, 'gar, longnose', 'L. Osseus', 'Trinity River, TX', '50 lb 5 oz');

CREATE TABLE `chapter_4`.`fish_records` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `common` VARCHAR(50) NOT NULL ,  
    `species` VARCHAR(50) NOT NULL ,  
    `location` VARCHAR(50) NOT NULL ,  
    `weight` VARCHAR(50) NOT NULL ,    
    PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

INSERT INTO `fish_records` 
    (`id`, `common`, `species`, `location`, `weight`) 
    VALUES (NULL, 'bass, largemouth', 'M. salmoides', 'Montgomary lake, GA', '22 lb 4 oz'), 
    (NULL, 'walleye', 'S. vitreus', 'Old hickory lake, TN', '25 lb 0 oz'),
    (NULL, 'trout, cuttthroat', 'O. Clarki', 'Pyramid lake, NV', '41 lb 0 oz'), 
    (NULL, 'perch, yellow', 'P. Flavescens', 'Bordentown, NJ', '4 lb 3 oz'),
    (NULL, 'bluegill', 'L. Macrochirus', 'Ketona Lake, AL', '4 lb 12 oz'), 
    (NULL, 'gar, longnose', 'L. Osseus', 'Trinity River, TX', '50 lb 5 oz');
    
ALTER TABLE `fish_records`  
    ADD `first_name` VARCHAR(30) NOT NULL  AFTER `id`,  
    ADD `last_name` VARCHAR(30) NOT NULL  AFTER `first_name`;
    
ALTER TABLE `fish_records` ADD `state` VARCHAR(20) NOT NULL AFTER `location`;

UPDATE `fish_records` 
    SET `first_name` = 'Mabry', `last_name` = 'Harper', `location` = 'Old hickory lake', `state` = 'TN' 
    WHERE `fish_records`.`id` = 2; 
    UPDATE `fish_records` 
    SET `first_name` = 'John', `last_name` = 'Skimmerhorn', `location` = 'Pyramid lake', `state` = 'NV' 
    WHERE `fish_records`.`id` = 3; 
    UPDATE `fish_records` 
    SET `first_name` = 'C. C.', `last_name` = 'Abbot', `location` = 'Bordentown', `state` = 'NJ' 
    WHERE `fish_records`.`id` = 4; 
    UPDATE `fish_records` 
    SET `first_name` = 'T. S.', `last_name` = 'Hudson', `location` = 'Ketona Lake', `state` = 'AL' 
    WHERE `fish_records`.`id` = 5; 
    UPDATE `fish_records` 
    SET `first_name` = 'Townsend', `last_name` = 'Miller', `location` = 'Trinity River', `state` = 'TX' 
    WHERE `fish_records`.`id` = 6;
    UPDATE `fish_records` 
    SET `date` = '1932-06-02' 
    WHERE `fish_records`.`id` = 1; 
    UPDATE `fish_records` 
    SET `date` = '1960-08-02' 
    WHERE `fish_records`.`id` = 2; 
    UPDATE `fish_records` 
    SET `date` = '1925-12-01' 
    WHERE `fish_records`.`id` = 3; 
    UPDATE `fish_records` 
    SET `date` = '1865-05-01' 
    WHERE `fish_records`.`id` = 4; 
    UPDATE `fish_records` 
    SET `date` = '1950-04-09' 
    WHERE `fish_records`.`id` = 5; 
    UPDATE `fish_records` 
    SET `date` = '1954-07-30' 
    WHERE `fish_records`.`id` = 6; 




















