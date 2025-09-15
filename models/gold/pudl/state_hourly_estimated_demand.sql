with state_fips_map as (
    select * from {{ ref('silver_state_fips_map') }}
),

state_hourly_estimated_demand as (
    select * from {{ ref('silver_stable_hourly_estimated_state_demand') }}
),

final as (
    select
        state_name,
        datetime_utc,
        demand_mwh,
        scaled_demand_mwh
    from state_fips_map sfm
    inner join state_hourly_estimated_demand shed
    on sfm.state_id_fips = shed.state_id_fips
)

select * from final