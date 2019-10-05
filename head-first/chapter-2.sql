CREATE TABLE `easy_drinks`.`easy_drinks` ( `drink_name` VARCHAR(20) NOT NULL , `main` VARCHAR(20) NOT NULL , `amount1` DECIMAL NOT NULL , `second` VARCHAR(20) NOT NULL , `amount2` DECIMAL NOT NULL , `directions` VARCHAR(50) NOT NULL , `id` INT NOT NULL AUTO_INCREMENT , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `easy_drinks`.`easy_drinks` (
    `drink_name` VARCHAR(20) NOT NULL , 
    `main` VARCHAR(20) NOT NULL ,
    `amount1` DECIMAL NOT NULL , 
    `second` VARCHAR(20) NOT NULL , 
    `amount2` DECIMAL NOT NULL , 
    `directions` VARCHAR(50) NOT NULL , 
    `id` INT NOT NULL AUTO_INCREMENT , 
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;  

INSERT INTO `easy_drinks`
    (`drink_name`, `main`, `amount1`, `second`, `amount2`, `directions`, `id`)
    VALUES ('Blackthorn', 'tonic water', '1.5', 'pineapple juice', '1', 'stir with ice, strain into cocktail glass with lemon twist', NULL),
    ('Blue Moon', 'soda', '1.5', 'blueberry juice', '.75', 'stir with ice, strain into cocktail glass with lemon twist', NULL),
    ('Oh my Gosh', 'peach nectar', '1', 'pineapple juice', '1', 'stir with ice, strain into shot glass', NULL),
    ('Lime Fizz', 'Sprite', '1.5', 'lime juice', '.75', 'stir with ice, strain into cocktail glass', NULL), 
    ('Kiss on the lips', 'cherry juice', '2', 'apricot nectar', '7', 'serve over ice with straw', NULL),
    ('Hot Gold', 'peach nectar', '3', 'orange juice', '6', 'pour hot orange juice in mug and add peach nectar', NULL), 
    ('Lone Tree', 'soda', '1.5', 'cherry juice', '.75', 'stir with ice, strain into cocktail glass', NULL),
    ('Greyhound', 'soda', '1.5', 'grapefruit juice', '5', 'serve over ice, stir well', NULL), 
    ('Indian Summer', 'apple juice', '2', 'hot tea', '6', 'add juice to mug and top off with hot tea', NULL),
    ('Bull Frog', 'iced tea', '1.5', 'lemonade', '5', 'serve over ice with lime slice', NULL), 
    ('Soda and It', 'soda', '2', 'grape juice', '1', 'shake in cocktail glass, no ice', NULL);

CREATE TABLE `easy_drinks`.`doughnut_ratings` ( 
    `id` INT(20) NOT NULL AUTO_INCREMENT, 
    `location` VARCHAR(50) NOT NULL , 
    `time` TIME NOT NULL , 
    `date` DATE NOT NULL , 
    `type` VARCHAR(50) NOT NULL , 
    `rating` SET('1','2','3','4','5','6','7','8','9','10') NOT NULL , 
    `comments` TEXT NOT NULL , 
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `doughnut_ratings` 
    (`id`, `location`, `time`, `date`, `type`, `rating`, `comments`) 
    VALUES (NULL, 'Starbuzz Coffee', '07:43:00', '2019-04-23', 'cinnamon glazed', '6', 'too much spice'), 
    	(NULL, 'Duncan\'s Donuts', '08:46:00', '2019-08-25', 'plain glazed', '5', 'greasy'),
    	(NULL, 'Duncan\'s Donuts', '7:58', '2019-04-26', 'jelly', '6', 'stale but tasty'),
    	(NULL, 'Starbuzz Coffee', '10:35', '2019-04-24', 'plain glazed', '7', 'warm, but not hot'), 
    	(NULL, 'Krispy King', '9:39', '2019-09-26', 'jelly', '6', 'not enough jelly'),
    	(NULL, 'Starbuzz Coffee', '7:48', '2019-04-23', 'rocky road ', '10', 'marshmallows!'), 
    	(NULL, 'Krispy King', '8:56', '2019-11-25', 'plain glazed', '8', 'maple syrup glaze');
    	
CREATE TABLE `easy_drinks`.`my_contacts` ( 
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `last_name` VARCHAR(50) NOT NULL ,  
    `first_name` VARCHAR(50) NOT NULL ,  
    `email` VARCHAR(50) NOT NULL ,  
    `gender` VARCHAR(20) NOT NULL ,  
    `location` VARCHAR(50) NOT NULL ,    
    PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

INSERT INTO `my_contacts` 
    (`id`, `last_name`, `first_name`, `email`, `gender`, `location`) 
    VALUES (NULL, 'Anderson', 'Jillion', 'jill_anderson@breakneckpizza.com', 'F', 'Palo Alto, CA'), 
    (NULL, 'Joffe', 'Kevin', 'joffe@simuduck.com', 'M', 'San Jose, CA'),
    (NULL, 'Newsome', 'Amanda', 'aman2luv@breakneckpizza.com', 'F', 'San Fran, CA'),
    (NULL, 'Garcia', 'Ed', 'ed99@b0tt0msup.com', 'M', 'San Mateo, CA'), 
    (NULL, 'Roundtree', 'Jo-Ann', 'jojoround@breakneckpizza.com', 'F', 'San Fran, CA'),
    (NULL, 'Briggs', 'Chris', 'cbriggs@boards-r-us.com', 'M', 'Austin, TX'), 
    (NULL, 'Harte', 'Lloyd', 'hovercraft@breakneckpizza.com', 'M', 'San Jose, CA'),
    (NULL, 'Toth', 'Anne', 'Anne_Toth@leapinlimos.com', 'F', 'San Fran, CA'), 
    (NULL, 'Wiley', 'Andrew', 'wileyandrew@objectville.net', 'M', 'NYC, NY'),
    (NULL, 'Palumbo', 'Tom', 'palofmine@mightygumball.net', 'M', 'Princeton, NJ'), 
    (NULL, 'Ryan', 'Alanna', 'angrypirate@breakneckpizza.com', 'F', 'San Fran, CA');

CREATE TABLE `easy_drinks`.`drink_info` ( 
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `drink_name` VARCHAR(30) NOT NULL ,  
    `cost` FLOAT NOT NULL ,  
    `carbs` FLOAT NOT NULL ,  
    `color` VARCHAR(30) NOT NULL ,  
    `ice` VARCHAR(10) NOT NULL ,  
    `calories` INT NOT NULL ,    
    PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

INSERT INTO `drink_info` 
    (`id`, `drink_name`, `cost`, `carbs`, `color`, `ice`, `calories`) 
    VALUES (NULL, 'Blackthorn', '3', '8.4', 'yellow', 'Y', '33'), 
        (NULL, 'Blue Moon', '2.5', '3.2', 'blue', 'Y', '12'),
        (NULL, 'Oh My Gosh', '3.5', '8.6', 'orange', 'Y', '35'), 
        (NULL, 'Lime Fizz', '2.5', '5.4', 'green', 'Y', '24'),
        (NULL, 'Kiss on the Lips', '5.5', '42.5', 'purple', 'Y', '171'), 
        (NULL, 'Hot Gold', '3.2', '32.1', 'orange', 'N', '135'),
        (NULL, 'Lone  Tree', '3.6', '4.2', 'red', 'Y', '17'), 
        (NULL, 'Greyhound', '4', '14', 'yellow', 'Y', '50'),
        (NULL, 'Indian Summer', '2.8', '7.2', 'brown', 'N', '30'), 
        (NULL, 'Bull Frog', '2.6', '21.5', 'tan', 'Y', '80'),
        (NULL, 'Soda and It', '3.8', '4.7', 'red', 'N', '19');
        

