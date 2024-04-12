-- ＜抽出項目＞
-- ・サービスID
-- ・サービスタイトル
-- ・1分あたりの単価（税抜き）
-- ・出品者のユーザーID
-- ・サービス公開日時
-- ＜抽出条件＞
-- ・現時点で公開中のもの
-- ・1分あたりの単価が200円以上の電話サービス
-- ・2018/1/1〜2018/1/30に公開されたサービス もしくは2018/8/1〜2018/8/30に公開されたサービス
-- ＜表示順＞
-- ・サービス公開日時を新しい順に並べる（新しい方が上、古いほうが下になるように）
-- ＜ヒント＞
-- ・ググる

SELECT
  id,
  name,
  price_wot,
  provider_id,
  opened_date
FROM
  coconala.services
WHERE
  opened = 1
  AND price_wot >= 200
  AND service_class = 1
  AND (
    opened_date BETWEEN '2018-01-01' AND '2018-01-30'
    OR opened_date BETWEEN '2018-08-01' AND '2018-08-30'
  )
ORDER BY
  opened_date DESC;
