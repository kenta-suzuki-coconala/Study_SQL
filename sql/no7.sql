-- ＜抽出項目＞
-- ・ユーザーID（=provier_id）
-- ・ユーザーIDごとの出品サービス数
-- ＜抽出条件＞
-- ・2018年12月31日までに出品されたサービス（12/31は含む）
-- ・現在公開中のサービス
-- ・電話サービス
-- ＜集計単位＞
-- ・ユーザーID（=provider_id）ごと

SELECT
  provider_id,
  COUNT(DISTINCT id) AS services_count_per_user
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
