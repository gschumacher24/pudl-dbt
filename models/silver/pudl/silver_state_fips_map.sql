select
    state_id_fips,
    state_abbrev,
    state_name
from {{ source('pudl', 'state_fips_map') }}