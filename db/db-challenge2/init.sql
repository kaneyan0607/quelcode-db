CREATE TABLE `users` (
      `user_id` int(11) NOT NULL AUTO_INCREMENT,
      `name` varchar(100) NOT NULL,
      `self_introduction` varchar(1000),
      `cell_phone_number` varchar(13),
      `work_phone_number` varchar(13),
      `email` varchar(100) NOT NULL,
      `password` varchar(100) NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,
      PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chat_rooms` (
      `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,
      `overview` varchar(1000),
      `is_suppression` tinyint(1) DEFAULT 0 NOT NULL,
      `is_direct_chat` tinyint(1) DEFAULT 0 NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_user_id` int(11) NOT NULL,
      `updated_user_id` int(11) NOT NULL,
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,
      PRIMARY KEY (`chat_room_id`),
      FOREIGN KEY (`created_user_id`) REFERENCES users(`user_id`),
      FOREIGN KEY (`updated_user_id`) REFERENCES users(`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chat_room_entries` (
      `user_id` int(11) NOT NULL,
      `chat_room_id` int(11) NOT NULL,
      `participated_at` datetime NOT NULL,
      PRIMARY KEY (`user_id`,`chat_room_id`),
      FOREIGN KEY (`user_id`) REFERENCES users(`user_id`),
      FOREIGN KEY (`chat_room_id`) REFERENCES chat_rooms(`chat_room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `posts` (
      `posts_id` int(11) NOT NULL AUTO_INCREMENT,
      `message` varchar(1000),
      `attachment_name` varchar(100),
      `chat_room_id` int(11) NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_user_id` int(11) NOT NULL,
      `updated_user_id` int(11) NOT NULL,
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,
      PRIMARY KEY (`posts_id`),
      FOREIGN KEY (`chat_room_id`) REFERENCES chat_rooms(`chat_room_id`),
      FOREIGN KEY (`created_user_id`) REFERENCES users(`user_id`),
      FOREIGN KEY (`updated_user_id`) REFERENCES users(`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `tasks` (
      `task_id` int(11) NOT NULL AUTO_INCREMENT,
      `task_message` varchar(1000) NOT NULL,
      `responsible_id` int(11) NOT NULL,
      `deadline` datetime,
      `is_completed` tinyint(1) DEFAULT 0 NOT NULL,
      `chat_room_id` int(11) NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_user_id` int(11) NOT NULL,
      `updated_user_id` int(11) NOT NULL,
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,
      PRIMARY KEY (`task_id`),
      FOREIGN KEY (`chat_room_id`) REFERENCES chat_rooms(`chat_room_id`),
      FOREIGN KEY (`created_user_id`) REFERENCES users(`user_id`),
      FOREIGN KEY (`updated_user_id`) REFERENCES users(`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
