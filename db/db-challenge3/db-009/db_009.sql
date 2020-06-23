SELECT chat_rooms.chat_room_name, COUNT(posts.chat_room_id) AS '投稿数'
FROM posts
JOIN chat_rooms
ON chat_rooms.chat_room_id = posts.chat_room_id
JOIN users
ON posts.created_user_id = users.user_id
WHERE posts.is_deleted = 0
AND users.is_deleted = 0
GROUP BY posts.chat_room_id
ORDER BY COUNT(posts.chat_room_id) DESC;
