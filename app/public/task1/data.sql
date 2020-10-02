INSERT INTO `users` (`id`, `email`) VALUES (NULL, 'test@test.com'), (NULL, 'test2@test.com');

INSERT INTO `news` (`id`, `category_id`, `title`, `content`) VALUES
(3, 1, 'News 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(4, 2, 'News 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(5, 1, 'News 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad asperiores aut cupiditate deserunt dicta distinctio, doloremque eligendi eum exercitationem explicabo fuga, illum laudantium magnam mollitia nemo nostrum odit, perspiciatis provident'),
(6, 1, 'News 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(7, 2, 'News 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(8, 1, 'News 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad asperiores aut cupiditate deserunt dicta distinctio, doloremque eligendi eum exercitationem explicabo fuga, illum laudantium magnam mollitia nemo nostrum odit, perspiciatis provident'),
(9, 1, 'News 7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(10, 2, 'News 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(11, 1, 'News 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad asperiores aut cupiditate deserunt dicta distinctio, doloremque eligendi eum exercitationem explicabo fuga, illum laudantium magnam mollitia nemo nostrum odit, perspiciatis provident'),
(12, 1, 'News 10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(13, 2, 'News 11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, eaque iste magnam molestiae quaerat quas sapiente. Alias aut, corporis dolores, eaque et expedita libero odit perferendis quam reiciendis vel vitae voluptatem.'),
(14, 1, 'News 12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad asperiores aut cupiditate deserunt dicta distinctio, doloremque eligendi eum exercitationem explicabo fuga, illum laudantium magnam mollitia nemo nostrum odit, perspiciatis provident');

INSERT INTO `news_categories` (`id`, `title`) VALUES (NULL, 'Caterogy 1'), (NULL, 'Caterogy 2');

INSERT INTO `news_likes` (`news_id`, `user_id`, `created_at`) VALUES ('5', '1', '2020-10-02 00:00:00'), ('6', '1', '2020-10-02 00:01:00');