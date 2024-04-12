-- ＜抽出項目＞
-- ・ユーザーID（=provier_id）
-- ・ユーザーIDごとの出品しているサービスの受付可能数合計
-- ＜抽出条件＞
-- ・2018年12月31日までに出品されたサービス（12/31は含む）
-- ・現在公開中のサービス
-- ・電話サービス
-- ＜集計単位＞
-- ・ユーザーID（=provider_id）ごと

SELECT
  provider_id,
  SUM(order_limit) AS total_order_limit
FROM
  coconala.services
WHERE
  opened_date <= '2018-12-31'
  AND opened = 1
  AND service_class = 1
GROUP BY
  provider_id
ORDER BY
  provider_id;
