CREATE TABLE parts (
    id integer,
    description character varying,
    code character varying,
    manufacturer_id  integer
);

CREATE TABLE locations (
    id integer,
    part_id integer,
    location varchar(3),
    qty integer
);

create table manufacturers (
    id integer PRIMARY KEY,
    name varchar
);

create table reorder_options (
  id integer PRIMARY KEY,
  part_id integer,
  price_usd numeric(8,2),
  quantity integer
);

COPY parts FROM 'D:\PostgreSQL_data\Project_build_DB\parts.csv' DELIMITER ',' NULL AS 'NULL' CSV HEADER;
COPY locations FROM 'D:\PostgreSQL_data\Project_build_DB\locations.csv' DELIMITER ',' NULL AS 'NULL' CSV HEADER;
COPY manufacturers FROM 'D:\PostgreSQL_data\Project_build_DB\manufacturers.csv' DELIMITER ',' NULL AS 'NULL' CSV HEADER;
COPY reorder_options FROM 'D:\PostgreSQL_data\Project_build_DB\reorder_options.csv' DELIMITER ',' NULL AS 'NULL' CSV HEADER;



