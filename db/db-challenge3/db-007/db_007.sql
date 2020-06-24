SELECT chat_room_id, chat_room_name , overview, is_direct_chat, is_deleted, created_user_id, updated_user_id, created_at, updated_at,
CASE WHEN is_suppression = 1 THEN '禁止'
ELSE '許可'
END AS 'is_suppression'
FROM chat_rooms
WHERE is_deleted = 0
AND overview LIKE '%ダイレクトチャット'
ORDER BY chat_room_id ASC;
