BEGIN;
UPDATE users
SET is_deleted = 1, updated_at = NOW()
WHERE cell_phone_number IS NULL
AND work_phone_number IS NULL;
COMMIT;
