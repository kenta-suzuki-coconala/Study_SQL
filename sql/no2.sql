-- ＜抽出項目＞
-- ・サービスID、サービスタイトル、1分あたりの単価（税抜き）、出品者のユーザーID
-- ＜抽出条件＞
-- ・現時点で公開中のもの
-- ・1分あたりの単価が200円以上の電話サービス
-- ＜ヒント＞
-- ・電話かテキストかは「service_class」という項目で識別できます
-- ・公開中か下書きかアーカイブかは「opened」という項目で識別できます
-- ・各項目の意味は下記を参照してみてください（19行目から31行目）
-- https://docs.google.com/spreadsheets/d/1LCPKxr8HWH7PecF7WNfipSKCMRwh7aXVRx98m2-7cw0/edit#gid=1202569078

SELECT
  id,
  name,
  price_wot,
  provider_id
FROM
  coconala.services
WHERE
  service_class = 2
  AND opened = 1
  AND price_wot >= 200;
