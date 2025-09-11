select
    state_id_fips,
    to_timestamp(datetime_utc) as datetime_utc,
    to_number(demand_mwh, 38, 9) as demand_mwh,
    to_number(scaled_demand_mwh, 38, 9) as scaled_demand_mwh,
    filename,
    to_number(row_number, 38, 0) as row_number,
    to_timestamp(last_modified) as last_modified,
    content_key,
    to_timestamp(ingest_date) as ingest_date
from {{ source('pudl', 'stable_out_ferc714__hourly_estimated_state_demand') }}