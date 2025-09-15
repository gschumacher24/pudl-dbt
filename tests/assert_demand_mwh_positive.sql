select 
    demand_mwh
from {{ source('pudl', 'stable_out_ferc714__hourly_estimated_state_demand') }}
where demand_mwh < 0