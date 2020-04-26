-- Microstrategy sql
with raw as
(select
       to_timestamp('2020' || ia.ts, 'YYYY Mon DD HH24:MI:SS') ts,
       ia.server,ia.process,ia.usr,ia.src_ip,ia.port,ipl.ip,ipl.type,ipl.continent_code,ipl.continent_name,ipl.country_code,ipl.country_name,ipl.region_code,ipl.region_name,ipl.city,ipl.zip,ipl.latitude,ipl.longitude
from st_intrusion_attempts ia,
     st_iplocation ipl
where ia.src_ip = ipl.ip
)
select
    date(ts) dt,
    date_part('day', date(ts)) - date_part('day', date('2020-01-01'))  day_diff_start_year, -- fixed just for this case..
    extract(isodow from ts) day_of_week,
    to_char(ts,'Day') day_of_week_name,
    extract(hour from ts) hour_in_day,
    row_number() over (partition by src_ip order by ts asc) attempt_no,
    first_value(ts) over (partition by src_ip order by ts asc) first_attempt_ts,
    r.*
from raw r
;