{{ config(materialized='table') }}

with test as (
    select * from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF100TCL"."CUSTOMER" limit 100
    )
select C_BIRTH_YEAR,COUNT(C_CUSTOMER_ID) from test group by C_BIRTH_YEAR