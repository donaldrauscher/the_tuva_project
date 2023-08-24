{{ config(
     enabled = var('quality_measures_reporting_enabled',var('tuva_marts_enabled',True))
   )
}}
select
      patient_id
    , sex as gender
    , birth_date
    , death_date
    , '{{ var('tuva_last_run')}}' as tuva_last_run
from {{ ref('core__patient') }}