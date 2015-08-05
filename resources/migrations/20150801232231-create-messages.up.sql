CREATE TABLE IF NOT EXISTS `messages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `message` TEXT(3000) NOT NULL COMMENT '',
  `to_user_id` INT(11) NOT NULL COMMENT '',
  `from_user_id` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
CONSTRAINT `fk_to_user_id`
                FOREIGN KEY (to_user_id) REFERENCES users (id)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION,
CONSTRAINT `fk_from_user_id`
                FOREIGN KEY (from_user_id) REFERENCES users (id)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION)
ENGINE = InnoDB;