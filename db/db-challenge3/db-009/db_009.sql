SELECT chat_rooms.chat_room_name, COUNT(posts.chat_room_id) AS '投稿数'
FROM chat_rooms
JOIN posts
ON chat_rooms.chat_room_id = posts.chat_room_id
WHERE posts.is_deleted = 0
AND posts.created_user_id IN (
    SELECT users.user_id
    FROM users
    WHERE users.is_deleted = 0)
GROUP BY posts.chat_room_id
ORDER BY COUNT(posts.chat_room_id) DESC;
