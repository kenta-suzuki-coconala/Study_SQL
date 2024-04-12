-- ＜抽出項目＞
-- ・サービスID、サービスタイトル、価格（税抜）、出品者のユーザーID
-- ＜抽出条件＞
-- ・南さんが出品したサービス
-- ＜ヒント＞
-- ・南さんのユーザーIDは16
-- ・サービスの情報は「services」というテーブルに格納されている

SELECT
  id,
  name,
  price_wot,
  provider_id
FROM
  coconala.services
WHERE
  provider_id = 16;
