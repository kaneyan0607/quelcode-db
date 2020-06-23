BEGIN;
DELETE
FROM chat_room_entries
WHERE chat_room_entries.user_id IN (
    SELECT users.user_id
    FROM users
    WHERE users.is_deleted = 1);
COMMIT;
