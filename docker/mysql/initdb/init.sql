CREATE DATABASE cenylcz;
CREATE DATABASE analytics;
DROP TABLE IF EXISTS `cenylcz`.`words`;
create table `cenylcz`.`words` (
    `word` VARCHAR(32) NOT NULL,
    `definition` VARCHAR(1024),
    `example` TEXT,
    `alphabet` ENUM('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z') NOT NULL,
    `category` ENUM('WORD', 'PHRASE') NOT NULL,
    `frequency` INTEGER NOT NULL DEFAULT 1,
    `updatedTime` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `createdTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`word`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

create table `analytics`.`words_data` (
    `word` VARCHAR(32) NOT NULL,
    `frequency` INTEGER NOT NULL DEFAULT 1,
    `createdTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`word`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;