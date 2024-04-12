-- ＜抽出項目＞
-- ・サービスID、サービスタイトル、1分あたりの単価（税抜き）、出品者のユーザーID
-- ＜抽出条件＞
-- ・現時点で公開中のもの
-- ・1分あたりの単価が200円以上の電話サービス
-- ・2018/1/1〜2018/1/30に公開されたサービス ← 昨日の宿題にこの条件追加
-- ＜ヒント＞
-- ・サービスの公開日は「opened_date」という項目に入る

SELECT
  id,
  name,
  price_wot,
  provider_id
FROM
  coconala.services
WHERE
  opened = 1
  AND price_wot >= 200
  AND opened_date BETWEEN '2018-01-01' AND '2018-01-30';
