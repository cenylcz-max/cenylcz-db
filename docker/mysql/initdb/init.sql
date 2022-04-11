CREATE DATABASE cenylcz;
CREATE DATABASE analytics;
DROP TABLE IF EXISTS `cenylcz`.`words`;
create table `cenylcz`.`words` (
    `word` VARCHAR(32) NOT NULL,
    `definition` VARCHAR(1024),
    `example` TEXT,
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