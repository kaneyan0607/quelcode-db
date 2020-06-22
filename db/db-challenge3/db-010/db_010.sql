SELECT users.name, posts.created_at, chat_rooms.chat_room_name
FROM posts
JOIN users
ON posts.created_user_id = users.user_id
JOIN chat_rooms
ON posts.chat_room_id = chat_rooms.chat_room_id
WHERE users.is_deleted = 0
AND posts.created_at IN(
    SELECT MAX(posts.created_at)
    FROM posts
    WHERE posts.is_deleted = 0
    GROUP BY posts.chat_room_id
    )
ORDER BY chat_rooms.chat_room_id ASC;
