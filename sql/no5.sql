-- ＜抽出項目＞
-- ・ユーザー数
-- ＜抽出条件＞
-- ・2018年12月31日までに会員登録したユーザー
-- ・退会していない
-- ・性別は男性

SELECT
  COUNT(DISTINCT id) AS user_counts
FROM
  coconala.users
WHERE
  created < '2018-12-31'
  AND sex = 'M'
  AND deleted = TRUE;
