select
    state_id_fips,
    to_timestamp(datetime_utc) as datetime_utc,
    to_number(demand_mwh, 38, 9) as demand_mwh,
    to_number(scaled_demand_mwh, 38, 9) as scaled_demand_mwh,
from {{ source('pudl', 'stable_out_ferc714__hourly_estimated_state_demand') }}