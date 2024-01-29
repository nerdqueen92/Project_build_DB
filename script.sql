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
