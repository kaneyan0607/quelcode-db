BEGIN;
UPDATE users
SET users.is_deleted = 1, users.updated_at = NOW()
WHERE cell_phone_number IS NULL
AND work_phone_number IS NULL;
COMMIT;
