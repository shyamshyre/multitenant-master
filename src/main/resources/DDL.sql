CREATE TABLE if not exists test.DATASOURCECONFIG (
	id bigint PRIMARY KEY,
	driverclassname VARCHAR(255),
	url VARCHAR(255),
	name VARCHAR(255),
	username VARCHAR(255),
	password VARCHAR(255),
	initialize BOOLEAN
);
##### Schema Creation ############

create schema if not exists test1;
create schema if not exists test2;

create table test1.city(id INT AUTO_INCREMENT PRIMARY KEY, name varchar(200));
create table test2.city(id INT AUTO_INCREMENT PRIMARY KEY, name varchar(200));
INSERT INTO DATASOURCECONFIG VALUES (1, 'org.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/test?currentSchema=test1&ApplicationName=MultiTenant', 'test1', 'root', 'mysql123', true);
INSERT INTO DATASOURCECONFIG VALUES (2, 'org.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/test?currentSchema=test2&ApplicationName=MultiTenant', 'test2', 'root', 'mysql123', true);
