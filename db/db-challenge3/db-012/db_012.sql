BEGIN;
UPDATE chat_rooms
SET is_suppression = 0, updated_user_id = 1, updated_at = NOW()
WHERE chat_rooms.chat_room_id NOT IN (
    SELECT DISTINCT chat_room_entries.chat_room_id
    FROM chat_room_entries
    WHERE chat_room_entries.user_id = 1 )
AND is_deleted = 0;
COMMIT;
