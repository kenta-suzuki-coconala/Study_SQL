-- ＜やること＞
-- 管理画面からのキャンセル除外（スコア計算から外す）をもときさんが1/8にリリースしてくれましたが、
-- それ以降、除外する件数の推移はどうなっているでしょう？
-- 簡単に登録できるようになったら、水準が下がって件数増えているか？
-- 特にペースは変わらないか？

-- ＜SQLでのデータ抽出＞
-- "日ごと"のトークルーム登録数合計

-- ＜ヒント＞
-- ・キャンセル除外は「illegal_cancel_talkrooms」というテーブルでデータ管理
-- ・correspond_typeは0がCS対応（問い合わせを起点にキャンセル除外登録）1はマーケ対応（出品者ランクの観点から除外登録）

SELECT
  DATE(created) AS created,
  COUNT(DISTINCT talkroom_id) AS cancel_talkroom_count
FROM
  coconala.illegal_cancel_talkrooms
WHERE
  correspond_type = 0
GROUP BY
  created
ORDER BY
  created;
