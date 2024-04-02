SELECT
  SUMMONS_NUMBER,
  REGISTRATION_STATE,
  PLATE_TYPE,
  ISSUE_DATE,
  VIOLATION_CODE,
  VEHICLE_BODY_TYPE,
  VEHICLE_MAKE,
  ISSUING_AGENCY,
  VEHICLE_EXPIRATION_DATE,
  VIOLATION_LOCATION,
  VIOLATION_PRECINCT,
  ISSUER_PRECINCT,
  ISSUER_CODE,
  ISSUER_COMMAND,
  ISSUER_SQUAD,
  VIOLATION_TIME,
  VIOLATION_COUNTY,
  VIOLATION_LEGAL_CODE,
  VEHICLE_COLOR,
  VEHICLE_YEAR,
  CASE
    WHEN VIOLATION_COUNTY == 'MN' THEN
      TRUE
    ELSE
      FALSE
  END AS IS_MANHATTAN_96TH_ST_BELOW
FROM
  {{ref('bronze_parking_violations')}}