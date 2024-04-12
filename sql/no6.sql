-- ＜抽出項目＞
-- ・ユーザー数
-- ＜抽出条件＞
-- ・購入禁止 or DM禁止
-- ＜ヒント＞
-- ・購入制限、DM制限は「users_black_lists」テーブルで管理

WITH black_users AS (
  SELECT
    user_id
  FROM
    coconala.users_black_lists
  WHERE
    not_order_fg = 1
    OR not_dm_fg = 1
)

SELECT
  COUNT(DISTINCT users.id) AS user_count
FROM
  coconala.users AS users
INNER JOIN
  black_users
  ON
    users.id = black_users.user_id;
