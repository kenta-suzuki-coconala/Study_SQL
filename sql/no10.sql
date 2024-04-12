-- 現時点で退会してない会員数 xxx人
SELECT
  COUNT(DISTINCT id) AS active_user_count
FROM
  coconala.users
WHERE
  deleted = FALSE;
