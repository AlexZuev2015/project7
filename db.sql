mysql -u root -p
CREATE DATABASE homework;
use hometask;
status;
CREATE TABLE homework (
	mk int,
	manufacturer varchar(255),
	grade  varchar(255),
	model  varchar(255),
	submodel  varchar(255),
	country  varchar(255)
);
describe hometask;
insert into homework (mk, manufacturer, grade, model)
values (1, 'Intel', '8086', 'sab8086');
insert into homework (mk, manufacturer, grade, model)
values (2, 'AMD', '2903', 'am2903adc');
insert into homework (mk, manufacturer, grade, model)
values(3, 'Cyrix', 'gx', 'gxm-200gp');
select * from homework;
DROP TABLE homework;
SHOW DATABASES;
DROP DATABASE homework;
SHOW DATABASES;
CREATE DATABASE example;
use example;
CREATE TABLE homework (
	mk int,
	manufacturer varchar(255),
	grade  varchar(255),
	model  varchar(255),
	submodel varchar(255),
	country  varchar(255)
);
ALTER TABLE homework
ADD comments varchar(255);
describe homework;
ALTER TABLE homework
DROP COLUMN country;
describe homework;
ALTER TABLE homework
MODIFY COLUMN model int;
describe homework;
ALTER TABLE homework (
	model varchar(255) NOT NULL,
	mk int UNIQUE,
);
insert into homework (mk, manufacturer, grade, model, submodel, country)
values (1, 'Intel', '8086', sab8086);
SELECT model FROM homework;
SELECT * FROM homework
WHERE model=8086 OR grade='8086';
SELECT * FROM homework
WHERE model=8086 AND grade='8086';
SELECT * FROM homework
WHERE NOT model=8086;
SELECT submodel, comments FROM homework
WHERE submodel IS NULL;