-- 最も多くサービスを出品している人のユーザーIDと出品数

SELECT
  provider_id,
  COUNT(DISTINCT service_id) AS service_count
FROM
  data_warehouse.segmented_payment_kpi_daily_latest
-- WHERE
--   detail_type IN (1, 4, 5, 7, 99)
--   AND kind IN ('paid', 'cancelled')
GROUP BY
  provider_id
ORDER BY
  service_count DESC
LIMIT
  1;

-- 値確認

-- SELECT
--   provider_id,
--   COUNT(DISTINCT id) AS service_count
-- FROM
--   coconala.services
-- GROUP BY
--   provider_id
-- ORDER BY
--   service_count DESC
-- LIMIT
--   1;
