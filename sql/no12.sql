-- 公開中の出品サービス数 xxx人
SELECT
  COUNT(DISTINCT id) AS opened_service_count
FROM
  coconala.services
WHERE
  opened = 1;

-- 値一致
-- SELECT
--   COUNT(DISTINCT service_id) AS opened_service_count
-- FROM
--   data_warehouse.segmented_payment_kpi_daily_latest
-- WHERE
--   opened = 1;
