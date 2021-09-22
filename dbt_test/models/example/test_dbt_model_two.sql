{{ config(materialized='table') }}

with try as (
    select * from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF100TCL"."WEB_SALES" limit 10000
    )
select WS_SOLD_DATE_SK, sum(WS_NET_PROFIT) from try group by WS_SOLD_DATE_SK