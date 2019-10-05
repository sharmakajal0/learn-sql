CREATE TABLE `chapter_3`.`clown_info` (
       `id` INT NOT NULL AUTO_INCREMENT ,  
       `name` VARCHAR(20) NOT NULL ,  
       `last_seen` VARCHAR(50) NOT NULL ,  
       `appearance` TEXT NOT NULL ,  
       `activities` VARCHAR(50) NOT NULL ,    
       PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

INSERT INTO `clown_info` 
    (`id`, `name`, `last_seen`, `appearance`, `activities`) 
    VALUES (NULL, 'Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car'), 
    (NULL, 'Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet', 'mime'),
    (NULL, 'Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy red pants', 'umbrella'), 
    (NULL, 'Mr. Habo', 'BG Circus', 'M, cigar, black hair, tiny hat', 'violin'),
    (NULL, 'Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'yelling, dancing'), 
    (NULL, 'Scooter', 'Oakland Hospital', 'M, blue hair, red suit, huge nose', 'balloons'),
    (NULL, 'Zippo', 'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'), 
    (NULL, 'Babe', 'Earl\'s Autos', 'F, all pink and sparkly', 'balancing, little car'),
    (NULL, 'Bonzo', '', 'M, in drag, polka dotted dress', 'singing, dancing'), 
    (NULL, 'Sniffles', 'Tracy\'s', 'M, green and purple suit, pointy nose', '');
