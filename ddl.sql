-- drop table st_intrusion_attempts;
create table st_intrusion_attempts (
    ts varchar(100),
    server varchar(100),
    process varchar(100),
    usr varchar(100),
    src_ip varchar(100),
    port varchar(100)
)
;

-- drop table st_iplocation;
create table st_iplocation (
ip varchar(100),
type varchar(100),
continent_code varchar(100),
continent_name varchar(100),
country_code varchar(100),
country_name varchar(100),
region_code varchar(100),
region_name varchar(100),
city varchar(100),
zip varchar(100),
latitude varchar(100),
longitude varchar(100),
location varchar(100),  /**/
capital varchar(100),  /**/
languages varchar(100),  /**/
name varchar(100),  /**/
native varchar(100),  /**/
country_flag varchar(100),  /**/
country_flag_emoji varchar(100),  /**/
country_flag_emoji_unicode varchar(100),  /**/
calling_code varchar(100),  /**/
is_eu varchar(100)  /**/
);