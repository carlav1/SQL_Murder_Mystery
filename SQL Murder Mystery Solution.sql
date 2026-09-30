SQL Murder Mystery Solution
// Instructions: You vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​.

----// info on the case

select *
from crime_scene_report
where type = 'murder' and city = 'SQL City';

----// info on the two witnesses 

//Annabel- 16371
select *
from person
where address_street_name = 'Franklin Ave';

//Morty Shapiro- 14887
select *
from person
where address_street_name = 'Northwestern Dr' 
order by address_number DESC;

----// interview info 
select *
from interview
where person_id = 16371;

select *
from interview
where person_id = 14887;

-----// gym info 
select *
from get_fit_now_check_in as a
inner join get_fit_now_member as b
on a.membership_id = b.id 
where check_in_date = 20180109 and membership_status = 'gold' ;

-----// checking interviews again 
select *
from interview
where person_id = 28819;

select *
from interview
where person_id = 67318;

-----// finding the identiy of the real culprit
select *
from drivers_license
where car_make = 'Tesla' and car_model= 'Model S' and hair_color= 'red';

//Direct killer was Jeremy Bowers.

-----// orchestra info 
select *
from facebook_event_checkin
where event_name like '% symphony %'
and date between 20171201 and 20171231
order by person_id;

-----// after orchestra info, person search 
select *
from person
where id = 24556 or id = 99716 ;

//Who hired the killer? Miranda Priestly.
