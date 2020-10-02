# 1. Пользователь ставит лайк
INSERT INTO `test`.`news_likes` (`news_id`, `user_id`) VALUES (:news_id, :user_id);

# 2. Пользователь снимает лайк
DELETE FROM `test`.`news_likes` WHERE `news_id` = :news_id AND `user_id` = :user_id;

# 3. Пользователи, лайкнувшие новость (пагинация, берём сначал тех, кто лайкнул последним)
SELECT
  u.`id`,  u.`email`,
  nl.`created_at`
FROM
  `news_likes` nl
INNER JOIN `users` u
ON nl.`user_id` = u.`id`
WHERE
  nl.`news_id` = :news_id
ORDER BY
  nl.`created_at` DESC
LIMIT :offset, :limit;

# 4. запрос для вывода ленты новостей; (на примере новостей из одной категории)

# Без триггеров, подсчёт кол-ва лайков требует group by, что обязательно скажется на первомансе на прод базе под млн+ нагрузкой с набором записей млн+
SELECT n.`title`, n.`content`,
    nc.`title`, COUNT(nl.news_id) FROM `news` n
LEFT JOIN `test`.`news_categories` nc
  ON nc.id = n.category_id
LEFT JOIN news_likes nl
  ON n.id = nl.news_id
WHERE n.category_id = :category_id
GROUP BY n.id
LIMIT :offset, :limit;

# С триггерами для посчёта лайков можно упростить запрос до
SELECT n.`title`, n.`content`, n.`likes`,
    nc.`title`
FROM `news` n
LEFT JOIN `test`.`news_categories` nc
  ON nc.id = n.category_id
WHERE n.category_id = :category_id
LIMIT :offset, :limit;

# Если необходим вывод из нескольких категорий
WHERE n.category_id IN (:category_ids)

# 5. запрос на добавление поста в ленту.
INSERT INTO `news` (`id`, `category_id`, `title`, `content`) VALUES
                    (NULL, ":category_id", ":title", ":content")