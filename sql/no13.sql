-- サービス出品者数(販売UU)

SELECT
  COUNT(DISTINCT provider_id)
FROM
  data_warehouse.segmented_payment_kpi_daily_latest
WHERE
  detail_type IN (1, 4, 5, 7, 99)
  AND kind = 'paid';
