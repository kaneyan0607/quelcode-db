SELECT users.name, chat_rooms.chat_room_name, CAST(chat_room_entries.participated_at AS DATE)
FROM chat_room_entries
JOIN users
ON users.user_id = chat_room_entries.user_id
JOIN chat_rooms
ON chat_rooms.chat_room_id = chat_room_entries.chat_room_id
WHERE users.is_deleted = 0
AND chat_rooms.is_deleted = 0
ORDER BY chat_room_entries.participated_at;
