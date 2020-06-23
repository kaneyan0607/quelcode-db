BEGIN;
UPDATE chat_rooms
SET chat_rooms.is_suppression = 0, chat_rooms.updated_user_id = 1, chat_rooms.updated_at = NOW()
WHERE chat_rooms.chat_room_id NOT IN (
    SELECT chat_room_entries.chat_room_id
    FROM chat_room_entries
    WHERE chat_room_entries.user_id = 1 )
AND is_deleted = 0;
COMMIT;
