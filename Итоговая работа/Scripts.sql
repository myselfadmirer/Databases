-- 1. Для военной авиации

select ac.id, ac.aircraft_name,
  st.speed_type,
  c.max_speed,
  c.distance,
  et.engine_type,
  s.engine_name,
  comp.company_name,
  comp.country 
from aviapro_catalog ac
  join specifications s
    on ac.id = s.catalog_id
  join aircraft_companies comp
    on comp.id = ac.company_id 
  join `characteristics` c
    on c.catalog_id = ac.id 
  left join speed_types st 
    on st.id = s.speed_type_id
  join engine_types et
    on et.id = s.engine_type_id
  join aircraft_types act
    on act.id = s.aircraft_type_id
  join purpose_types pt 
    on pt.id = act.purpose_type_id
      where pt.id = 3
  order by ac.id;

-- 2. Для коммерческой авиации

select ac.id, ac.aircraft_name,
  st.speed_type,
  c.max_speed,
  dt.distance_type_name,
  c.distance,
  comp.company_name,
  comp.country 
from specifications s
  join aviapro_catalog ac 
    on ac.id = s.catalog_id
  join aircraft_companies comp
    on comp.id = ac.company_id 
  join `characteristics` c
    on c.catalog_id = ac.id 
  left join speed_types st
    on st.id = s.speed_type_id 
  left join distance_types dt 
    on dt.id = s.distance_type_id
  join aircraft_types act
    on act.id = s.aircraft_type_id
  join purpose_types pt 
    on pt.id = act.purpose_type_id
      where pt.id = 1
  order by ac.id;

-- 3. С диапазоном масс и дистанций
  
select ac.aircraft_name,
  st.speed_type,
  dt.distance_type_name,
  c.distance,
  c.mass,
  comp.company_name,
  comp.country 
from aviapro_catalog ac
  join specifications s
    on ac.id = s.catalog_id
  join aircraft_companies comp
    on comp.id = ac.company_id
  join `characteristics` c
    on ac.id =c.catalog_id 
  join speed_types st
    on st.id = s.speed_type_id 
  join distance_types dt 
    on dt.id = s.distance_type_id
  join aircraft_types act
    on act.id = s.aircraft_type_id
  join purpose_types pt 
    on pt.id = act.purpose_type_id
      where (c.mass between 70000 and 100000) and (c.distance between 100 and 3500);

-- 4. Максимальная скорость и дальность, сгруппированные по типам самолетов с использованием оконных функций

select distinct atype.name,
  first_value(ac.aircraft_name) over(partition by atype.id order by c.max_speed desc) as max_speed_aircraft,
  max(c.max_speed) over w as max_speed,
  first_value(ac.aircraft_name) over(partition by atype.id order by c.distance desc) as max_distance_aircraft,
  max(c.distance) over w as max_distance
from aviapro_catalog ac
  join specifications s
    on ac.id = s.catalog_id
  join `characteristics` c
    on ac.id = c.catalog_id
  left join aircraft_types atype
    on s.aircraft_type_id = atype.id
      window w as (partition by atype.id);

--   Проверочный запрос
-- select ac.aircraft_name, at2.name, c.max_speed, c.distance
-- from aviapro_catalog ac
-- left join specifications s
-- on s.catalog_id = ac.id
-- left join aircraft_types at2
-- on at2.id = s.aircraft_type_id
-- left join `characteristics` c
-- on c.catalog_id = ac.id 
-- order by c.distance desc;

-- Представления

-- Количество самолетов, выпущенных каждой компанией

create or replace view count_by_companies as
  select comp.company_name,
  count(distinct ac.id) as total
  from aviapro_catalog ac
    right join aircraft_companies comp
      on ac.company_id = comp.id
  group by comp.id
  order by total;

  select * from count_by_companies;
-- select sum(total) from count_by_companies; /* Проверка, на выходе 100 id */

-- Сводная таблица по двигателям

create or replace view engines as
  select ac.aircraft_name, 
  s.engine_name, 
  et.engine_type
  from aviapro_catalog ac
    join specifications s
      on ac.id = s.catalog_id 
    left join engine_types et
      on s.engine_type_id = et.id;

select * from engines;
  