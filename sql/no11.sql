-- "性別"ごとの現時点で退会してない会員数 男xxx人 女 xxx人
SELECT
  sex,
  COUNT(DISTINCT id) AS active_user_count
FROM
  coconala.users
WHERE
  deleted = FALSE
GROUP BY
  sex;
