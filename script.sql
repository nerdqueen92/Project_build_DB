-- Task 1
select * from parts;

-- Task 2
alter table parts
add unique (code),
alter column code set not null;

-- Task 3
update parts 
set description = 'None Available'
where description is null or description = ' ';

-- Task 4
alter table parts
alter column description set not null;

-- Task 5
insert into parts values (null);
insert into parts (id, code, manufacturer_id) values (
	54,
	'V1-009',
	9
);
insert into parts (description,code) values ('None Available','None Available');
DELETE FROM parts
WHERE id IS NULL; 

-- Task 6
alter table reorder_options
alter column price_usd set not null,
alter column quantity set not null;

-- Task 7
alter table reorder_options
add check (price_usd > 0 and quantity > 0);

-- Task 8
alter table reorder_options
add check (price_usd/quantity between 0.02 and 25);

-- Task 9
alter table parts
add primary key (id);

alter table reorder_options
add foreign key (part_id) references parts(id);

-- Task 10
alter table locations
add check (qty > 0);

-- Task 11
alter table locations
add primary key (part_id, location);

-- Task 12
delete from locations
where part_id = 54;

alter table locations
add foreign key (part_id) references parts(id);

-- Task 13
alter table parts
add foreign key (manufacturer_id) references manufacturers(id);

-- Task 14
insert into manufacturers values(11,'Pip-NNC Industrial');

-- Task 15
update parts
set manufacturer_id = 11
where manufacturer_id in (1,2);

SELECT constraint_name, table_name, column_name
from information_schema.key_column_usage
where table_name = 'manufacturers';