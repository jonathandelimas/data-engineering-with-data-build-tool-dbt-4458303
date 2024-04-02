-- test/violation_codes_revenue.sql
-- Every violation code should have a total fee amount
-- greater than or equal to $1.
{{ config(severity = 'warn') }}

SELECT
  VIOLATION_CODE,
  SUM(FEE_USD)   AS TOTAL_REVENUE_USD
FROM
  {{ref('silver_parking_violation_codes')}}
GROUP BY
  VIOLATION_CODE
HAVING
  NOT(TOTAL_REVENUE_USD >= 1)