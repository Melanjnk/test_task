# Structure:

# Tables:
# 1. users
# 2. news
# 3. news_categories
# 4. news_likes

# Triggers:
# 1. increment news.likes
# 2. decrement news.likes

CREATE TABLE `test`.`users` (
 `id` INT NOT NULL AUTO_INCREMENT ,
 `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
 CONSTRAINT `users_pk` PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`news` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `category_id` int(11) NOT NULL,
  `likes` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `title` VARCHAR(50) NOT NULL ,
  `content` VARCHAR(243) NOT NULL ,
  CONSTRAINT `news_pk` PRIMARY KEY (`id`),
  CONSTRAINT `news_fk_category_id` FOREIGN KEY (`category_id`)
    REFERENCES `news_categories` (`id`) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`news_categories` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
  CONSTRAINT `news_categories_pk` PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`news_likes` (
`news_id` INT NOT NULL , `user_id` INT NOT NULL ,
`created_at` DATETIME on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
INDEX `news_user_index` (`news_id`, `user_id`) USING BTREE
) ENGINE = InnoDB;

# Добавим 2 триггера для подсчёта лайков:

# инкрементим лайки для новости
CREATE TRIGGER `t_ai_news_likes` AFTER INSERT ON `news_likes` FOR EACH ROW
  UPDATE `news` SET `likes` = `likes` + 1 WHERE `id` = NEW.`news_id`;

# декрементим лайки для новости
CREATE TRIGGER `t_ad_news_likes` AFTER DELETE ON `news_likes` FOR EACH ROW
  UPDATE `news` SET `likes` = `likes` - 1 WHERE `id` = OLD.`news_id`;