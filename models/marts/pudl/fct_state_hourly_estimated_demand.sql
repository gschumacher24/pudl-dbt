with state_fips_map as (
    select * from {{ ref('stg_pudl__state_fips_map') }}
),

state_hourly_estimated_demand as (
    select * from {{ ref('stg_stable_out_ferc714__hourly_estimated_state_demand_bronze') }}
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