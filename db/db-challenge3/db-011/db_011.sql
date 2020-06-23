BEGIN;
UPDATE tasks
SET is_completed = 1, updated_user_id = 1, updated_at = NOW()
WHERE tasks.created_at BETWEEN '2020/4/26 09:00' AND '2020/4/26 11:30'
AND tasks.is_deleted = 0
COMMIT;
